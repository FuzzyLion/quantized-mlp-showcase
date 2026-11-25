# Quantized MLP on Artix-7

In the Hardware for Neural Networks lab at TU Darmstadt, I took an 8-bit quantized MNIST MLP (784 → 30 → 10) from PyTorch onto a Nexys A7-100T. The course provided the starter code, including the framework, the model and the RTL templates. I wrote the code that computes the hardware constants, ran the Vivado flow, and found out why the first build's timing report couldn't be trusted. The bitstream in this repository gets 29 of 30 random test images right on the board.

## Folding the zero-point into the bias

Activations are quantized with a zero-point, so the straightforward datapath subtracts Z_x from every input before multiplying. I moved that work to generation time:

```text
Σ q_w · (q_x − Z_x) + q_b  =  Σ q_w · q_x  +  (q_b − Z_x · Σ q_w)
```

The bracket contains no input, so each neuron gets one constant that can be computed in advance. In `get_scale_precompute_z()` that is `qb - zx * qw.sum(dim=1)`. `qw` is [neurons, inputs], so summing over the inputs leaves one value per neuron, and the template adds it as that neuron's bias. The multipliers then take the raw 8-bit unsigned input instead of a 9-bit signed difference.

The other functions I wrote size each neuron's accumulator from its number of nonzero weights and turn the output scale into a fixed-point multiplier and shift. All four are in [generator/utils/utils.py](generator/utils/utils.py), and the templates use them to generate [FC1.sv](rtl/FC1.sv) and [FC2.sv](rtl/FC2.sv).

## Finding the timing bug

The first bitstream scored 30/30 on every board run. For a model at about 95%, that was too good, so I opened the timing report. The slack was positive, but the clock table only listed `sys_clk`. The network clock had never been created. Vivado had dropped two XDC commands because each had a `#` comment on the same line without a `;`. The divider was also set to 10, while the RTL divides by 12.

I fixed the constraints and rebuilt. This time timing failed by up to 15 ns, but only on the 100 MHz side and across the clock boundary. The network itself had 79 ns of margin. I asked Codex to trace the failures, and it pointed at the UART wrapper. UART was the part I understood least, so I let it rework the wrapper to run everything on the network clock. I reran Vivado, and the design closed with +8.1 ns of slack. That is the bitstream in this repository.

The failing paths, the evidence files and the reasoning behind each constraint change are in the [design notes](docs/design-notes.md).

## Results

| Check | Result |
| --- | --- |
| Board test on a Nexys A7-100T | 29/30 random test images |
| Python model of the RTL integer arithmetic | 95.26% on 10,000 test images |
| Post-route resources | 49,062 LUTs (77.38%), 40 DSPs (16.67%), 95.90% of Slices |
| Post-route timing at 8.333 MHz | WNS +8.109 ns, WHS +0.122 ns |

Built with Vivado 2026.1 for `xc7a100tcsg324-1`. The reports, the board log and the bitstream are in [fpga/2026-10-31/](fpga/2026-10-31/).

## What is still missing

- `din`, `rst` and the ten outputs have no I/O delay constraints, so the timing result covers the internal paths only.
- Vivado still reports 121 DRC and 3,119 methodology warnings, almost all of them DSP pipelining and small-multiplier suggestions. There are no errors or critical warnings.
- Slices are 95.90% full, so there is little room left on this device.

## Running the checks

You need Python 3.12, Icarus Verilog and Tcl. From the repository root:

```bash
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python scripts/check.py --simulate
python scripts/check_fpga.py
```

`check.py` runs the four parameter tests and simulates 16 images in Icarus Verilog. All 16 predictions match the saved baseline, and 14 match the labels. `check_fpga.py` checks the saved file hashes, the Tcl paths and that the board RTL compiles. Neither script touches Vivado or the board.

[NOTICE.md](NOTICE.md) lists what comes from the course and what is not included.
