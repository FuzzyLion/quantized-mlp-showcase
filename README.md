# Quantized MLP on Artix-7

I completed the parameter-generation code for an 8-bit MNIST MLP and took the design through Vivado and a small FPGA board check. The course model has **784 → 30 → 10 neurons**. This repository contains the Python generator, generated SystemVerilog, simulation inputs and saved FPGA results.

## My part

I implemented four functions in [`QuantModelStatistic`](generator/utils/utils.py):

- `get_scale_precompute_z()`: per-neuron scale and zero-point correction.
- `get_neuron_output_bit_width()`: accumulator width from the nonzero weights.
- `render_scale()` and `render_shift()`: fixed-point multiplier and right shift.

The course supplied the framework, model, Jinja2 templates and supporting RTL. `FC1.sv` and `FC2.sv` are generated from those templates. I integrated my functions into that flow and ran the implementation and earlier board check.

For a later UART/clock-constraint repair, an AI coding agent implemented the changes and prepared the directed verification scripts. I reran Vivado and exported the bitstream and reports. I also used AI assistance for the local checks and repository documentation.

## Results

| Check | Result |
| --- | --- |
| Earlier Python model of RTL integer arithmetic | 95.26% on 10,000 test vectors |
| Earlier Nexys A7-100T board check | 29/30 samples correct, before the UART repair |
| Later Vivado 2026.1 implementation | 49,062 LUTs (77.38%), 40 DSPs; Slice occupancy 95.90% |
| Later post-route timing | WNS +8.109 ns, WHS +0.122 ns at approximately 8.333 MHz |

The [utilization](fpga/2026-10-31/post_route_utilization.rpt) and [timing](fpga/2026-10-31/post_route_timing_summary.rpt) reports describe the repaired design. I have not retested that bitstream on a board. External I/O delay constraints remain incomplete, and DRC/methodology warnings remain. The 95.26% result is a historical Python evaluation; 29/30 is a small board sample.

## Run the checks

Use Python 3.12, Icarus Verilog and Tcl. From the repository root:

```bash
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python scripts/check.py --simulate
python scripts/check_fpga.py
```

The local checks pass four parameter tests and compare 16 HDL predictions with a saved baseline. All 16 match the baseline; 14 match the fixture labels. The FPGA check validates saved source hashes, Tcl paths and board RTL compilation. These checks do not run Vivado or test a board.

Start with [`generator/utils/utils.py`](generator/utils/utils.py) and [`rtl/`](rtl/). [Design notes](docs/design-notes.md) cover the arithmetic, model-loading environment and FPGA recreation steps.

This is coursework from Hardware for Neural Networks at TU Darmstadt. Course PDFs and full datasets are excluded. No repository-wide license is added over the course-derived materials.
