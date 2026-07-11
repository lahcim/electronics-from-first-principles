# Part I — Feedback and Oscillator Foundations

## Lesson 1 — Positive and Negative Feedback

Compare feedback polarity by perturbing an amplifier output. Negative feedback opposes the disturbance; positive feedback reinforces it.

**Challenge:** classify feedback polarity in several inverting and non-inverting loops.

---

## Lesson 2 — Loop Gain

Define loop gain as gain accumulated around the loop after breaking it at a suitable point. Explain magnitude and phase.

**Challenge:** determine whether a loop with magnitude 0.8 and phase 0° grows or decays.

---

## Lesson 3 — Barkhausen Criterion

At sustained sinusoidal oscillation, the loop has approximately unity magnitude and total phase shift equivalent to 0° modulo 360°:

$$|A\beta|=1,\qquad \angle A\beta=360^\circ n$$

Explain that this is a steady-state criterion, not a complete startup guarantee.

**Challenge:** distinguish startup loop gain from settled loop gain.

---

## Lesson 4 — Startup from Noise and Initial Conditions

Real oscillators start from thermal noise, device noise, supply transients, or mismatch. Ideal SPICE circuits may remain at a perfectly symmetric equilibrium.

Compare normal transient, `startup`, `uic`, and explicit initial conditions.

```spice
.tran 10n 10m startup
.ic V(N1)=1m
```

**Challenge:** justify the least artificial startup aid for a given oscillator.

---

## Lesson 5 — Amplitude Growth and Limiting

If startup loop gain exceeds one, amplitude grows until nonlinearity reduces effective loop gain to one. Explore clipping, transistor compression, lamp/JFET control, diode limiting, and automatic gain control.

**Challenge:** explain why an oscillator with loop gain permanently above one cannot remain sinusoidal.

---

## Lesson 6 — Phase Shift Through Networks

Plot phase through one RC pole, cascaded poles, resonant networks, and inverting amplifiers. Show how total loop phase reaches the regenerative condition at selected frequencies.

**Challenge:** calculate the phase contribution required from a feedback network around an inverting amplifier.

---

## Lesson 7 — Frequency Selection

Compare broad positive feedback with selective feedback. A frequency-selective network makes one frequency satisfy loop conditions more strongly than others.

**Challenge:** explain how Q influences frequency selectivity and startup time.

---

## Lesson 8 — Measuring an Oscillator

Measure frequency, amplitude, startup time, duty cycle, distortion, frequency drift, and supply current. Introduce FFT cautiously and distinguish simulator windowing artifacts from circuit harmonics.

**Challenge:** define objective acceptance criteria for a 1 kHz oscillator.