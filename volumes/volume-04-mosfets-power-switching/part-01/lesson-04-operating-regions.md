# Lesson 4 — MOSFET Operating Regions

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Distinguish cutoff, linear, and saturation operation and avoid confusing transistor terminology with switch behavior.

## The regions

### Cutoff

$$V_{GS}<V_{TH}$$

The channel is off except for leakage.

### Linear or triode region

The channel behaves approximately like a voltage-controlled resistor. This is the desired region for a fully enhanced power switch.

### Saturation region

Drain current depends mainly on gate overdrive and less strongly on $V_{DS}$. This is useful for amplification and current-source behavior, but a power MOSFET held here can dissipate large power.

![MOSFET operating regions](../figures/lesson-04-operating-regions.svg)

## Terminology trap

A BJT switch is “saturated” when strongly on. A MOSFET switch is normally strongly on in the **linear/ohmic** region. MOSFET saturation is not the low-loss switching state.

## Load line and dissipation

At every instant:

$$P_D=V_{DS}I_D$$

Switching transitions cross the high-voltage, high-current region briefly. Linear regulators and electronic loads may stay there continuously and must respect safe operating area.

## KiCad/ngspice experiment

Sweep $V_{DS}$ from 0 to 20 V for several $V_{GS}$ values:

```spice
.dc VDS 0 20 20m VGS 2 10 2
```

Plot output characteristics and constant-power contours.

## What to observe

- Low $V_{DS}$ curves are resistive.
- Higher $V_{DS}$ enters saturation.
- More gate overdrive lowers effective on-resistance.
- High current does not guarantee low dissipation.

## Common mistakes

- Saying a fully-on MOSFET is saturated.
- Using $R_{DS(on)}$ while the device is in saturation.
- Ignoring SOA during slow startup or current limiting.
- Treating the boundary equations as sharp in real devices.

## Design challenge

A MOSFET carries 5 A while $V_{DS}$ falls from 24 V to 0.1 V over 200 ns. Estimate switching energy for a linear overlap approximation and compare it with steady conduction loss at 20 mΩ.