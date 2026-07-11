# Part I — Op-Amp Foundations and Basic Feedback Circuits

## Lesson 1 — What an Amplifier Does

Separate voltage gain, current gain, power gain, input impedance, and output impedance. Use a dependent voltage source to model an idealized amplifier.

**Challenge:** explain why voltage gain alone does not determine whether an amplifier can drive a load.

---

## Lesson 2 — Differential Input

An op-amp responds primarily to the difference between its inputs:

$$V_D=V_+-V_-$$

Build a high-gain dependent-source model and sweep differential input by microvolts.

**Challenge:** predict output polarity for positive and negative differential input.

---

## Lesson 3 — Open-Loop Gain

Use:

$$V_{OUT}=A_{OL}(V_+-V_-)$$

Show that very large gain drives the output to a rail for tiny differential voltages unless negative feedback is used.

**Challenge:** calculate differential input required for 5 V output with open-loop gain 200,000.

---

## Lesson 4 — Negative Feedback

Feed a portion of output back to the inverting input. Observe the amplifier adjusting output until the input difference becomes very small.

Explain that negative feedback does not force the inputs to be equal under every condition; it only tends to do so while the loop has gain and the output remains within its limits.

**Challenge:** list conditions under which the “inputs are equal” approximation fails.

---

## Lesson 5 — The Ideal Op-Amp Rules

Under valid negative-feedback operation:

- input currents are zero;
- differential input voltage is approximately zero;
- output takes whatever value is required within its ideal limits.

Apply these rules to simple circuits, then compare with a finite-gain model.

**Challenge:** quantify the small input error for closed-loop gain 10 and finite open-loop gain 100,000.

---

## Lesson 6 — Voltage Follower

Connect output directly to the inverting input. Observe unity gain, high input impedance, and low output impedance.

Add a 10 kΩ source resistance and 1 kΩ load. Compare direct loading with buffered loading.

**Challenge:** identify why a real follower may still fail with a heavy or capacitive load.

---

## Lesson 7 — Non-Inverting Amplifier

Derive:

$$A_V=1+\frac{R_F}{R_G}$$

Build gains of 2, 5, and 11. Compare resistor ratio, input common-mode range, output swing, and bandwidth.

**Challenge:** design gain 8.5 using standard resistor values and report actual gain.

---

## Lesson 8 — Inverting Amplifier

Derive:

$$A_V=-\frac{R_F}{R_{IN}}$$

Explain virtual ground, input current path, inversion, and input impedance.

**Challenge:** design gain −4 for a 10 kΩ source while keeping input resistance at least 20 kΩ.

---

## Lesson 9 — Summing Amplifier

Use multiple input resistors into the virtual summing node:

$$V_{OUT}=-R_F\sum\frac{V_i}{R_i}$$

Create equal and weighted sums.

**Challenge:** combine 1 V, 2 V, and 3 V inputs with weights 1, 0.5, and 0.25.

---

## Lesson 10 — Difference Amplifier

Build the four-resistor subtractor. Show that accurate common-mode rejection depends on resistor-ratio matching, not merely individual tolerance.

**Challenge:** design gain 10 for a 20 mV differential signal riding on 2 V common mode.

---

## Lesson 11 — Instrumentation Amplifier Introduction

Use buffered inputs and a difference stage. Explain high input impedance, adjustable differential gain, and common-mode rejection.

**Challenge:** identify why a simple difference amplifier can load a bridge sensor while an instrumentation amplifier does not.

---

## Lesson 12 — Virtual Ground and Mid-Supply References

Create a half-supply reference with a divider, then buffer it. Distinguish a signal reference from a power ground and explain current-return limitations.

**Challenge:** design a 2.5 V reference from 5 V that can source and sink small AC currents without the divider moving significantly.