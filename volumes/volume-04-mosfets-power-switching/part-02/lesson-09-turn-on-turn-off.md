# Lesson 9 — Turn-On and Turn-Off Behavior

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Break a MOSFET transition into physical intervals and identify which parasitic controls each one.

## Turn-on sequence

1. Gate charges toward threshold.
2. Drain current rises toward load current.
3. Gate enters the Miller plateau.
4. Drain voltage falls.
5. Gate rises to final drive voltage and $R_{DS(on)}$ reaches its low value.

Turn-off occurs in reverse order.

![MOSFET switching intervals](../figures/lesson-09-switching-intervals.svg)

## Resistive versus inductive load

With a resistive load, drain current and voltage change together according to the load line. With an inductive load, current is nearly fixed during the fast transition and commutates between devices or diode paths.

## Common-source inductance

Source inductance creates:

$$V_L=L_S\frac{dI_D}{dt}$$

This voltage subtracts from effective gate drive during turn-on and can oppose or reinforce turn-off depending on current direction.

## False turn-on

A fast drain transition injects Miller current into the gate. If the driver sink path is weak, the off device may cross threshold.

Mitigations include:

- strong sink current;
- low turn-off resistance;
- negative gate bias;
- Miller clamp;
- low-inductance Kelvin source;
- controlled $dV/dt$.

## KiCad/ngspice experiment

Use a 48 V inductive switching cell with explicit gate and source inductance. Plot $V_{GS}$ at the package pins and at the driver reference.

Measure threshold crossing, plateau duration, $V_{DS}$ fall/rise, and false gate spike.

## What to observe

- Package-source voltage differs from driver-ground voltage.
- Drain voltage changes mainly during the Miller plateau.
- Inductive current forces voltage/current overlap.
- Turn-on and turn-off are not symmetric when source/sink resistances differ.

## Common mistakes

- Measuring gate voltage with a long ground lead.
- Assuming threshold crossing means the device is fully on.
- Ignoring common-source inductance.
- Using one rise-time number without defining measurement points.

## Design challenge

A 5 nH common-source inductance carries a current edge of 2 A/ns. Calculate the induced source voltage and explain its effect on effective $V_{GS}$.