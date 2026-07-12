# Lesson 7 — Gate Charge and the Miller Plateau

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Use gate-charge data to estimate driver current, transition time, and drive power.

## Why gate charge is more useful than capacitance

Large-signal switching moves the MOSFET through changing voltages and capacitances. Datasheets therefore provide total gate charge $Q_G$ and a gate-charge curve.

The curve usually contains:

1. gate charging toward threshold;
2. current rising;
3. Miller plateau while $V_{DS}$ changes;
4. final gate overdrive.

![Gate-charge curve](../figures/lesson-07-gate-charge.svg)

## Driver-current estimate

For a charge interval:

$$t\approx\frac{Q}{I_G}$$

The drain-voltage transition is strongly related to Miller charge $Q_{GD}$:

$$t_{Miller}\approx\frac{Q_{GD}}{I_G}$$

## Average driver demand

$$I_{avg}=Q_Gf_s$$

$$P_{drive}=Q_GV_{drive}f_s$$

This energy is mainly dissipated in the driver and gate resistance during each charge/discharge cycle.

## Datasheet conditions matter

$Q_G$ depends on:

- $V_{DS}$;
- drain current;
- gate-drive voltage;
- measurement circuit;
- device variation.

Use the graph as typical guidance and add margin.

## KiCad/ngspice experiment

Drive a 40 nC MOSFET model through a current-limited gate driver. Compare 0.2 A, 1 A, and 3 A peak drive.

Measure gate waveform, plateau duration, drain fall time, and switching energy.

## What to observe

- The gate voltage pauses during the drain transition.
- More driver current shortens the Miller interval.
- Total gate charge sets average driver power.
- Faster switching can increase ringing and EMI.

## Common mistakes

- Dividing total charge by driver current to predict every interval equally.
- Ignoring driver sink current.
- Comparing $Q_G$ from unrelated test conditions.
- Selecting a driver only from average current.

## Design challenge

A MOSFET has $Q_G=60$ nC and $Q_{GD}=18$ nC. It switches at 200 kHz from a 10 V driver. Estimate average gate-drive current, drive power, and Miller time with 1.5 A gate current.