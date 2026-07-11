# Part II — Impedance and Frequency Response

## Lesson 10 — Resistor Impedance

For an ideal resistor:

$$Z_R=R$$

Voltage and current are in phase at every frequency. Run an AC sweep of a resistor and confirm constant magnitude and 0° phase.

```spice
V1 IN 0 AC 1
R1 IN 0 1k
.ac dec 100 10 1Meg
```

**Challenge:** explain why a real resistor eventually stops behaving ideally.

---

## Lesson 11 — Capacitive Reactance

For an ideal capacitor:

$$Z_C=\frac1{j\omega C}=-j\frac1{\omega C}$$

$$X_C=\frac1{2\pi fC}$$

Sweep frequency for 1 µF. Observe impedance falling 10× per frequency decade and phase near −90°.

**Challenge:** find frequency where 1 µF has 1 kΩ reactance.

---

## Lesson 12 — Inductive Reactance

For an ideal inductor:

$$Z_L=j\omega L$$

$$X_L=2\pi fL$$

Sweep 10 mH. Observe impedance rising 10× per frequency decade and phase near +90°.

**Challenge:** find frequency where 10 mH has 1 kΩ reactance.

---

## Lesson 13 — Series RC Circuits

For series RC:

$$Z=R+\frac1{j\omega C}$$

At low frequency the capacitor dominates; at high frequency the resistor dominates. Plot total current magnitude and phase.

Use R = 1 kΩ and C = 100 nF. Identify frequency where $|X_C|=R$.

**Challenge:** calculate total impedance magnitude and phase at one tenth, equal to, and ten times the corner frequency.

---

## Lesson 14 — Parallel RC Circuits

Use admittance:

$$Y=\frac1R+j\omega C$$

Parallel analysis is easier by adding branch admittances. Observe total current increasing with frequency while resistor current remains constant.

**Challenge:** determine total current magnitude and phase for 1 kΩ in parallel with 100 nF at 1 kHz.

---

## Lesson 15 — Series RL Circuits

For series RL:

$$Z=R+j\omega L$$

At low frequency R dominates; at high frequency L dominates. Current increasingly lags source voltage.

Use R = 100 Ω and L = 10 mH. Locate the frequency where $X_L=R$.

**Challenge:** compute current phase at 100 Hz, corner frequency, and 10 kHz.

---

## Lesson 16 — Parallel RL Circuits

Analyze branch currents and total admittance. Inductor current is large at low frequency and falls as frequency rises. Resistor current remains frequency-independent for fixed voltage.

**Challenge:** choose L so an inductor branch carries the same current magnitude as a 1 kΩ branch at 2 kHz.

---

## Lesson 17 — AC Sweeps in KiCad 10

Configure an AC source magnitude of 1 V and use:

```spice
.ac dec 100 1 10Meg
```

Explain points per decade, logarithmic axes, source AC magnitude versus transient waveform settings, and why an AC analysis linearizes nonlinear devices around the operating point.

**Validation:** inspect the generated netlist and confirm the source includes its AC value and the directive is exported.

**Challenge:** choose sweep limits that reveal both a 100 Hz and 1 MHz corner without wasting excessive points.

---

## Lesson 18 — Bode Magnitude, Phase, and Decibels

Voltage gain:

$$A_V=\frac{V_{OUT}}{V_{IN}}$$

Magnitude in decibels:

$$A_{dB}=20\log_{10}|A_V|$$

Power ratio uses $10\log_{10}$. Practice −3 dB, −20 dB, +6 dB, and +40 dB interpretations.

Plot `db(V(OUT)/V(IN))` and phase. Explain why −3 dB corresponds to amplitude $1/\sqrt2$ and half power for equal impedances.

**Challenge:** convert gain 0.1, 0.5, 2, and 100 into decibels.