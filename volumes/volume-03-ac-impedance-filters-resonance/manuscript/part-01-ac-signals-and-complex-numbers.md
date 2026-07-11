# Part I — AC Signals, RMS, Phase, and Complex Numbers

## Lesson 1 — Period, Frequency, and Repetition

Learn the relationship:

$$f=\frac1T$$

Generate sine, square, and triangle waves with equal frequency. Measure period using cursors and `.meas`.

```spice
V1 OUT 0 SIN(0 1 1k)
.tran 1u 5m
.meas tran TPER TRIG V(OUT) VAL=0 RISE=2 TARG V(OUT) VAL=0 RISE=3
```

Change frequency from 100 Hz to 10 kHz and predict the period before running.

**Challenge:** configure a source with 25 µs period and verify frequency.

---

## Lesson 2 — Amplitude, Offset, Peak, and Peak-to-Peak

Distinguish:

- DC offset;
- peak amplitude;
- negative peak;
- peak-to-peak value;
- instantaneous value.

Simulate `SIN(2 1.5 1k)`. Predict maximum 3.5 V, minimum 0.5 V, and 3 V peak-to-peak.

**Observe:** changing offset moves the waveform without changing AC amplitude.

**Challenge:** create a sine wave spanning 0.2–3.0 V.

---

## Lesson 3 — Phase and Time Shift

For a sine wave:

$$v(t)=V_P\sin(2\pi ft+\phi)$$

A time shift corresponds to:

$$\phi=360^\circ\frac{\Delta t}{T}$$

Plot two 1 kHz sine waves separated by 90°. Measure 250 µs shift.

**Challenge:** create a 30° lag at 5 kHz and calculate the required delay.

---

## Lesson 4 — Average Value and Why a Symmetric Sine Averages to Zero

Integrate a sine over complete and incomplete cycles. A symmetric sine has zero average over an integer number of periods, but its instantaneous power in a resistor is not zero.

Use:

```spice
.meas tran VAVG AVG V(OUT) FROM=1m TO=11m
```

Compare sine, half-wave-rectified sine, and offset sine.

**Challenge:** predict average of a 2 V peak half-wave-rectified sine.

---

## Lesson 5 — RMS Voltage and Current

RMS is the DC-equivalent heating value. For a sine:

$$V_{RMS}=\frac{V_P}{\sqrt2}$$

Apply a 10 V peak sine to 1 kΩ. Compare resistor average power with 7.071 V DC.

```spice
.meas tran VRMS RMS V(IN) FROM=10m TO=110m
.meas tran PAVG AVG V(IN)*I(R1) FROM=10m TO=110m
```

**Challenge:** find peak voltage corresponding to 120 V RMS.

---

## Lesson 6 — RMS of Non-Sinusoidal Waveforms

Calculate RMS for square, pulse, and triangle waves. For a unipolar pulse of amplitude V and duty cycle D:

$$V_{RMS}=V\sqrt D$$

Sweep duty cycle and verify resistor heating.

**Challenge:** determine RMS of a 12 V pulse waveform at 25% duty cycle.

---

## Lesson 7 — Instantaneous and Average AC Power

Use:

$$p(t)=v(t)i(t)$$

For a pure resistor, voltage and current are in phase and average power is positive. Plot instantaneous power, which oscillates at twice the signal frequency.

**Challenge:** explain why power never becomes negative for an ideal resistor driven by a sine.

---

## Lesson 8 — Complex Numbers for Circuit Analysis

Introduce rectangular and polar forms:

$$z=a+jb$$

$$|z|=\sqrt{a^2+b^2}$$

$$\angle z=\tan^{-1}(b/a)$$

Practice adding in rectangular form and multiplying/dividing in polar form. Connect the real axis to in-phase behavior and imaginary axis to quadrature behavior.

**Challenge:** convert $3+j4$ to polar form and back.

---

## Lesson 9 — Phasors as Rotating Quantities

Represent a steady-state sine by magnitude and phase rather than tracking every instant. Explain that phasor analysis applies after transients have died out and at one frequency at a time.

Add two equal-amplitude sine phasors at 0° and 90°. Predict resultant magnitude $\sqrt2$ and phase 45°.

**Challenge:** determine the sum of 5∠0° and 5∠180° and explain cancellation.
