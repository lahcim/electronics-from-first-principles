# Lesson 2 — Enhancement and Depletion MOSFETs

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Distinguish normally-off and normally-on MOSFET behavior and select the safe default state.

## Two channel behaviors

An **enhancement-mode** MOSFET is normally off. Gate voltage creates or strengthens the channel.

A **depletion-mode** MOSFET is normally on. Gate voltage of the opposite polarity depletes the existing channel and can turn the device off.

![Enhancement and depletion transfer curves](../figures/lesson-02-enhancement-depletion.svg)

## Why enhancement mode dominates switching

Power switches usually need a safe, unpowered off state. Enhancement-mode devices naturally provide that behavior. Depletion-mode parts are useful for:

- startup current sources;
- constant-current circuits;
- fail-safe biasing;
- cascodes;
- specialized RF and high-voltage circuits.

## Transfer characteristic

A simplified enhancement MOSFET saturation model is:

$$I_D\approx K(V_{GS}-V_{TH})^2$$

for $V_{GS}>V_{TH}$. The real device includes mobility reduction, channel-length modulation, temperature dependence, and package resistance.

## KiCad/ngspice experiment

Compare enhancement and depletion models under a gate sweep:

```spice
.dc VGS -5 10 10m
```

Keep $V_{DS}$ fixed and plot $I_D$.

## What to observe

- Enhancement device current is near zero at $V_{GS}=0$.
- Depletion device conducts at $V_{GS}=0$.
- A negative gate voltage can turn off an N-channel depletion MOSFET.
- The fail-safe state depends on both device type and external gate bias.

## Common mistakes

- Assuming every MOSFET is normally off.
- Confusing depletion MOSFETs with JFETs.
- Ignoring startup before a gate driver is powered.
- Omitting a gate pull resistor.

## Design challenge

A circuit needs 5 mA startup current from a 100 V rail before its controller powers up. Explain why a depletion MOSFET can be useful and identify the voltage, power, and current-setting checks required.

## Remember

> Device mode determines what happens when the gate driver is absent—the most important state during startup and faults.