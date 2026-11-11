# Design notes

## Integer datapath

For symmetric quantized weights, I precompute the scale and input zero-point correction for each output neuron:

```text
S_i = S_Wi * S_X / S_Y
C_i = q_bi - Z_X * sum_j(q_wij)
q_yi ≈ S_i * (sum_j(q_wij * q_xj) + C_i) + Z_Y
```

This removes the need to subtract the input zero-point from every input at runtime. The first layer uses the model's input parameters; the second uses the preceding layer's output parameters.

The accumulator rule is `2 * bit_width + ceil(log2(max(1, N_nonzero)))`. It accounts for the products emitted by the sparse template, but arbitrary bias corrections still need a range check. The scale becomes `M / 2**R`: 0.125, for example, is multiplier 8 with shift 6.

The course templates skip zero weights and connect accumulation, requantization and ReLU. Output narrowing uses bit selection. This flow targets the supplied model; it is not a general overflow-safe quantizer.

## Board interface

The repaired UART wrapper receives 784 bytes, holds the image stable and returns one class byte. The host waits for the reply before sending another image. The shared processing clock is approximately 8.333 MHz, derived from 100 MHz by division by 12. UART uses 434 cycles per bit for nominal 19,200 baud, 8N1. This is a request/reply interface, and the processing clock is not an image-throughput measurement.

## Rebuilding

Run `generator/verilog_generator.ipynb` from `generator/` to write layers into `rtl/`. It uses the legacy Intel Neural Compressor loading API and needs the course-compatible environment. I have not rerun it here; the included generated layers support local simulation without it.

The small fixture contains the first 16 original course samples. Full simulation needs the original quantized MIF files under `simulation/data/`. Board scripts also need the original `testdata/`, PySerial and Matplotlib.

To recreate the saved Vivado 2026.1 project for `xc7a100tcsg324-1`, run from the repository root:

```bash
vivado -mode batch -source fpga/2026-10-31/recreate_project.tcl
```

This creates the project under `fpga/2026-10-31/build/project_quant_net/`; synthesis and implementation must be launched separately. Local path checks passed, but I have not run this adapted script in Vivado.

The [saved FPGA bundle](../fpga/2026-10-31/) retains reports, source snapshots, a bitstream and historical logs. The directed UART testbench sources are absent. The [older board transcript](../fpga/2026-10-31/verification.md) has no timestamp or bitstream identifier tying it to the repair. Two inputs and ten outputs lack I/O delays; the reports retain 121 DRC and 3,119 small-multiplier methodology warnings. The repaired bitstream has not been retested on a board.
