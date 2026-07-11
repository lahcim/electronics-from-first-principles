# Lesson 4 KiCad project

Open `lesson-04.kicad_pro` in KiCad 10, open `lesson-04.sch`, allow conversion, and save as `lesson-04.kicad_sch`.

For DC operating point, no directive is required.

For the energy experiment, mark these schematic text items as SPICE directives:

```spice
.tran 10m 10s
.meas tran E_R INTEG V(VIN)*I(R1) FROM=0 TO=10s
```

Expected operating-point values:

- `V(VIN) = 5 V`
- resistor current magnitude = `5 mA`
- resistor power = `25 mW`
- source power = `-25 mW` under passive sign convention
- integrated resistor energy over 10 s = `0.25 J`, subject to current orientation sign
