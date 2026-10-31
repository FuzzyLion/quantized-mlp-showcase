# Design notes

The main lesson for me was that integer arithmetic, data movement and timing constraints need to be considered together. A network can be mathematically simple while its storage and interface paths are difficult to place and route.

## Quantization and hardware cost

An 8-bit operand does not imply an 8-bit accumulator. Products and sums need wider intermediate values, and the final result needs rescaling before it can be passed to the next layer. I implemented the generator parameter functions that connect scale and zero-point information to that integer datapath, together with accumulator-width and fixed-point multiplier/shift generation.

Some parameter-dependent operations can be prepared before inference. That shifts work into the generation step, but makes the generated circuit specific to its model and numeric assumptions. Reusing the same flow for another model would require checking ranges, rounding and output narrowing again.

Sparse weights can reduce the arithmetic emitted by a generator. The eventual device cost still depends on synthesis choices, placement and routing. I would use measured utilization reports to discuss that cost rather than equating a count of zero weights with an FPGA resource saving.

## Timing coverage before timing closure

During recovery of the FPGA project, an initially positive timing summary did not cover the network's generated clock correctly. Correcting the clock definition exposed real timing violations. That made the distinction between a positive number and adequate constraint coverage concrete for me.

The timing repair was implemented by an AI coding agent. It placed UART reception/transmission, image storage, network registers, classification and display in one processing domain. The clock is derived from the 100 MHz input by division by 12, giving a 120 ns period, or approximately 8.333 MHz. Related clocks remain timed rather than being excluded by a broad asynchronous clock-group exception.

Moving the processing logic into a slower domain required updating the UART bit timing too. The repaired interface uses 434 processing-clock cycles per bit, approximately 19,201 baud, for the nominal 19,200-baud 8N1 host protocol. I reran the Vivado project with the repaired implementation.

## Buffer ownership and interface sequencing

The host sends an image and waits for its classification. The FPGA holds the image stable while the registered network computes and the response is prepared. This makes ownership of the input buffer explicit and limits the interface to one outstanding image.

That protocol is simple to reason about, but it is not a streaming throughput design. The 8.333 MHz processing clock is not a measured image rate. I have not reported end-to-end throughput, power or a fresh board-level accuracy measurement.

## What the final result supports

The saved routed reports support internal timing closure for the applied constraints. They also show high Slice occupancy and retained implementation warnings. Missing external I/O delays still need interface-specific review, and the repaired implementation still needs a physical board retest.

The earlier integer-equivalent evaluation and 29/30 board check apply to the pre-repair design. The later routed reports describe the repaired implementation. Keeping those stages separate preserves what each result establishes.
