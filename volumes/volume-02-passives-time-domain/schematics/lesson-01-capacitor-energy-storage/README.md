# KiCad 10 Project — Volume 2 Lesson 1

## Opening the project

1. Open `lesson-01.kicad_pro` in KiCad 10.
2. Open `lesson-01.sch` in Schematic Editor.
3. Allow KiCad to convert the legacy schematic.
4. Save it as `lesson-01.kicad_sch`.
5. Open **Inspect → Simulator**.

## Required simulation setup

The baseline transient analysis is:

```spice
.tran 10u 8m startup
```

The schematic contains this as a visible note for portability. In KiCad 10, ensure it is inserted or marked as an actual SPICE directive. Then inspect the generated netlist and confirm that `.tran 10u 8m startup` is present.

## Component mapping

- V1 must netlist as a pulse voltage source.
- R1 must netlist as a 1 kΩ resistor.
- C1 must netlist as a 1 µF capacitor.
- The bottom node must be SPICE node `0`.

Expected core netlist:

```spice
V1 VIN 0 PULSE(0 5 0 1u 1u 100m 200m)
R1 VIN VCAP 1k
C1 VCAP 0 1u
```

## Expected measurements

- initial current magnitude: approximately 5 mA;
- `V(VCAP)` at 1 ms: approximately 3.1606 V;
- time to 4.5 V: approximately 2.303 ms;
- final charge: approximately 5 µC;
- final stored energy: approximately 12.5 µJ.

## Reference files

- standalone netlist: `../../simulations/lesson-01-capacitor-energy-storage.cir`
- expected values: `../../simulations/lesson-01-expected-results.csv`
- rendered schematic: `../../figures/lesson-01-rc-capacitor-energy.svg`
- worked challenge: `../../solutions/lesson-01-capacitor-energy-storage-solution.md`

## Validation status

The project is supplied in an importable format intended for KiCad 10 conversion. It has not yet been round-trip opened and saved by an installed KiCad 10 executable in the repository automation environment. Do not describe it as native-validated until that automated or manual validation is completed.