# Scope and contributions

I created this public repository as a technical summary of course-based work. It has its own Git history and contains newly written prose, a high-level Mermaid diagram and a structured result summary.

## Sources and roles

The project originates from Hardware for Neural Networks coursework at TU Darmstadt. The course supplied the framework, model, templates and supporting implementation. I do not claim independent authorship of that framework or present the generated neural-network RTL as hand-written work.

My study focused on quantized parameter preparation, fixed-point arithmetic, accumulator widths and the connection to generated hardware. I reran the repaired Vivado project, generated the final bitstream and exported its implementation results.

An AI coding agent implemented the UART/constraint timing repair and prepared its directed verification scripts. AI also assisted with repository organization, verification helpers, and the writing and diagram in this public summary. The simulation logs report checks of that repair; they do not establish complete physical hardware verification.

## Public contents

The resource, clock and timing values are transcribed from my saved Vivado 2026.1 reports dated 31 October 2026. I checked the summary against those reports when preparing this repository. The original reports and implementation records are not published here, so readers cannot independently reproduce the build from this summary alone.

Course PDFs, screenshots of course materials, model checkpoints, generation templates, source code, complete solution reports, simulation fixtures, raw logs, constraints, build scripts and bitstreams are outside this repository's scope. I have not imported the implementation repository's Git history.

I have not established public redistribution permission for the course-derived implementation. This summary does not grant rights over that material, imply endorsement by the course team, or promise access to the full implementation. Any future source release would need a separate review of what may be shared.

## Verification limits

The routed implementation meets internal timing under its applied constraints. External I/O delay constraints remain incomplete, ordinary DRC and methodology warnings remain, and Slice occupancy is 95.90%. I have not retested the repaired bitstream on a physical board. I do not describe the project as warning-free or fully hardware-validated.
