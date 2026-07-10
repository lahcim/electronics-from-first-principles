# Lesson 1 KiCad project

This directory contains the editable simulation project for **Lesson 1 — A Circuit Needs a Loop**.

## Files

- `lesson-01.kicad_pro` — KiCad project file.
- `lesson-01.sch` — KiCad legacy schematic intentionally used as a portable interchange source.
- `lesson-01.cir` — small reference ngspice netlist for validating connectivity and expected results.

## Opening in KiCad 10

1. Open `lesson-01.kicad_pro` in KiCad 10.
2. Open `lesson-01.sch` in the Schematic Editor.
3. KiCad 10 should import the legacy schematic and may ask you to save it in the current native format.
4. Save it as `lesson-01.kicad_sch` in this same directory.
5. Open **Inspect → Simulator** and run a DC operating-point analysis.

The expected nominal results are:

- `V(VIN) = 5 V`
- resistor current magnitude = `5 mA`
- resistor power = `25 mW`
- source power magnitude = `25 mW`, normally shown with the opposite sign

## Why the repository includes a legacy `.sch`

KiCad 10 can import the documented legacy schematic format and convert it to its native `.kicad_sch` representation. This avoids committing a hand-authored native S-expression file that has not been round-trip saved by KiCad itself. Once the course build environment can run KiCad 10 headlessly, generated native files will be opened, saved, and validated automatically before publication.

## SPICE directives

No schematic SPICE text directive is required for this lesson. Configure the DC operating-point analysis in the Simulator dialog. The reference netlist includes `.op` only as a standalone ngspice validation aid.

## Validation checklist

- [ ] Project opens in KiCad 10 without missing-library errors.
- [ ] Source value is 5 V DC.
- [ ] R1 is 1 kΩ.
- [ ] The ground symbol maps to SPICE node `0`.
- [ ] The positive node is labeled `VIN`.
- [ ] The generated netlist contains one voltage source and one resistor between `VIN` and `0`.
- [ ] Operating-point values match the expected values above within numerical precision.
