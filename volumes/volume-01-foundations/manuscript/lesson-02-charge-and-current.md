# Lesson 2 — Charge and Current

> **Level:** Foundation  
> **Estimated study time:** 90–120 minutes  
> **KiCad project:** `../schematics/lesson-02-charge-and-current/lesson-02.sch`

## 1. Learning objectives

By the end of this lesson, you should be able to explain current as a rate of charge flow, convert between amperes and coulombs per second, distinguish conventional current from electron motion, and use a capacitor as a visible charge accumulator in simulation.

## 2. Physical meaning

Electric current does not mean that charge is created or consumed. It means charge crosses an imagined boundary at some rate. One ampere means one coulomb per second.

$$
I=\frac{dQ}{dt}
$$

For constant current:

$$
\Delta Q=I\Delta t
$$

A current of 1 mA for 5 ms transfers:

$$
\Delta Q=(1\ \text{mA})(5\ \text{ms})=5\ \mu\text{C}
$$

Conventional current is defined in the direction positive charge would move. In metal wires, electrons drift in the opposite direction. Both descriptions predict the same circuit behavior when used consistently.

## 3. Circuit under test

A 1 mA pulse-current source charges a 1 µF capacitor. The capacitor is used here as a charge meter: its voltage rises as charge accumulates.

For a capacitor:

$$
Q=CV
$$

Combining this with $I=dQ/dt$ gives:

$$
I=C\frac{dV}{dt}
$$

Therefore:

$$
\frac{dV}{dt}=\frac{I}{C}=\frac{1\ \text{mA}}{1\ \mu\text{F}}=1000\ \text{V/s}=1\ \text{V/ms}
$$

The voltage should rise linearly from 0 V to 5 V during the 5 ms current pulse.

## 4. Build it in KiCad 10

1. Open the included project and allow KiCad 10 to convert the legacy `.sch` file to `.kicad_sch`.
2. Confirm I1 is a SPICE current source directed into node `VCAP`.
3. Confirm C1 is 1 µF from `VCAP` to node 0.
4. Confirm the current source uses `PULSE(0 1m 0 1u 1u 5m 10m)`.
5. Confirm the SPICE directive text is present and exported to the netlist.

## 5. Required schematic SPICE directive

```spice
.tran 10u 6m uic
```

`uic` starts from the explicitly uncharged capacitor state instead of first solving a DC operating point that may obscure the intended startup experiment.

## 6. Predict before running

Predict `V(VCAP)` at 1, 2, 3, 4, and 5 ms. Also predict the transferred charge at each time.

| Time | Predicted charge | Predicted voltage |
|---:|---:|---:|
| 1 ms | 1 µC | 1 V |
| 2 ms | 2 µC | 2 V |
| 3 ms | 3 µC | 3 V |
| 4 ms | 4 µC | 4 V |
| 5 ms | 5 µC | 5 V |

## 7. Baseline experiment

Plot `V(VCAP)` and the current through I1.

### Observe

- current is approximately 1 mA during the pulse;
- capacitor voltage is a straight-line ramp;
- voltage slope is about 1 V/ms;
- after the current turns off, the ideal capacitor holds its voltage.

### Why it happens

A constant current transfers equal charge during equal time intervals. Since $V=Q/C$ and C is constant, equal additions of charge produce equal additions of voltage. The flat voltage after 5 ms occurs because the ideal capacitor has no leakage path.

## 8. Parameter experiments

### Experiment A — double current

Change 1 mA to 2 mA. The slope should double to 2 V/ms.

### Experiment B — double capacitance

Change 1 µF to 2 µF. The slope should halve to 0.5 V/ms.

### Experiment C — reverse current

Change the pulse to −1 mA or reverse I1. The capacitor voltage should ramp negative. This demonstrates that current direction is a signed reference, not an absolute label.

### Experiment D — add leakage

Place 1 MΩ in parallel with C1. The ramp becomes slightly curved and the voltage decays after the source turns off because charge can leave through the resistor.

## 9. Common mistakes

| Symptom | Likely cause | Fix |
|---|---|---|
| voltage ramps downward | current-source orientation reversed | reverse I1 or interpret sign consistently |
| voltage begins at an unexpected value | DC operating point used | use the documented `uic` directive |
| voltage stays flat | source waveform or pin mapping incorrect | inspect generated netlist |
| singular-matrix error | node 0 missing | connect capacitor return to SPICE ground |

## 10. Design challenge

Choose a capacitor that reaches 3.0 V after receiving a constant 2 mA current for 15 ms.

### Acceptance criteria

- simulated voltage at 15 ms is between 2.97 V and 3.03 V;
- capacitor uses a standard nominal value;
- calculation and simulation differ by less than 1%;
- current direction and voltage polarity are documented.

## 11. Summary

Current is charge per unit time. A capacitor converts accumulated charge into a measurable voltage, making the abstract definition visible. The next lesson shows that voltage itself is always a difference between two points.