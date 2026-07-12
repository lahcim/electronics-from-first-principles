# Lesson 10 — MOSFET Switching Losses

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Build a practical loss budget from conduction, overlap, gate drive, output capacitance, and reverse recovery.

## Conduction loss

$$P_{cond}=I_{RMS}^2R_{DS(on),hot}$$

Use hot maximum resistance and the actual duty cycle.

## Voltage-current overlap

A common first estimate for one transition is:

$$E_{sw}\approx\frac12V_{DS}I_Dt_{sw}$$

For turn-on and turn-off:

$$P_{overlap}=f_s(E_{on}+E_{off})$$

![MOSFET loss budget](../figures/lesson-10-switching-loss.svg)

## Gate-drive loss

$$P_G=Q_GV_Gf_s$$

This is usually dissipated in the driver and gate resistances, not primarily in the MOSFET channel.

## Output-capacitance energy

A rough constant-capacitance estimate is:

$$E_{oss}\approx\frac12C_{oss}V^2$$

Real $C_{oss}$ is nonlinear, so use datasheet $E_{oss}$ or integrate $C(V)$ when available.

## Reverse-recovery interaction

During hard turn-on, the MOSFET may carry load current plus reverse-recovery current from the opposing diode. This can dominate peak current and turn-on energy.

## KiCad/ngspice experiment

Use a 48 V, 10 A switching cell at 100 kHz. Compare gate resistors that produce 20 ns, 50 ns, and 150 ns overlap. Include 200 pF output capacitance and a diode with stored charge.

Measure:

```spice
.meas tran EON INTEG V(D,S)*I(M1) FROM=t1 TO=t2
.meas tran EOFF INTEG V(D,S)*I(M1) FROM=t3 TO=t4
```

## What to observe

- Slower switching raises overlap loss.
- Faster switching can increase recovery loss and ringing.
- Conduction and switching optima may favor different MOSFETs.
- Loss must be converted to junction temperature.

## Common mistakes

- Using only $I^2R$.
- Multiplying one transition energy by frequency without including both edges.
- Treating $C_{oss}$ as constant.
- Ignoring reverse recovery and dead-time body-diode conduction.
- Using typical values without thermal margin.

## Design challenge

A MOSFET switches 48 V and 8 A at 200 kHz. Turn-on and turn-off each take 40 ns. Hot $R_{DS(on)}$ is 12 mΩ, RMS current is 6 A, $Q_G=45$ nC, and gate drive is 10 V. Estimate overlap, conduction, and gate-drive power.