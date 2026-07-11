# Part II — Real Capacitors and Practical Selection

## Lesson 11 — Capacitor Voltage Division

Two series capacitors carry equal charge, so smaller capacitance receives larger voltage. Build 1 µF and 4.7 µF across 10 V. Predict and measure both voltages.

Then add 10 MΩ leakage resistors in parallel with each capacitor. Observe that long-term DC division is determined by leakage, while initial division is dominated by capacitance.

**Challenge:** design balancing resistors for two equal electrolytics in series across 100 V while limiting balancing current below 200 µA.

---

## Lesson 12 — Leakage and Insulation Resistance

Model a real capacitor as ideal C in parallel with leakage resistance. Charge 100 µF to 5 V, disconnect the source, and compare 1 MΩ, 10 MΩ, and 100 MΩ leakage.

The discharge time constant is $R_{LEAK}C$. Real leakage is often nonlinear, temperature-dependent, voltage-dependent, and time-dependent.

**Observe:** a large electrolytic may lose charge much faster than a small film capacitor despite greater capacitance.

**Challenge:** infer effective leakage resistance from a measured voltage decay.

---

## Lesson 13 — Equivalent Series Resistance

Model ESR as a resistor in series with ideal C. Apply a current step. The capacitor voltage shows an immediate jump of:

$$\Delta V=I\cdot ESR$$

followed by the slower capacitive ramp.

Use C = 100 µF, current step = 1 A, and ESR values 10 mΩ, 100 mΩ, and 1 Ω. Observe 10 mV, 100 mV, and 1 V instantaneous steps.

**Challenge:** determine maximum ESR for less than 50 mV step at 2 A.

---

## Lesson 14 — Equivalent Series Inductance

Add ESL in series with ESR and C. Apply a fast current edge. Observe voltage spike:

$$V_L=L\frac{di}{dt}$$

Faster edges produce larger spikes even when average current is unchanged. This explains why package geometry and placement matter.

Run an AC sweep and identify self-resonant frequency where capacitive and inductive reactances cancel.

**Challenge:** compare a 100 nF capacitor with 0.5 nH and 5 nH ESL.

---

## Lesson 15 — Real Capacitor Frequency Behavior

Use the RLC equivalent model. Below self-resonance the part is capacitive; at resonance impedance is near ESR; above resonance it behaves inductively.

```spice
.ac dec 100 10 1G
```

Plot impedance magnitude and phase. Compare 100 nF, 1 µF, and 10 µF models with realistic ESR/ESL.

**Observation:** the largest capacitance is not automatically the best high-frequency bypass.

**Challenge:** choose a capacitor combination covering low and high frequency current demands.

---

## Lesson 16 — Ceramic Capacitor DC-Bias Loss

A Class II ceramic capacitor can lose substantial effective capacitance under applied DC voltage. Model a nominal 10 µF part as 10 µF at 0 V, 6 µF at 3.3 V, and 3 µF at 5 V.

Re-run an RC transient and observe shortened time constant and increased ripple.

**Engineering lesson:** package size, dielectric class, voltage rating, and applied bias determine usable capacitance.

**Challenge:** determine nominal capacitance needed to guarantee at least 8 µF at operating bias.

---

## Lesson 17 — Electrolytic Polarity and Ripple Current

Explain why aluminum electrolytics are polarized and why reverse voltage can damage the dielectric. Model ripple current through ESR and calculate heating:

$$P_{ESR}=I_{RMS}^2ESR$$

Apply sinusoidal ripple current to 470 µF with ESR = 0.2 Ω. Sweep RMS current and estimate loss.

**Challenge:** select an ESR limit so 0.5 A RMS ripple produces less than 0.25 W internal heating.

---

## Lesson 18 — Tolerance and Temperature Effects

Step capacitor value through tolerance corners and repeat the RC timing experiment. Include temperature-dependent capacitance and ESR scenarios.

For a nominal 10 µF part with −20/+80% tolerance, calculate the full timing range. Explain why some capacitor technologies are poor for precision timers.

**Challenge:** design a delay whose worst-case time remains within ±10%; decide whether capacitor tolerance alone permits it.

---

## Lesson 19 — Choosing Capacitor Technology

Compare:

- C0G/NP0 ceramic: stable, low loss, small values;
- X7R/X5R ceramic: dense, bias-sensitive;
- film: stable, low loss, larger;
- aluminum electrolytic: high capacitance, polarized, finite life;
- polymer: low ESR, higher leakage/cost;
- tantalum: dense, polarized, surge-sensitive;
- supercapacitor: enormous capacitance, high leakage and ESR.

For each candidate, document capacitance, voltage, bias behavior, ESR, ripple, tolerance, temperature, lifetime, polarity, package, and cost.

**Challenge:** choose technologies for crystal loading, MCU decoupling, buck output, audio coupling, and energy hold-up.

---

## Lesson 20 — Capacitor Bank Design Challenge

Design a 5 V rail capacitor bank that must:

- supply a 300 mA load step for 2 ms;
- keep droop below 250 mV before the regulator responds;
- keep instantaneous ESR step below 50 mV;
- operate from −20°C to 70°C;
- tolerate 5.5 V maximum rail;
- account for ceramic DC-bias loss.

Use:

$$C\ge\frac{I\Delta t}{\Delta V_C}$$

separating ESR droop from capacitive droop. Create at least two architectures: all-ceramic and ceramic-plus-bulk. Simulate current pulse, ESR, ESL, tolerance, and bias corners. Provide a review table explaining why multiple capacitors can outperform one nominally equivalent capacitor.