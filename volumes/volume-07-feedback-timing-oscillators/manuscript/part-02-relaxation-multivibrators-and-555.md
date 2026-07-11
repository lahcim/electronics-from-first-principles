# Part II — RC, Relaxation, Multivibrator, and 555 Timing Circuits

## Lesson 9 — RC Phase-Shift Oscillator

Use an inverting amplifier and three RC sections. The RC network contributes approximately 180° at the oscillation frequency while the amplifier contributes another 180°.

For equal sections, derive and verify the approximate frequency and minimum gain requirement.

**Challenge:** design a nominal 1 kHz version and evaluate component tolerance.

---

## Lesson 10 — Wien-Bridge Oscillator

Study the lead-lag network whose phase is zero at:

$$f_0=\frac1{2\pi RC}$$

and attenuation is one third for equal R and C, requiring amplifier gain near three.

**Challenge:** compare diode limiting with slow automatic gain control for distortion.

---

## Lesson 11 — Relaxation Oscillators

Charge and discharge a capacitor between thresholds. Compare op-amp/comparator, unijunction-style conceptual, and logic-gate implementations.

**Challenge:** derive period from threshold fractions and RC values.

---

## Lesson 12 — Schmitt-Trigger Oscillator

A Schmitt trigger defines upper and lower thresholds while an RC network moves between them.

**Challenge:** design a 10 Hz oscillator with asymmetric thresholds and report duty cycle.

---

## Lesson 13 — Astable Transistor Multivibrator

Cross-coupled BJTs alternately saturate while timing capacitors charge through base resistors. Observe startup asymmetry, collector waveforms, base excursions, and transistor storage time.

**Challenge:** design approximately 1 Hz blinking with two equal halves.

---

## Lesson 14 — Monostable Circuits

A trigger moves the circuit temporarily into an unstable state; RC timing returns it to the stable state.

**Challenge:** create a 100 ms output pulse insensitive to trigger width within stated limits.

---

## Lesson 15 — Bistable Circuits

Two stable states store one bit. Build cross-coupled transistor or gate latches and examine set/reset conflicts.

**Challenge:** explain metastable equilibrium and why perfect simulator symmetry may persist.

---

## Lesson 16 — The 555 Timer Externally

Introduce supply, ground, trigger, threshold, discharge, reset, control-voltage, and output pins. Relate internal thresholds to one third and two thirds of supply.

**Challenge:** predict output and discharge-transistor state for several trigger/threshold combinations.

---

## Lesson 17 — The 555 Timer Internally

Trace the resistor divider, two comparators, SR latch, discharge transistor, and output stage. Explain why it is called a timer rather than an oscillator-only IC.

**Challenge:** recreate the functional core from comparators, latch, and transistor models.

---

## Lesson 18 — 555 Astable Mode

Derive approximate high and low times:

$$t_H\approx0.693(R_A+R_B)C$$

$$t_L\approx0.693R_BC$$

Observe why the classic circuit cannot reach 50% duty cycle without modification.

**Challenge:** design 1 kHz near-50% duty using a steering diode or alternate topology.

---

## Lesson 19 — 555 Monostable Mode

Derive:

$$t_P\approx1.1RC$$

Study trigger requirements, retriggering, reset, startup, and capacitor leakage.

**Challenge:** design a 2 s pulse and calculate tolerance range.

---

## Lesson 20 — PWM and Voltage-Controlled Timing

Use the control-voltage pin or separate ramp/comparator architecture to vary duty cycle. Examine frequency interaction, linearity, and threshold limits.

**Challenge:** generate 10–90% PWM from a 0.5–4.5 V control signal.