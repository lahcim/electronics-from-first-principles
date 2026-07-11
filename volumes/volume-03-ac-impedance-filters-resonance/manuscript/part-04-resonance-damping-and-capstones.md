# Part IV — Resonance, Damping, and Design Capstones

## Lesson 28 — RLC Natural Response

Combine L and C and observe energy exchange between electric and magnetic fields. With resistance present, oscillation decays.

For an ideal LC system:

$$\omega_0=\frac1{\sqrt{LC}}$$

$$f_0=\frac1{2\pi\sqrt{LC}}$$

Charge a capacitor, disconnect the source, and let it exchange energy with an inductor. Add 0 Ω, 10 Ω, 100 Ω, and 1 kΩ resistance and compare decay.

**Challenge:** choose L and C for approximately 10 kHz natural frequency.

---

## Lesson 29 — Series Resonance

For series RLC, inductive and capacitive reactances cancel at resonance:

$$X_L=X_C$$

Total impedance becomes approximately R, current reaches a maximum, and voltages across L and C can greatly exceed the source voltage.

Use R = 10 Ω, L = 10 mH, and C chosen near 1 kHz resonance. Sweep frequency and plot current, component voltages, and phase.

**Challenge:** explain why large internal voltages do not violate KVL.

---

## Lesson 30 — Parallel Resonance

In a parallel resonant network, inductor and capacitor branch currents can be large and opposite while source current becomes small near resonance.

Plot source current, branch currents, input impedance, and phase. Add realistic inductor DCR and capacitor ESR to limit impedance.

**Challenge:** compare ideal and lossy parallel resonance and identify which loss dominates Q.

---

## Lesson 31 — Quality Factor

Quality factor compares stored energy with energy lost per cycle. For a simple series RLC:

$$Q=\frac{\omega_0L}{R}=\frac1{\omega_0CR}$$

Higher Q produces a narrower, taller resonance and slower transient decay.

Sweep R and extract bandwidth. Verify:

$$Q\approx\frac{f_0}{BW}$$

for a lightly damped second-order system.

**Challenge:** select R for Q = 5 with L = 10 mH and resonance at 1 kHz.

---

## Lesson 32 — Bandwidth and Damping

Classify second-order response as underdamped, critically damped, or overdamped. Relate damping ratio $\zeta$ to Q:

$$Q=\frac1{2\zeta}$$

Apply a step and compare overshoot, ringing, rise time, and settling time. Then compare the same circuits in AC analysis.

**Challenge:** identify damping ratio from measured percent overshoot using a reference equation or numerical fit.

---

## Lesson 33 — Component Tolerance Near Resonance

Resonant frequency depends on both L and C:

$$f_0=\frac1{2\pi\sqrt{LC}}$$

Evaluate tolerance corners. Maximum frequency occurs with minimum L and minimum C; minimum frequency occurs with maximum L and maximum C.

Also vary ESR and DCR because Q can change more than center frequency.

Use `.step` directives for L, C, and R corners. Distinguish guaranteed corner analysis from Monte Carlo yield analysis.

**Challenge:** calculate worst-case resonant-frequency range for L ±10% and C ±5%.

---

## Lesson 34 — Real Components at Resonance

Replace ideal components with:

- capacitor ESR, ESL, and leakage;
- inductor DCR, parallel core-loss resistance, and parasitic capacitance;
- source resistance;
- load resistance.

Observe multiple resonances and self-resonance. Explain why an inductor can behave capacitively above its self-resonant frequency and a capacitor inductively above its own.

**Challenge:** determine the usable frequency range of a real LC network from model data rather than nominal L and C alone.

---

## Lesson 35 — Passive Audio Crossover Capstone

Design a first-order two-way passive crossover for an educational 8 Ω woofer and 8 Ω tweeter at approximately 2.5 kHz.

For the low-pass series inductor:

$$L\approx\frac{R}{2\pi f_c}$$

For the high-pass series capacitor:

$$C\approx\frac1{2\pi Rf_c}$$

Start with ideal 8 Ω loads, then replace them with frequency-dependent speaker impedance models. Include inductor DCR, capacitor ESR, source resistance, and driver sensitivity mismatch.

Simulate:

- woofer voltage response;
- tweeter voltage response;
- summed electrical response;
- amplifier load impedance;
- component current and power;
- effect of reversing tweeter polarity;
- value tolerances.

**Acceptance criteria:**

- documented nominal crossover calculation;
- actual −3 dB frequencies measured;
- no amplifier-load magnitude below a selected safe limit;
- component voltage/current ratings justified;
- tolerance and DCR effects documented;
- explanation of why a real acoustic crossover requires driver response, phase, geometry, and measurement data beyond this electrical model.

## Volume 3 Completion Review

After this volume, the learner should be able to:

- interpret frequency, period, phase, average, peak, and RMS correctly;
- use complex impedance and phasors for steady-state sinusoidal analysis;
- configure KiCad AC sweeps and read Bode plots;
- design first-order passive filters while including source and load impedance;
- predict resonance, Q, bandwidth, damping, and tolerance effects;
- distinguish ideal L/C behavior from real self-resonance and loss;
- perform an evidence-based passive-filter design review.