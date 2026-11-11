# FPGA implementation recovery and timing repair

Date: 2026-10-31. Tool: Vivado 2026.1. Device: xc7a100tcsg324-1.
Top module: `uart_top`. This record accompanies the verified export
`portfolio_export_20261031_142730`.

## What the earlier results did and did not establish

The first recovered build completed synthesis, routing and bitstream generation.
Its timing report showed positive slack, but the network clock was missing from
the active constraints: 323 register clock pins had no defined timing clock and
403 internal endpoints were unconstrained. Consequently, that result did not
establish timing closure for the complete internal design. This was a timing
coverage problem, not a synthesis compilation failure.

The original XDC placed inline `#` comments after `create_generated_clock` and
`set_clock_groups` without a command separator. Vivado logged parsing warnings;
neither command appeared in the exported effective constraints. The divider was
also described as divide-by-10, although the RTL toggles after counting 0 through
5, yielding divide-by-12. The system and divided clocks share a source and should
not be treated as unrelated clocks to bypass data-path timing checks.

| Stage | Setup WNS | Hold WHS | Interpretation |
| --- | ---: | ---: | --- |
| Initial recovered build, incomplete constraints | +0.105 ns | +0.140 ns | Network timing coverage incomplete; not a closure result |
| Corrected constraints applied to the existing old routing | -25.902 ns | -5.179 ns | Reanalysis only; no new placement or routing |
| Old RTL rebuilt with corrected constraints | -15.324 ns | +0.152 ns | Genuine setup violations; 4,146 failing setup endpoints |
| Repaired wrapper, final project rerun | **+8.109 ns** | **+0.122 ns** | Zero failing setup/hold endpoints under the applied constraints |

The first two stages' reports are preserved in [verification/history](verification/history/).
The third stage's values were recorded during review of the 14:05 routed report
and the user's Vivado screenshot. That run report was subsequently overwritten
by the successful project rerun; a separate original report for that stage is not
included. The final result is directly supported by the accompanying
[post-route timing report](post_route_timing_summary.rpt).

## Findings that guided the repair

In the failed rebuild, network-internal paths at 120 ns had positive setup slack
(+79.051 ns). The critical problems were instead:

- System-clock UART reception to the pixel array: a representative path took
  20.011 ns, of which 19.555 ns was routing, against a 10 ns requirement.
- Pixel array through FC1 to a network register: a representative cross-clock
  data path took 30.400 ns, while the default related-clock requirement was 10 ns.
- Network outputs through the maximum-score selection into LED/UART logic:
  another cross-clock path took 16.952 ns, also with a 10 ns requirement.

Slowing only the network clock did not automatically give these boundary paths
a full 120 ns. Broad asynchronous clock groups or unproven multicycle exceptions
would not establish that the interface operated correctly.

## Changes made

- [uart_and_net.xdc](constraints/uart_and_net.xdc): define the actual divide-by-12
  generated clock; put explanatory comments on separate lines; remove the
  asynchronous grouping between related clocks.
- [uart_top.sv](sources/uart_top.sv): run UART RX/TX, pixel storage, network stages,
  classification and display on the same 8.333 MHz processing clock. Keep the
  100 MHz board input and free-running divider. Synchronize reset release in the
  processing domain. Receive 784 bytes, hold the buffer, wait for both network
  stages, register the classification, then issue one UART response.
- [uart_r.sv](sources/uart_r.sv): use a parameterized bit period, synchronize the
  serial input, sample near bit centres, and finish reception at the stop-bit
  centre so consecutive bytes are accepted. Reject a low stop bit.
- [uart_s.sv](sources/uart_s.sv): parameterize the bit period and express `busy`
  with blocking assignments in combinational logic.

The default processing clock is 100 MHz / 12 = approximately 8.333 MHz. Both UART
directions use 434 processing-clock cycles per bit (approximately 19,201 baud),
preserving the host's configured 19,200-baud 8N1 protocol. The host sends one image
and waits for its reply before sending the next. Reset discards an incomplete
image or pending reply.

FC1/FC2 arithmetic, weights, quantization, the `top_clk` pipeline, and the LED
decoder were unchanged. The unsigned score comparison and lowest-index tie break
were preserved. [The change diff](verification/timing_repair.patch) shows the
constraint and UART-wrapper edits relative to the pre-repair versions.

## Verification and final evidence

- Interface simulation passed at accelerated and production UART counters:
  contiguous 784-byte frames, pixel ordering, two-stage wait, tied scores,
  one reply per image, reset during partial reception, and reset during output.
  See [production-counter simulation log](verification/default_test.log).
- Three full-network frames (zero input plus two supplied test images) matched
  every output score byte of an independent instance of the unchanged original
  network, as well as the returned classification. This checks preservation of
  the interface for those frames, not a new dataset accuracy measurement.
  See [network comparison log](verification/network_test.log).
- Independent synthesis/implementation passed, followed by the user's rerun in
  the actual Vivado project. The final project export has WNS +8.109 ns,
  WHS +0.122 ns, TNS/THS zero, no unclocked register pins, no unconstrained internal
  endpoints, and [no routing errors](route_status.rpt).
- [Clock report](clocks.rpt): 100 MHz system clock and divide-by-12, 120 ns network
  clock. [CDC report](cdc.rpt): one reported inter-clock endpoint, safely timed;
  unconstrained external input ports are excluded from CDC analysis.
- [Build record](build_info.txt): synthesis complete and bitstream generation
  complete. The exported `uart_top.bit` matches the current project output.
- Exported RTL and the original XDC were compared byte-for-byte with the workspace
  and the actual project imports. RTL hashes also match the independently
  validated source manifest in [verification/validated_sources.json](verification/validated_sources.json).

Post-route resources: 49,062 LUTs (77.38%), 4,025 FFs (3.17%), 40 DSPs (16.67%),
0 BRAM and 15,200 Slices (95.90%). Slice occupancy remains high; do not claim that
all resource categories are below 80%.

## Remaining limits and repository handoff

- Two inputs (`din`, `rst`) and ten outputs lack I/O delay constraints. Describe
  the result as internal timing closure under the applied constraints, not fully
  constrained external-interface timing signoff.
- [DRC](drc.rpt) retains 121 ordinary warnings: missing configuration-voltage
  properties and 120 DSP pipeline recommendations. [Methodology](methodology.rpt)
  retains 3,119 small-multiplier warnings. These exports contain no Error or
  Critical Warning entries; the build is not warning-free.
- No new physical board/UART hardware test was performed in this recovery.
  Historical board results must remain separate from this build's simulation
  and implementation evidence.
- `recreate_project.tcl` still references the original project source directories
  and a machine-local board repository. Before advertising a portable GitHub
  build, adapt it to the accompanying `sources/` and `constraints/` directories
  and verify project creation on a clean checkout.
- No new full-project ZIP was made for the final build. The export preserves
  source snapshots, constraints, reports and bitstream, but does not preserve
  all implementation checkpoints or replace a full Vivado project archive.
- The timing-repair edits and verification scripts were prepared with an AI
  coding agent; the user reran the actual Vivado project and generated the final
  bitstream. Keep this repair contribution distinct from the original lab work.

For the showcase repository, use this final export as the current implementation
result. Label the earlier reports as diagnostic history; do not present their
incompletely constrained or failing runs as successful timing-closure evidence.
