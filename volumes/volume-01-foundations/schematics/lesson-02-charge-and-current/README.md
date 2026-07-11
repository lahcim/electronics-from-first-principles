# Lesson 2 KiCad project

Target: KiCad 10.

1. Open `lesson-02.kicad_pro`.
2. Open `lesson-02.sch`; KiCad 10 will convert it to the native format.
3. Save as `lesson-02.kicad_sch`.
4. Verify I1's SPICE value is `PULSE(0 1m 0 1u 1u 5m 10m)` and C1 is `1u`.
5. Convert the visible `.tran 10u 6m uic` note into a **SPICE directive text box** if conversion imported it as ordinary text.
6. Open **Inspect → Simulator**, run transient analysis, and plot `V(VCAP)`.

Expected checkpoints: approximately 1 V at 1 ms and 5 V at 5 ms. The included `.cir` file is the authoritative reference if symbol-model conversion differs between KiCad patch versions.
