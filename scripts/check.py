#!/usr/bin/env python3
"""Run the existing lab tests and compile or simulate the packaged RTL."""

import argparse
import ast
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile


ROOT = Path(__file__).resolve().parents[1]


def run(command, cwd, timeout=120):
    result = subprocess.run(
        command, cwd=cwd, text=True, stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT, timeout=timeout,
    )
    print(result.stdout.replace(str(ROOT), "<repo>"), end="", flush=True)
    if result.returncode:
        raise RuntimeError(f"{command[0]} exited with status {result.returncode}")
    return result.stdout


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--simulate", action="store_true", help="run 16 HDL test vectors")
    args = parser.parse_args()

    sources = [*ROOT.glob("generator/**/*.py"), *ROOT.glob("board/*.py"), *ROOT.glob("scripts/*.py")]
    for path in sources:
        ast.parse(path.read_text(), filename=str(path.relative_to(ROOT)))
    notebook = json.loads((ROOT / "generator/verilog_generator.ipynb").read_text())
    if notebook.get("nbformat") != 4:
        raise RuntimeError("Expected a version 4 notebook")
    for cell in notebook["cells"]:
        if cell["cell_type"] == "code":
            ast.parse("".join(cell["source"]))
    print(f"PASS: syntax for {len(sources)} Python files and the generator notebook", flush=True)

    run([sys.executable, "-m", "unittest", "-v", "test_quant_model_statistic"], ROOT / "generator")
    print("PASS: existing parameter-extraction unit tests", flush=True)

    for name in ("iverilog", "vvp") if args.simulate else ("iverilog",):
        if shutil.which(name) is None:
            raise RuntimeError(f"{name} is required; install Icarus Verilog and rerun")

    with tempfile.TemporaryDirectory(prefix="hnn-rtl-") as directory:
        executable = str(Path(directory) / "network.vvp")
        command = ["iverilog", "-g2012", "-s", "testbench_net", "-o", executable]
        if args.simulate:
            command += [
                "-Ptestbench_net.test_size=16",
                '-Ptestbench_net.inputFile="./data/smoke/input.mif"',
                '-Ptestbench_net.outputFile="./data/smoke/target.mif"',
            ]
        command += [str(path) for path in sorted((ROOT / "rtl").glob("*.sv"))]
        command += [str(ROOT / "simulation/testbench_net.sv")]
        run(command, ROOT / "simulation")
        print("PASS: SystemVerilog compilation", flush=True)
        if args.simulate:
            output = run(["vvp", executable], ROOT / "simulation", timeout=180)
            predictions = re.findall(r"^\s*(\d+)- Inference:\s*(\d+), Target:\s*(\d+)", output, re.MULTILINE)
            if [int(row[0]) for row in predictions] != list(range(16)):
                raise RuntimeError("Simulation did not produce 16 valid, ordered predictions")
            if "test accuracy:" not in output or "ERROR:" in output or "FATAL:" in output:
                raise RuntimeError("Simulation did not finish cleanly")
            labels = [int(line, 2) for line in (ROOT / "simulation/data/smoke/target.mif").read_text().splitlines()]
            if [int(row[2]) for row in predictions] != labels:
                raise RuntimeError("Simulation targets do not match the fixture")
            baseline_file = ROOT / "simulation/data/smoke/predictions.json"
            if not baseline_file.exists():
                raise RuntimeError("Missing saved HDL prediction baseline")
            baseline = json.loads(baseline_file.read_text())
            if [int(row[1]) for row in predictions] != baseline["predictions"]:
                raise RuntimeError("HDL predictions differ from the saved smoke baseline")
            print("PASS: 16 HDL predictions match the saved smoke baseline", flush=True)
            correct = sum(int(row[1]) == label for row, label in zip(predictions, labels))
            print(f"Fixture labels matched: {correct}/16 (not an accuracy benchmark)", flush=True)


if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, subprocess.TimeoutExpired) as error:
        print(f"FAIL: {error}", file=sys.stderr)
        sys.exit(1)
