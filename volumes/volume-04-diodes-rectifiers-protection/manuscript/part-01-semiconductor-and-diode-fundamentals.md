# Part I — Semiconductor and Diode Fundamentals

## Lesson 1 — Conductors, Insulators, and Semiconductors

Compare materials by the availability of mobile charge carriers. Introduce valence and conduction bands qualitatively, without requiring quantum mechanics.

Use a resistor sweep to represent many orders of magnitude of conductivity and observe current under the same applied voltage.

**Challenge:** explain why silicon can act more like an insulator or a conductor depending on doping, temperature, and electric field.

---

## Lesson 2 — Electrons, Holes, and Doping

Introduce intrinsic silicon, donor atoms, acceptor atoms, majority carriers, and minority carriers. Clarify that a hole is a useful description of missing bond charge, not a separate particle stored in a container.

**Experiment:** compare idealized temperature-dependent leakage currents using parameter sweeps.

**Challenge:** predict majority carrier type for n-type and p-type material.

---

## Lesson 3 — The PN Junction

Bring p-type and n-type material together. Explain diffusion, recombination, fixed ions, and formation of the depletion region.

Relate the built-in electric field to the barrier opposing further diffusion.

**Challenge:** explain why a PN junction reaches equilibrium rather than allowing charge to diffuse forever.

---

## Lesson 4 — Forward and Reverse Bias

Forward bias lowers the junction barrier and allows substantial carrier injection. Reverse bias widens the depletion region and leaves only small leakage until breakdown.

Use a diode with series resistor and sweep source voltage from −10 V to +1 V.

```spice
.dc V1 -10 1 0.01
```

Plot diode current on linear and logarithmic scales.

**Challenge:** explain why diode current is not exactly zero under reverse bias.

---

## Lesson 5 — The Diode Exponential Equation

Introduce the Shockley model:

$$I_D=I_S\left(e^{V_D/(nV_T)}-1\right)$$

Discuss saturation current, ideality factor, thermal voltage, and why a small voltage increase can produce a large current increase.

Sweep temperature and observe curve movement.

**Challenge:** estimate current ratio for a 60 mV forward-voltage increase near room temperature for an ideality factor near one.

---

## Lesson 6 — Constant-Drop, Piecewise-Linear, and SPICE Models

Compare three models:

- ideal diode;
- fixed 0.7 V drop;
- exponential model with series resistance.

Build the same resistor-diode circuit with each. Observe where the simplified models are useful and where they fail.

**Challenge:** choose the simplest model adequate for estimating an LED resistor, reverse leakage, and switching recovery.

---

## Lesson 7 — Diode I–V Curves and Dynamic Resistance

At an operating point, the small-signal slope is approximately:

$$r_d\approx\frac{nV_T}{I_D}$$

Apply a small AC signal on top of DC bias. Compare incremental voltage/current with the local slope of the DC curve.

**Challenge:** estimate dynamic resistance at 1 mA and 10 mA.

---

## Lesson 8 — Temperature Behavior

Silicon forward voltage typically decreases as junction temperature rises at fixed current, while leakage rises strongly.

Bias a diode with a current source and sweep temperature:

```spice
.temp -40 25 85 125
.op
```

Explain why exact temperature coefficients depend on device, current, and model.

**Challenge:** discuss thermal runaway risk when multiple diodes share current poorly.

---

## Lesson 9 — Diode Power and Thermal Limits

Calculate:

$$P_D=V_DI_D$$

Relate junction temperature to ambient using thermal resistance:

$$T_J=T_A+P_D\theta_{JA}$$

Sweep current through a diode model and estimate junction rise. Explain average, peak, repetitive, and surge ratings.

**Challenge:** determine whether a diode dissipating 0.8 W can remain below 125°C at 50°C ambient with 80°C/W thermal resistance.