# Lesson 14 Challenge — Reference Solution

Use low-capacitance Schottky clamps to ground and the 3.3 V rail, with a series resistor sized for the worst fault.

For +12 V and a 3.6 V maximum pin target:

$$R\ge\frac{12-3.6}{2\text{ mA}}=4.2\text{ k}\Omega$$

For −10 V and a −0.3 V target:

$$R\ge\frac{10-0.3}{2\text{ mA}}=4.85\text{ k}\Omega$$

Choose 5.1 kΩ minimum after subtracting any guaranteed source resistance.

When the 3.3 V rail is unpowered, positive clamp current can back-power it through the upper diode. Add a dedicated clamp rail, rail sink path, disconnect switch, or protection device that remains safe during power-off. Verify ADC acquisition settling with the added resistance and input capacitance.