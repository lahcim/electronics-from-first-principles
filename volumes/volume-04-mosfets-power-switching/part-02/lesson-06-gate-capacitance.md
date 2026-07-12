# Lesson 6 — MOSFET Gate Capacitance

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Understand $C_{GS}$, $C_{GD}$, and $C_{DS}$ and predict how they shape switching behavior.

## The three important capacitances

A MOSFET is not controlled by one fixed input capacitor. Important nonlinear capacitances are:

- $C_{GS}$: gate-to-source;
- $C_{GD}$: gate-to-drain, also called Miller capacitance;
- $C_{DS}$: drain-to-source.

Datasheets often report:

$$C_{iss}=C_{GS}+C_{GD}$$

$$C_{oss}=C_{DS}+C_{GD}$$

$$C_{rss}=C_{GD}$$

![MOSFET capacitances](../figures/lesson-06-gate-capacitance.svg)

## Why capacitance is nonlinear

Capacitance changes with drain-source voltage because depletion regions and charge distribution change. A single datasheet number is measured at a specific bias point.

## Miller feedback

During a drain-voltage transition, current through $C_{GD}$ feeds back into the gate:

$$i_{GD}=C_{GD}\frac{dV_{DS}}{dt}$$

This current can slow the intended transition or accidentally raise the gate of an off MOSFET.

## Gate-current estimate

For a local approximation:

$$i_G=C_{eq}\frac{dV_G}{dt}$$

But gate-charge curves are usually more useful than one capacitance number for large-signal switching.

## KiCad/ngspice experiment

Use an NMOS with explicit $C_{GS}=2$ nF and $C_{GD}=300$ pF. Pulse the drain from 0 to 24 V while the gate is held low through 100 Ω, 1 kΩ, and 10 kΩ.

```spice
.tran 100p 5u startup
```

Plot $V_G$, $V_{DS}$, and $i_{GD}$.

## What to observe

- Faster drain edges inject more gate current.
- Weak gate pull-down allows a larger false gate-voltage spike.
- $C_{GD}$ couples drain motion into the gate.
- $C_{oss}$ stores energy that must move every cycle.

## Common mistakes

- Treating $C_{iss}$ as a fixed gate capacitor.
- Ignoring the Miller path in half bridges.
- Using capacitance values at unrelated $V_{DS}$.
- Assuming a static gate pull-down is always strong enough.

## Design challenge

A MOSFET has effective $C_{GD}=120$ pF during a 40 V transition occurring in 20 ns. Estimate the Miller current. Determine the gate-voltage rise across a 100 Ω pull-down if the driver is otherwise high impedance.