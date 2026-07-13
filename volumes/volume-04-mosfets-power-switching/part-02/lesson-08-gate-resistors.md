# Lesson 8 — Gate Resistors and Drive-Loop Damping

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Choose gate resistance to balance switching loss, ringing, EMI, and false turn-on.

## What the resistor controls

The total gate path contains driver resistance, external gate resistance, internal gate resistance, and loop inductance.

Approximate peak gate current:

$$I_G\approx\frac{V_{DRV}-V_{plateau}}{R_{DRV}+R_G+R_{G,int}}$$

![Gate resistor loop](../figures/lesson-08-gate-resistor.svg)

A larger resistor:

- slows $dV/dt$ and $dI/dt$;
- reduces ringing and EMI;
- increases switching loss;
- can reduce diode-recovery stress.

A smaller resistor does the opposite and can expose parasitic inductance.

## Separate turn-on and turn-off resistance

A diode plus two resistors can set different source and sink paths. Fast turn-off is often desired to resist Miller-induced turn-on, while slower turn-on may reduce recovery current and EMI.

## Gate-loop resonance

Gate inductance and effective capacitance form a resonant circuit. The resistor provides damping. Place it close to the MOSFET gate so the local loop is damped.

## KiCad/ngspice experiment

Switch a 24 V, 5 A load using 1 Ω, 10 Ω, 47 Ω, and 100 Ω gate resistors. Include 10 nH gate-loop inductance.

Measure rise/fall time, gate ringing, peak $V_{GS}$, and switching energy.

## What to observe

- Very low resistance causes gate ringing.
- Very high resistance increases overlap loss.
- Source inductance appears in the effective gate loop.
- Separate turn-on/turn-off values can improve the compromise.

## Common mistakes

- Treating the gate resistor as an arbitrary 10 Ω tradition.
- Placing it near the driver rather than the MOSFET.
- Ignoring driver and internal gate resistance.
- Slowing turn-off so much that shoot-through increases.

## Design challenge

A 12 V driver, 5 V Miller plateau, and combined driver/internal resistance of 3 Ω must provide approximately 0.7 A during turn-on. Choose an external gate resistor. Then explain why hardware tuning may change it.