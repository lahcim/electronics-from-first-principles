# Lesson 11 Design Challenge — Worked Solution

Target: 15 V to 3.0 V, so the required ratio is 0.2.

Choose E24 values:

- $R_1=47\text{ k}\Omega$
- $R_2=12\text{ k}\Omega$

Then:

$$V_{OUT}=15\frac{12}{47+12}=3.0508\text{ V}$$

Error is about +1.69%, so this pair fails the ±1% requirement.

A better E24 choice is:

- $R_1=56\text{ k}\Omega$
- $R_2=14\text{ k}\Omega$

Because 14 kΩ is not a single E24 value, realize it as 12 kΩ + 2 kΩ in series, or choose 56 kΩ and 15 kΩ:

$$V_{OUT}=15\frac{15}{56+15}=3.169\text{ V}$$

which also fails. Therefore the strict E24 single-resistor constraint has no convenient exact pair in the desired current window. A valid implementation using two E24 resistors in series for the lower leg is:

- $R_1=56\text{ k}\Omega$
- $R_2=12\text{ k}\Omega+2\text{ k}\Omega=14\text{ k}\Omega$

This gives exactly 3.0 V.

Divider current:

$$I=\frac{15}{70\text{ k}\Omega}=214.3\ \mu\text{A}$$

Output resistance:

$$R_{OUT}=56\text{ k}\Omega\parallel14\text{ k}\Omega=11.2\text{ k}\Omega$$

Power is about 2.57 mW in the upper leg and 0.64 mW in the lower leg, both well below 25 mW.