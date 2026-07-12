# Volume 4 Part 2 — Worked Solutions

## Lesson 6

$$i_{GD}=C_{GD}\frac{dV}{dt}=120\text{ pF}\cdot\frac{40}{20\text{ ns}}=0.24\text{ A}$$

Across 100 Ω, an unconstrained estimate is 24 V, showing that the gate cannot be treated as isolated. Real gate clamps, capacitances, and driver impedance limit the spike, but a strong sink path is mandatory.

## Lesson 7

$$I_{avg}=60\text{ nC}\cdot200\text{ kHz}=12\text{ mA}$$

$$P_G=60\text{ nC}\cdot10\text{ V}\cdot200\text{ kHz}=0.12\text{ W}$$

$$t_{Miller}=18\text{ nC}/1.5\text{ A}=12\text{ ns}$$

## Lesson 8

Required total resistance:

$$R_{total}=\frac{12-5}{0.7}=10\ \Omega$$

Subtracting 3 Ω internal/driver resistance gives approximately 7 Ω external. Choose 6.8–7.5 Ω initially. Hardware tuning may change it because parasitic inductance, diode recovery, driver impedance, layout, EMI limits, and thermal loss are not fully known from the first calculation.

## Lesson 9

$$V_L=L\frac{dI}{dt}=5\text{ nH}\cdot2\text{ A/ns}=10\text{ V}$$

This source bounce can subtract roughly 10 V from effective turn-on $V_{GS}$ and severely slow or interrupt the transition. It can also create dangerous gate stress during turn-off. Use a Kelvin source and low-inductance loop.

## Lesson 10

Each transition:

$$E\approx\frac12(48)(8)(40\text{ ns})=7.68\ \mu J$$

Two transitions at 200 kHz:

$$P_{overlap}=2(7.68\ \mu J)(200\text{ kHz})=3.07\text{ W}$$

Conduction:

$$P_{cond}=6^2(0.012)=0.432\text{ W}$$

Gate drive:

$$P_G=45\text{ nC}\cdot10\text{ V}\cdot200\text{ kHz}=0.09\text{ W}$$

Also include $C_{oss}$, reverse recovery, dead-time conduction, ringing, and temperature.