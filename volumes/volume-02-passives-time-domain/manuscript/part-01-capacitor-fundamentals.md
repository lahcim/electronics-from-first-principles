# Part I — Capacitor Fundamentals

## Lesson 1 — What a Capacitor Physically Stores

**Goal:** understand that energy resides in the electric field, not as electrons trapped inside the dielectric.

Build two conductive plates separated by an insulator conceptually, then model the component as `C1=1uF`. Charge it from 5 V through 1 kΩ.

Key relationships:

$$Q=CV$$

$$E=\frac12CV^2$$

**KiCad experiment:** use a pulse source, R1, and C1. Add:

```spice
.tran 10u 10m startup
```

Observe `V(CAP)`, `I(R1)`, and capacitor energy. Voltage rises while current falls because the growing capacitor voltage reduces the resistor voltage.

**Change:** double capacitance. Observe twice the stored charge at the same voltage and twice the energy, while charging takes twice as long.

**Challenge:** choose capacitance that stores 12.5 mJ at 5 V. Validate with simulation energy.

---

## Lesson 2 — Capacitance, Charge, and Voltage

**Goal:** treat capacitance as charge required per volt.

Drive a capacitor with an ideal current source of 1 mA. For 1 µF:

$$\frac{dV}{dt}=\frac{I}{C}=1000\text{ V/s}$$

Add:

```spice
.tran 10u 5m uic
.ic V(VCAP)=0
```

Observe a linear voltage ramp. Change C to 10 µF and see the slope become ten times smaller. Reverse current polarity and observe a downward ramp.

**Why:** constant current adds equal charge every second; voltage is charge divided by capacitance.

**Challenge:** create a 0–3 V ramp lasting 30 ms using a 100 µA current source.

---

## Lesson 3 — Capacitor Current and Changing Voltage

**Goal:** understand:

$$i_C=C\frac{dv_C}{dt}$$

Apply ramps with different slopes to the same capacitor. A faster voltage change requires more current. Apply the same ramp to 100 nF, 1 µF, and 10 µF.

Use a piecewise-linear source:

```spice
V1 IN 0 PWL(0 0 1m 0 6m 5 10m 5)
.tran 10u 10m
```

Observe that current is nearly constant during the ramp and near zero during flat regions.

**Challenge:** predict capacitor current for a 2 V/ms ramp through 4.7 µF, then verify.

---

## Lesson 4 — Why Capacitor Voltage Cannot Jump Instantly

An instantaneous voltage change would require infinite $dv/dt$, and therefore infinite current for nonzero capacitance.

Connect an ideal voltage source directly to an uncharged ideal capacitor. SPICE may report extreme impulse current or convergence difficulty because the idealized circuit demands nonphysical behavior.

Add 1 Ω, 10 Ω, 100 Ω, and 1 kΩ series resistance. Observe decreasing peak current and slower rise.

**Engineering lesson:** every real source, wire, capacitor, and switch has resistance and inductance. Include enough realism to keep the model physically meaningful.

**Challenge:** limit initial current below 100 mA while charging 100 µF from 12 V.

---

## Lesson 5 — RC Charging from a Voltage Step

For a step from 0 to $V_S$:

$$V_C(t)=V_S\left(1-e^{-t/RC}\right)$$

$$I(t)=\frac{V_S}{R}e^{-t/RC}$$

Use R = 10 kΩ, C = 1 µF, so $\tau=10$ ms.

```spice
V1 IN 0 PULSE(0 5 0 1u 1u 100m 200m)
.tran 20u 60m startup
```

Observe approximately 63.2% of final voltage at one time constant, 86.5% at two, 95.0% at three, and 99.3% at five.

**Challenge:** design a circuit reaching 4 V from a 5 V step in 20 ms.

---

## Lesson 6 — RC Discharging

For a capacitor initially at $V_0$ discharging through R:

$$V_C(t)=V_0e^{-t/RC}$$

Set:

```spice
.ic V(VCAP)=5
.tran 20u 60m uic
```

Use 10 kΩ and 1 µF. Observe 36.8% remaining after one time constant.

Measure resistor current sign. It reverses relative to charging because stored energy now leaves the capacitor and is dissipated in the resistor.

**Challenge:** choose R so 100 µF falls from 12 V to 1 V in 2 seconds.

---

## Lesson 7 — The RC Time Constant

The time constant is not “time to fully charge.” An exponential approaches its final value asymptotically.

Sweep R and C separately. Confirm that multiplying either by ten multiplies all characteristic times by ten.

Use `.meas` directives:

```spice
.meas tran T63 WHEN V(VCAP)=3.1606 RISE=1
.meas tran T90 WHEN V(VCAP)=4.5 RISE=1
```

For a 5 V step, verify $T_{63}\approx RC$ and $T_{90}\approx2.303RC$.

**Challenge:** derive and simulate time to reach any target fraction $f$:

$$t=-RC\ln(1-f)$$

---

## Lesson 8 — Initial Conditions in SPICE

Compare these approaches:

- normal operating-point calculation;
- `.tran ... startup`;
- `.ic V(node)=value`;
- `.tran ... uic`;
- capacitor `IC=` parameter.

Explain that normal transient simulation first finds a DC operating point. That may pre-charge capacitors before time zero. `startup` ramps independent sources from zero; `uic` skips the operating-point solution and must be used carefully.

Create a circuit where normal `.tran` begins at 5 V but `startup` begins at 0 V.

**Challenge:** document which initialization mode is correct for a power-on-reset circuit and why.

---

## Lesson 9 — Energy Stored in an Electric Field

Use:

$$E_C=\frac12CV^2$$

Plot capacitor energy during charging and resistor power. Integrate source and resistor power:

```spice
.meas tran ESRC INTEG -V(IN)*I(V1) FROM=0 TO=100m
.meas tran ER INTEG V(IN,VCAP)*I(R1) FROM=0 TO=100m
```

For charging from an ideal voltage source through a resistor, approximately half the energy delivered by the source is stored and half is dissipated, independent of R. R changes how quickly the loss occurs, not the total loss in this ideal RC charge.

**Challenge:** verify the 50% result for three resistor values.

---

## Lesson 10 — Series and Parallel Capacitors

Parallel capacitors add:

$$C_{EQ}=C_1+C_2+\cdots$$

Series capacitors combine reciprocally:

$$\frac1{C_{EQ}}=\frac1{C_1}+\frac1{C_2}+\cdots$$

Simulate two capacitors in parallel, then series. In series, equal charge appears on each capacitor, but voltage divides inversely with capacitance.

Use 1 µF and 2 µF in series across 6 V. Predict 4 V across 1 µF and 2 V across 2 µF.

**Challenge:** create a 750 nF equivalent using only 1 µF and 3 µF capacitors, and verify voltage distribution and stored energy.
