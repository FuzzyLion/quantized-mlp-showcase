#!/usr/bin/env python3
"""Check FPGA evidence, relocated Tcl input paths and active board RTL compilation.

This does not run Vivado, recreate a Vivado project or exercise physical hardware.
"""

import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import tempfile


ROOT = Path(__file__).resolve().parents[1]
BUNDLE = ROOT / "fpga/2026-10-31"


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(command, cwd):
    return subprocess.run(command, cwd=cwd, text=True, capture_output=True, timeout=120)


def require_success(result):
    if result.returncode:
        raise RuntimeError(result.stdout + result.stderr)


def main():
    manifest = json.loads((BUNDLE / "manifest.json").read_text())
    for name, entry in manifest["files"].items():
        if digest(BUNDLE / name) != entry["packaged_sha256"]:
            raise RuntimeError(f"Snapshot hash mismatch: {name}")
    expected = json.loads((BUNDLE / "verification/validated_sources.json").read_text())
    for name, value in expected.items():
        source = BUNDLE / "sources" / name
        if digest(source) != value:
            raise RuntimeError(f"Validated RTL hash mismatch: {name}")
        directory = "rtl" if name in {"FC1.sv", "FC2.sv", "FMUL.sv", "DEQUANT.sv", "RELU.sv", "top_clk.sv"} else "board/source"
        active = ROOT / directory / name
        if re.sub(r"\s+", "", active.read_text()) != re.sub(r"\s+", "", source.read_text()):
            raise RuntimeError(f"Active RTL differs from the validated snapshot: {name}")
    if (ROOT / "board/uart_and_net.xdc").read_bytes() != (BUNDLE / "constraints/uart_and_net.xdc").read_bytes():
        raise RuntimeError("Active XDC differs from the supplied constraint file")
    print(f"PASS: {len(manifest['files'])} snapshot hashes, 10 validated RTL sources and active constraints")

    if not shutil.which("tclsh") or not shutil.which("iverilog"):
        raise RuntimeError("Both tclsh and iverilog are required for these local checks")
    script = (BUNDLE / "recreate_project.tcl").read_text()
    for forbidden in ("/home/", "/Users/", ".Xilinx/", "project_quant_net.srcs", "board_part_repo_paths"):
        if forbidden in script:
            raise RuntimeError(f"Machine-specific dependency in recreation script: {forbidden}")

    with tempfile.TemporaryDirectory(prefix="hnn-fpga-") as directory:
        temporary = Path(directory)
        moved = temporary / "checkout with spaces" / "fpga" / "2026-10-31"
        shutil.copytree(BUNDLE, moved)
        elsewhere = temporary / "unrelated working directory"
        elsewhere.mkdir()
        parser = temporary / "check_tcl_completeness.tcl"
        parser.write_text(
            "set f [open [lindex $argv 0] r]\n"
            "set code [read $f]\nclose $f\n"
            'if {![info complete $code]} { error "Incomplete Tcl script" }\n'
        )
        require_success(run(["tclsh", str(parser), str(moved / "recreate_project.tcl")], elsewhere))
        command = ["tclsh", str(moved / "recreate_project.tcl")]
        result = run([*command, "--check-only"], elsewhere)
        require_success(result)
        if str(moved / "build/project_quant_net") not in result.stdout:
            raise RuntimeError("Default project output is not relative to the moved script")
        output = temporary / "custom project location"
        result = run([*command, "--project_dir", str(output), "--check-only"], elsewhere)
        require_success(result)
        if str(output) not in result.stdout:
            raise RuntimeError("Explicit project directory was not honored")
        if run([*command, "--project_dir"], elsewhere).returncode == 0:
            raise RuntimeError("A missing option value was accepted")
        if run([*command, "--unknown-option"], elsewhere).returncode == 0:
            raise RuntimeError("An unknown option was accepted")
        (moved / "sources/uart_top.sv").unlink()
        missing = run([*command, "--check-only"], elsewhere)
        if missing.returncode == 0 or "Missing bundled source" not in missing.stderr:
            raise RuntimeError("Missing source was not rejected before project creation")
        if output.exists() or (moved / "build").exists():
            raise RuntimeError("Path-only checks unexpectedly created a project directory")
        print("PASS: relocated Tcl paths, spaces, unrelated CWD, output override and invalid/missing input handling")

        command = ["iverilog", "-g2012", "-s", "uart_top", "-o", str(temporary / "board.vvp")]
        command += [str(path) for path in sorted((ROOT / "rtl").glob("*.sv"))]
        command += [str(path) for path in sorted((ROOT / "board/source").glob("*.sv"))]
        result = run(command, ROOT)
        require_success(result)
        if result.stdout or result.stderr:
            print(result.stdout + result.stderr, end="")
        print("PASS: active uart_top and shared network compile in Icarus Verilog")
    print("LIMIT: these are source/path/compilation checks; no new Vivado build or board test was run")


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, subprocess.TimeoutExpired, OSError, ValueError) as error:
        raise SystemExit(f"FAIL: {error}")
