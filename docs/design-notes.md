# Design notes

## Accumulator width and fixed-point scale

The template only instantiates a multiplier for nonzero weights, so `get_neuron_output_bit_width()` sizes each accumulator from the products that are actually summed:

```math
\text{width} = 16 + \lceil \log_2 N \rceil
```

The 16 bits hold one product of an 8-bit unsigned input and an 8-bit signed weight. The second term covers the growth from adding up $N$ of them, where $N$ is the number of nonzero weights. The rule leaves out the bias constant, though, and a large one could overflow the accumulator. A general quantizer would need a range check there. I only built this for the course model and didn't add one.

`render_scale()` and `render_shift()` turn the output scale into a multiplier $M$ and a right shift $R$:

```math
S = \frac{S_w \, S_x}{S_y} \approx \frac{M}{2^R}
```

At width 5, for example, 0.125 becomes $M = 8$ and $R = 6$. The course's `DEQUANT` module applies them and adds the output zero-point.

## Timing repair

Failing paths after I fixed the constraints, before the UART rework:

| Paths | Worst setup slack | Failing endpoints |
| --- | ---: | ---: |
| Inside `sys_clk` | -10.307 ns | 3,887 |
| `sys_clk` → `net_clk` | -15.324 ns | 248 |
| `net_clk` → `sys_clk` | -12.839 ns | 11 |
| Inside `net_clk` | +79.051 ns | 0 |

The report for this run was overwritten by the next build, so it isn't in the repository.

The two XDC commands disappeared because XDC is Tcl, and Tcl only treats `#` as a comment at the start of a command. Without a `;` before it, the comment was read as extra arguments, and Vivado dropped both commands with a parse warning.

I removed the asynchronous clock group instead of repairing its comment. `net_clk` is divided from `sys_clk`, so the two clocks have a fixed relationship, and declaring them asynchronous would make Vivado skip every path between them. The original wrapper fed the 100 MHz pixel buffer straight into the network without a synchronizer or handshake, so those paths needed to be timed, not hidden.

The reworked wrapper receives 784 bytes, holds the image while the network computes and sends back one class byte. Everything runs on 100 MHz / 12, about 8.333 MHz, and UART gets 434 cycles per bit, which is 19,201 baud against the host's 19,200 baud 8N1. The slow clock costs nothing here, since sending one image over UART takes about 0.4 s anyway.

Codex also wrote directed testbenches for the wrapper. They cover frame and pixel order, the wait for both network stages, tied scores, one reply per image and reset in the middle of a frame or a reply. In three full-network frames, every score byte matched an unchanged copy of the original network. The logs are included. The testbench sources are not.

Evidence in [fpga/2026-10-31/](../fpga/2026-10-31/):

- [initial_incomplete_constraints_timing.rpt](../fpga/2026-10-31/verification/history/initial_incomplete_constraints_timing.rpt): the first report, with 323 unclocked register pins and 403 unconstrained endpoints
- [initial_applied_constraints.xdc](../fpga/2026-10-31/verification/history/initial_applied_constraints.xdc): the constraints Vivado actually applied, without the two dropped commands
- [timing_repair.patch](../fpga/2026-10-31/verification/timing_repair.patch): the constraint and wrapper changes
- [default_test.log](../fpga/2026-10-31/verification/default_test.log) and [network_test.log](../fpga/2026-10-31/verification/network_test.log): the wrapper testbench runs
- [post_route_timing_summary.rpt](../fpga/2026-10-31/post_route_timing_summary.rpt): the final timing
- [board_test.log](../fpga/2026-10-31/verification/board_test.log): the 29/30 board run

## Rebuilding

- [generator/verilog_generator.ipynb](../generator/verilog_generator.ipynb) writes `FC1.sv` and `FC2.sv` into `rtl/`. Run it from `generator/`. It needs the course environment for the legacy Intel Neural Compressor API, and I haven't rerun it for this repository.
- `simulation/data/smoke/` holds 16 samples for the local simulation. A full run needs the course's MIF files under `simulation/data/`. The board scripts need the course `testdata/`, PySerial and Matplotlib.
- `vivado -mode batch -source fpga/2026-10-31/recreate_project.tcl` recreates the project under `fpga/2026-10-31/build/`. Synthesis and implementation are started separately. The script passes the local path checks, but I haven't run this adapted version in Vivado.
