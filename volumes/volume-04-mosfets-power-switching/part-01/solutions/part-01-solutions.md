# Volume 4 Part 1 — Worked Solutions

## Lesson 1

Average gate-drive current:

$$I_{G,avg}=Q_Gf=30\text{ nC}\cdot100\text{ kHz}=3\text{ mA}$$

Gate-drive power:

$$P_G=Q_GV_Gf=30\text{ nC}\cdot10\text{ V}\cdot100\text{ kHz}=30\text{ mW}$$

The peak driver current can be far higher than 3 mA because charge is delivered during short transitions.

## Lesson 2

A depletion MOSFET can conduct startup current with zero gate drive. Use a source resistor or feedback arrangement to set about 5 mA. Verify 100 V plus transient rating, startup dissipation, current tolerance versus threshold, gate-source limits, and the transition after the controller takes over.

## Lesson 3

At 4 A, a P-channel device with 40 mΩ hot resistance dissipates 0.64 W. An N-channel device with 12 mΩ dissipates 0.192 W but requires a high-side driver. Select P-channel when simplicity and modest loss are acceptable; select N-channel when efficiency, current, or thermal margin dominate. Verify power-off state and reverse-current behavior.

## Lesson 4

For approximately linear overlap:

$$E_{sw}\approx\frac12VI t=\frac12(24)(5)(200\text{ ns})=12\ \mu J$$

At 20 mΩ, steady conduction loss is:

$$P=I^2R=5^2(0.02)=0.5\text{ W}$$

Multiply switching energy by frequency and include both turn-on and turn-off.

## Lesson 5

For the synchronous buck, estimate high-side conduction and switching loss and low-side conduction, dead-time diode, and recovery loss. The 3 mΩ/80 nC device may suit the low side where conduction dominates; the 6 mΩ/25 nC device may suit the high side where switching charge matters. Use hot maximum resistance, actual gate voltage, $Q_{GD}$, driver current, duty cycle, frequency, body-diode behavior, SOA, and thermal resistance.