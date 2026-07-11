# Part IV — Crystal Oscillators and Precision Timing

## Lesson 26 — Crystal Physical Behavior

Explain piezoelectric coupling, mechanical deformation, stored mechanical energy, and why a crystal is a very high-Q resonator rather than an ideal frequency source.

**Challenge:** compare crystal Q with an ordinary LC resonator.

---

## Lesson 27 — Crystal Equivalent Circuit

Model motional resistance, inductance, capacitance, and shunt capacitance:

- $R_m$ — loss;
- $L_m$ and $C_m$ — mechanical resonance;
- $C_0$ — electrode and package capacitance.

**Challenge:** identify which parameters control loss, series resonance, and antiresonance.

---

## Lesson 28 — Series Resonance

At series resonance, motional reactances cancel and impedance approaches $R_m$.

$$f_s=\frac1{2\pi\sqrt{L_mC_m}}$$

Run a narrow AC sweep and measure the impedance minimum.

**Challenge:** calculate $f_s$ from a supplied equivalent model.

---

## Lesson 29 — Parallel Resonance and Antiresonance

Interaction between the motional branch and $C_0$ creates a nearby high-impedance resonance. Explain why “parallel resonance” does not mean a second independent mechanical mode.

**Challenge:** measure the separation between series and parallel resonances.

---

## Lesson 30 — Load Capacitance

A parallel-specified crystal frequency assumes a stated load capacitance. External capacitors and stray capacitance alter the operating point.

For two capacitors:

$$C_L\approx\frac{C_1C_2}{C_1+C_2}+C_{stray}$$

**Challenge:** choose equal capacitors for a specified $C_L$ while including 3 pF stray capacitance.

---

## Lesson 31 — Why Two Crystal Capacitors Are Used

In a Pierce oscillator, the two capacitors form the effective load from each crystal terminal to AC ground and participate in feedback and phase conditions. They are not simply “two capacitors whose sum equals a required value.”

Explore equal and unequal values, inverter input/output capacitance, and board parasitics.

**Challenge:** explain when unequal capacitors may be intentionally chosen.

---

## Lesson 32 — Pierce Oscillator

Build an inverting amplifier, bias resistor, crystal model, and load capacitors. Study DC bias, startup, settled amplitude, and frequency.

**Challenge:** identify which component provides DC bias and which network selects frequency.

---

## Lesson 33 — Discrete Transistor Crystal Oscillator

Use a BJT or FET gain stage instead of a logic inverter. Analyze bias, gain, feedback, collector/drain loading, and output coupling.

**Challenge:** design a low-amplitude transistor crystal oscillator without overdriving the crystal.

---

## Lesson 34 — MCU Crystal Oscillator Circuits

Interpret microcontroller datasheet parameters: supported frequency, crystal mode, transconductance, recommended load capacitance, ESR limit, drive level, and layout guidance.

**Challenge:** translate a crystal datasheet and MCU datasheet into component values and review checks.

---

## Lesson 35 — Crystal Startup Simulation

Crystal startup may require long simulation time because high Q means slow energy buildup. Use realistic models, small timestep relative to carrier period, startup conditions, and sufficient total duration.

**Challenge:** distinguish genuine no-start from insufficient simulation duration.

---

## Lesson 36 — Negative Resistance Criterion

View the active circuit from the crystal terminals. For reliable startup, the magnitude of presented negative resistance should exceed crystal ESR by a suitable margin.

**Challenge:** explain how excessive loading or insufficient transconductance reduces startup margin.

---

## Lesson 37 — Crystal Drive Level

Estimate crystal power from motional current and ESR. Excessive drive can cause aging, nonlinearity, frequency shift, or damage.

**Challenge:** verify a design stays below the crystal’s specified drive level.

---

## Lesson 38 — Frequency Pulling

Vary load capacitance and observe small frequency movement around the parallel operating point. Explain why a fixed crystal cannot be shifted arbitrarily by capacitors.

**Challenge:** quantify pulling range for a supplied model.

---

## Lesson 39 — Overtone Operation

Distinguish fundamental frequency, mechanical overtones, and electronic harmonic content. Explain why an overtone oscillator needs frequency-selective circuitry to favor the intended mode.

**Challenge:** explain why adding capacitors cannot simply make a fundamental crystal oscillate at exactly twice its frequency.

---

## Lesson 40 — Temperature, Aging, and Calibration

Study frequency tolerance, temperature curve, aging, load-capacitance error, soldering shift, and measurement uncertainty. Introduce TCXO, OCXO, and software calibration.

**Challenge:** build a frequency-error budget in ppm.