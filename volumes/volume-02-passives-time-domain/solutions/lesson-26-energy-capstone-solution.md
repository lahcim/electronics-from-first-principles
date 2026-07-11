# Lesson 26 Capstone — Reference Solution

## Precharge

At 52 V and 2 A maximum:

$$R_{pre}\ge26\ \Omega$$

Choose 27 Ω. With maximum capacitance 2640 µF:

$$t_{90}=2.303RC\approx164\text{ ms}$$

Use a voltage-based bypass threshold and verify residual voltage difference keeps bypass surge below 3 A.

## Hold-up

At minimum starting voltage 44 V and minimum capacitance 1760 µF, usable energy down to 36 V is:

$$E=\frac12(1760\ \mu F)(44^2-36^2)\approx0.563\text{ J}$$

Required input energy for 20 W output at 90% efficiency over 50 ms is:

$$E_{req}=\frac{20}{0.9}(0.05)=1.11\text{ J}$$

The existing 2200 µF capacitor cannot guarantee hold-up at the minimum corner. Required minimum capacitance at 44 V is:

$$C\ge\frac{2E_{req}}{44^2-36^2}\approx3.47\text{ mF}$$

After −20% tolerance, select at least about 4.7 mF nominal, then include ESR and aging margin.

## Discharge

Using maximum voltage 52 V, maximum capacitance for a 4.7 mF part at +20% = 5.64 mF, and 15 s to reach 12 V:

$$R\le-\frac{15}{5.64\text{ mF}\ln(12/52)}\approx1.82\text{ k}\Omega$$

Permanent loss at 52 V would be:

$$P\approx1.49\text{ W}$$

This is below the 2 W requirement, but use a resistor string with at least 2× power margin and appropriate working-voltage ratings. Verify precharge energy increases with the larger capacitor and resize the precharge resistor’s pulse rating accordingly.