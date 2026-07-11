# Lesson 3 KiCad project

Open `lesson-03.kicad_pro` in KiCad 10, open `lesson-03.sch`, allow conversion, and save as `lesson-03.kicad_sch`.

Run a DC operating-point analysis. No schematic SPICE directive is required.

Expected values:

- `V(TOP) = 8 V`
- `V(MID) = 3 V`
- `V(TOP,MID) = 5 V`
- `V(MID,TOP) = -5 V`

The standalone reference netlist is in `../../simulations/lesson-03-voltage-is-a-difference.cir`.
