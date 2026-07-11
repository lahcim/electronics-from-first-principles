# Lesson 1 Design Challenge — Worked Solution

## Requirement summary

Design an RC circuit charged from a 5 V step that:

- stores 12.5 mJ ±2%;
- limits initial current to 20 mA or less;
- reaches 4.5 V within 1 second;
- uses an E24 resistor value;
- includes rating and energy checks.

## Step 1 — Find the required capacitance

Use:

$$E=\frac12CV^2$$

Solve for C:

$$C=\frac{2E}{V^2}$$

Substitute 12.5 mJ and 5 V:

$$C=\frac{2(12.5\times10^{-3})}{25}$$

$$C=1.0\times10^{-3}\text{ F}$$

Therefore:

$$C=1000\ \mu\text{F}$$

At 5 V, the stored charge is:

$$Q=CV=(1000\ \mu\text{F})(5\text{ V})=5\text{ mC}$$

## Step 2 — Limit initial current

Initial current is approximately:

$$I_0=\frac{V}{R}$$

To keep it at or below 20 mA:

$$R\ge\frac{5\text{ V}}{20\text{ mA}}=250\ \Omega$$

Choose the next convenient E24 value:

$$R=270\ \Omega$$

Then:

$$I_0=\frac{5}{270}=18.52\text{ mA}$$

This satisfies the current limit.

## Step 3 — Check charging time

Time constant:

$$\tau=RC=(270\ \Omega)(1000\ \mu\text{F})=0.27\text{ s}$$

The time to reach 90% of final voltage is:

$$t_{90}=-RC\ln(1-0.9)$$

$$t_{90}=2.3026RC$$

$$t_{90}=2.3026(0.27)=0.6217\text{ s}$$

Since 90% of 5 V is 4.5 V, the circuit reaches 4.5 V in approximately 0.622 seconds, which is below the 1-second limit.

## Step 4 — Check energy

$$E=\frac12(1000\times10^{-6})(5^2)=12.5\text{ mJ}$$

The ideal nominal value is exact.

A real electrolytic capacitor may have broad tolerance, so the physical component cannot guarantee ±2% stored energy unless a tight-tolerance capacitor or measured/selected part is used. The challenge's ±2% criterion can be satisfied by the nominal design and simulation, but the hardware note must explicitly identify capacitor tolerance as the dominant limitation.

## Step 5 — Check resistor power

Peak resistor power occurs initially:

$$P_{R,peak}=\frac{V^2}{R}=\frac{25}{270}=92.6\text{ mW}$$

This power decays exponentially and is not sustained indefinitely.

A 0.25 W resistor provides more than 2× margin over the peak value:

$$\frac{0.25}{0.0926}=2.70$$

A 0.25 W resistor is therefore a reasonable minimum choice under the simplified thermal assumptions.

## Step 6 — Check capacitor rating

The capacitor sees approximately 5 V steady-state. Use at least a 6.3 V-rated capacitor; 10 V or 16 V provides better voltage margin and is commonly available.

Check:

- capacitance tolerance;
- leakage;
- ESR;
- ripple-current rating if repeatedly cycled;
- polarity;
- temperature range.

## Reference design

| Item | Selected value |
|---|---:|
| Supply | 5 V |
| R1 | 270 Ω, E24, 0.25 W minimum |
| C1 | 1000 µF, 10 V or 16 V |
| Initial current | 18.52 mA |
| Time constant | 0.270 s |
| Time to 4.5 V | 0.622 s |
| Final charge | 5 mC |
| Final stored energy | 12.5 mJ |
| Peak resistor power | 92.6 mW |

## Reference simulation

```spice
V1 VIN 0 PULSE(0 5 0 1u 1u 5s 10s)
R1 VIN VCAP 270
C1 VCAP 0 1000u IC=0
.tran 1m 2s startup
.meas tran T90 WHEN V(VCAP)=4.5 RISE=1
.meas tran V1S FIND V(VCAP) AT=1
.end
```

Expected results:

- `T90` ≈ 0.622 s;
- `V(VCAP)` at 1 s ≈ 4.877 V;
- initial current magnitude ≈ 18.52 mA;
- final ideal energy ≈ 12.5 mJ.

## Energy conservation check

For ideal step charging:

$$E_{source}\rightarrow CV^2=25\text{ mJ}$$

$$E_C\rightarrow\frac12CV^2=12.5\text{ mJ}$$

$$E_R\rightarrow\frac12CV^2=12.5\text{ mJ}$$

The resistor value changes the charging duration and peak power but not these ideal total energies.

## Alternative valid choices

Any E24 resistor at or above 250 Ω that still meets the 1-second requirement is valid.

The maximum R that reaches 90% within 1 second is:

$$R\le\frac{1}{2.3026C}$$

For 1000 µF:

$$R\le434.3\ \Omega$$

Therefore practical E24 choices from 270 Ω through 430 Ω satisfy both current and timing requirements. Lower values charge faster but create higher peak current and resistor power. The 270 Ω choice provides comfortable timing margin.