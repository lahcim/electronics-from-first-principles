# Lesson 7 KiCad 10 project

Open `lesson-07.kicad_pro`, then open `lesson-07.sch`. Let KiCad 10 import it and save as `lesson-07.kicad_sch`.

Run a DC operating-point analysis. No schematic directive is required.

Expected:

- `V(VIN)` = 12 V;
- `V(VMID)` = 8 V;
- `V(VIN,VMID)` = 4 V;
- current magnitude = 4 mA;
- KVL residual `12 - 4 - 8` is approximately zero.

Use differential probes in both orders to observe sign reversal.