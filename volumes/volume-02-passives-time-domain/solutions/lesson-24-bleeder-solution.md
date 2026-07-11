# Lesson 24 Challenge — Worked Solution

Discharge 1000 µF from 60 V to 12 V in 5 s:

$$R\le-\frac{5}{1000\ \mu F\ln(12/60)}\approx3.11\text{ k}\Omega$$

Choose 3.0 kΩ from E24.

Permanent loss at 60 V:

$$P=60^2/3000=1.2\text{ W}$$

At +10% voltage, 66 V:

$$P=66^2/3000=1.452\text{ W}$$

With 2× margin, use at least 3 W total resistor rating. A practical series string of two 1.5 kΩ, 2 W resistors shares voltage and power.

Worst-case safe time uses C = 1.2 mF and V0 = 66 V:

$$t=-RC\ln(12/66)$$

$$t\approx6.14\text{ s}$$

This fails the 5 s requirement. Reduce the string to 2.4 kΩ total, for example two 1.2 kΩ resistors. Worst-case time becomes about 4.91 s. High-line loss is 1.815 W, so two 2 W resistors still provide more than 2× total nominal dissipation margin. Confirm individual working-voltage limits and creepage.