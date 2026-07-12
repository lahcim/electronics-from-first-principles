# Lesson 1 — MOSFETs from First Principles

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Explain how gate voltage creates a conductive channel and why MOSFET input current is mostly transient.

## Core idea

A MOSFET uses an electric field to control conductivity between drain and source. The gate is insulated by oxide, so ideally no DC gate current flows. Applying gate-to-source voltage charges the gate structure and changes the carrier concentration under it.

For an enhancement-mode N-channel MOSFET:

- $V_{GS}=0$: no channel;
- $V_{GS}>V_{TH}$: an inversion channel forms;
- increasing $V_{GS}$ strengthens the channel and lowers $R_{DS(on)}$.

![MOSFET channel formation](../figures/lesson-01-mosfet-channel.svg)

## Why threshold is not the drive voltage

$V_{TH}$ is measured at a tiny drain current. It marks the beginning of channel formation, not low-resistance operation. A MOSFET with $V_{TH}=2$ V may still require 4.5 V or 10 V gate drive to achieve its specified $R_{DS(on)}$.

## Gate as a capacitor

The gate must be charged:

$$Q_G=\int i_G(t)dt$$

For a simple approximation:

$$Q\approx CV$$

The gate draws current during transitions even though steady DC current is small.

## KiCad/ngspice experiment

Sweep $V_{GS}$ from 0 to 10 V with $V_{DS}=5$ V:

```spice
.dc VGS 0 10 10m
```

Plot drain current and transconductance. Then pulse the gate through 10 Ω and 1 kΩ resistors.

## What to observe

- Drain current starts near threshold but useful low resistance occurs later.
- Gate current appears during charging and discharging.
- Larger gate resistance slows switching.
- The source terminal is the reference for gate voltage.

## Common mistakes

- Treating $V_{TH}$ as the recommended drive voltage.
- Assuming zero gate current means zero driver power.
- Ignoring source bounce when interpreting $V_{GS}$.
- Using a generic MOSFET model without checking its parameters.

## Design challenge

A MOSFET has 30 nC total gate charge and is switched from 0 to 10 V at 100 kHz. Estimate average gate-drive current and gate-drive power.

## Remember

> A MOSFET is voltage-controlled in steady state, but charge-controlled during switching.