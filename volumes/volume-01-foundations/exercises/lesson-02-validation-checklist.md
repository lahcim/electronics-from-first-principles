# Lesson 2 validation checklist

- [ ] KiCad 10 opens the project and converts the legacy schematic.
- [ ] The `.tran 10u 6m uic` text is configured as a SPICE directive.
- [ ] Current-source pin direction is checked before interpreting the sign.
- [ ] `V(VCAP)` rises approximately linearly during the 1 mA pulse.
- [ ] At 5 ms, capacitor voltage is approximately 5 V for C = 1 µF.
- [ ] Integrated charge over 5 ms is approximately 5 µC.
- [ ] Results are compared with `reference-data/lesson-02-expected.csv`.
