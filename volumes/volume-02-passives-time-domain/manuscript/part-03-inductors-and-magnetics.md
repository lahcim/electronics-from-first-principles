# Part III — Inductors, Magnetic Energy, and Coupled Components

## Lesson 21 — What an Inductor Physically Stores

An inductor stores energy in a magnetic field created by current.

$$E_L=\frac12LI^2$$

Build a 10 mH inductor in series with 100 Ω and a 5 V step. Observe current rising rather than jumping instantly.

**Challenge:** calculate current required to store 25 mJ in 20 mH.

---

## Lesson 22 — Magnetic Fields and Current

Explore how turns, core permeability, geometry, and air gaps influence inductance. Use ideal L values to represent these physical changes, then compare current ramp slopes.

Explain that inductance is flux linkage per current and that real components also have winding resistance, parasitic capacitance, and core limits.

**Challenge:** explain qualitatively why adding an air gap can reduce inductance but increase usable current before saturation.

---

## Lesson 23 — Inductor Voltage and Changing Current

Use:

$$v_L=L\frac{di_L}{dt}$$

Apply a constant voltage to an ideal inductor. Current ramps linearly:

$$\frac{di}{dt}=\frac{V}{L}$$

Simulate 1 V across 1 mH, 10 mH, and 100 mH. Observe 1000, 100, and 10 A/s slopes.

**Challenge:** determine voltage required to ramp 2 A in 5 ms through 4.7 mH.

---

## Lesson 24 — Why Inductor Current Cannot Jump Instantly

An instantaneous current change would require infinite voltage for nonzero inductance. Open an energized inductor in an ideal simulation and observe extreme voltage or convergence trouble.

Add winding resistance, a flyback diode, a TVS-like clamp, or an RC snubber and compare peak voltage and decay time.

**Challenge:** explain why a lower clamp voltage produces slower current decay.

---

## Lesson 25 — RL Current Rise

For a series RL step:

$$i(t)=\frac{V}{R}\left(1-e^{-tR/L}\right)$$

with:

$$\tau=\frac{L}{R}$$

Use L = 10 mH, R = 100 Ω, and V = 5 V, giving $\tau=100\ \mu s$ and final current 50 mA.

```spice
.tran 1u 600u startup
```

Measure current at one, three, and five time constants.

---

## Lesson 26 — RL Current Decay

Initialize an inductor current and let it decay through a resistor:

$$i(t)=I_0e^{-tR/L}$$

Use:

```spice
.ic I(L1)=50m
.tran 1u 600u uic
```

Observe resistor polarity and power while magnetic energy becomes heat.

**Challenge:** choose resistance to reduce 1 A to 100 mA in 20 ms with 50 mH.

---

## Lesson 27 — Inductive Kickback

Drive a relay-like coil with a switch model. Compare turn-off without protection, with a diode, with a 24 V clamp, and with an RC snubber.

Observe tradeoffs:

- flyback diode: low voltage, slow release;
- higher-voltage clamp: faster release, greater switch stress;
- snubber: tunable damping and energy distribution.

**Challenge:** estimate stored energy and verify protection components can absorb it.

---

## Lesson 28 — Energy Stored in a Magnetic Field

Plot $\frac12Li^2$ during energization and decay. Integrate source and resistor power. Confirm energy conservation within numerical precision.

Compare charging an inductor through different resistances. Unlike capacitor charging from a fixed voltage to a fixed final voltage, the final current and stored energy depend on resistance.

**Challenge:** reconcile source energy, resistor loss, and final magnetic energy.

---

## Lesson 29 — Series and Parallel Inductors

For uncoupled inductors:

$$L_{SERIES}=L_1+L_2$$

$$\frac1{L_{PARALLEL}}=\frac1{L_1}+\frac1{L_2}$$

Simulate step response of 10 mH and 20 mH in both arrangements. Explain that magnetic coupling invalidates the simple equations.

**Challenge:** create 15 mH equivalent using available values and validate.

---

## Lesson 30 — Winding Resistance and Copper Loss

Add series DCR to the ideal inductor. Observe reduced steady-state current and copper loss:

$$P_{CU}=I_{RMS}^2R_{DCR}$$

Compare two inductors with equal L but different DCR. The lower-DCR part may be larger or more expensive.

**Challenge:** set maximum DCR for less than 0.5 W loss at 2 A RMS.

---

## Lesson 31 — Core Saturation

An ideal inductor has constant L. A real magnetic core loses incremental inductance as flux approaches saturation. Model L as lower above a current threshold using a behavioral approximation.

Observe that current slope accelerates after saturation:

$$\frac{di}{dt}=\frac{V}{L(i)}$$

**Challenge:** identify saturation onset from a simulated current waveform.

---

## Lesson 32 — Core Loss and Frequency

Model core loss with a parallel or frequency-dependent resistance. Explain hysteresis and eddy-current loss conceptually. Compare equal RMS current at different frequencies and discuss why loss cannot be inferred from DCR alone.

**Challenge:** build a loss budget separating copper loss and core loss.

---

## Lesson 33 — Inductor Current Ratings

Distinguish:

- saturation current;
- thermal current;
- RMS current;
- peak current;
- temperature rise;
- DCR tolerance.

Use a triangular current waveform to compute RMS and peak values. Verify whether both thermal and saturation limits are satisfied.

**Challenge:** select a minimum current rating for 1 A average with 0.8 A peak-to-peak ripple.

---

## Lesson 34 — Coupled Inductors and Mutual Inductance

Introduce:

$$M=k\sqrt{L_1L_2}$$

Use SPICE coupling:

```spice
K1 L1 L2 0.95
```

Apply a pulse to the primary and observe secondary polarity. Reverse one winding orientation and observe inverted voltage.

**Challenge:** predict secondary open-circuit voltage for a turns ratio and verify.

---

## Lesson 35 — Transformer Introduction

Treat an ideal transformer as coupled inductors with high coupling. Study turns ratio, reflected impedance, magnetizing current, leakage inductance, and winding resistance.

$$\frac{V_2}{V_1}=\frac{N_2}{N_1}$$

$$Z_{IN}=\left(\frac{N_1}{N_2}\right)^2Z_L$$

Simulate a 2:1 transformer with a resistive load. Then add finite magnetizing inductance and leakage.

**Challenge:** choose a load that reflects as 1 kΩ to the primary through a 4:1 turns ratio.