# Part III — Active Filters and Signal-Processing Blocks

## Lesson 27 — Op-Amp Noise Sources

Model input-voltage noise, input-current noise, resistor thermal noise, and output-noise density. Integrate noise over bandwidth.

**Challenge:** compare total input-referred noise for 1 kΩ and 1 MΩ source resistances.

---

## Lesson 28 — Active Low-Pass Filters

Start with a buffered RC filter, then add gain. Compare passband gain, corner frequency, loading, and op-amp GBW requirements.

**Challenge:** design a 1 kHz, gain-2 active low-pass with standard values.

---

## Lesson 29 — Active High-Pass Filters

Design an AC-coupled stage with controlled low-frequency corner and gain. Include input bias-current return path.

**Challenge:** create a 10 Hz high-pass with gain 5 while avoiding startup saturation.

---

## Lesson 30 — Sallen–Key Filters

Build second-order low-pass and high-pass Sallen–Key stages. Study Q, component ratios, gain sensitivity, and op-amp bandwidth.

**Challenge:** design a Butterworth 2 kHz low-pass and verify −3 dB corner and transient overshoot.

---

## Lesson 31 — Multiple-Feedback Filters

Build a multiple-feedback band-pass or low-pass stage. Compare input impedance, component sensitivity, and inversion with Sallen–Key.

**Challenge:** design a 1 kHz band-pass with Q=5 and document actual standard-value response.

---

## Lesson 32 — Integrators

For the ideal inverting integrator:

$$V_{OUT}(t)=-\frac1{RC}\int V_{IN}(t)dt$$

Add a parallel feedback resistor to prevent DC saturation. Apply square and sine inputs.

**Challenge:** convert a 1 kHz square wave into an approximately triangular waveform without rail saturation.

---

## Lesson 33 — Differentiators

For the ideal differentiator:

$$V_{OUT}=-RC\frac{dV_{IN}}{dt}$$

Add practical bandwidth-limiting resistors and capacitors to control noise and instability.

**Challenge:** design an edge detector that avoids excessive response to 1 MHz noise.

---

## Lesson 34 — Precision Rectifiers

Use an op-amp and diode to reduce the ordinary diode-drop error for small signals. Study recovery when the op-amp saturates.

**Challenge:** rectify a 100 mV peak sine and compare ordinary versus precision diode circuits.

---

## Lesson 35 — Peak Detectors and Envelope Followers

Combine precision rectification with storage capacitor and controlled discharge. Evaluate droop, acquisition time, source frequency, diode leakage, and op-amp output-current limits.

**Challenge:** track an audio envelope with 5 ms attack and 100 ms release.