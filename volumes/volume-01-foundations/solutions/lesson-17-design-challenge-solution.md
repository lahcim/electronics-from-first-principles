# Lesson 17 Design Challenge — Worked Solution

Target current from 48 V is approximately 5 mA, so total resistance should be:

$$R_T=\frac{48}{5\text{ mA}}=9.6\text{ k}\Omega$$

Use four 2.4 kΩ E24 resistors in series.

Nominal current:

$$I=\frac{48}{9.6\text{ k}\Omega}=5.00\text{ mA}$$

Total power:

$$P_T=VI=48(5\text{ mA})=240\text{ mW}$$

Each equal resistor dissipates:

$$P_R=60\text{ mW}$$

This is 24% of a 0.25 W rating, below the 40% constraint. Each resistor sees 12 V, far below 100 V.

At 85°C, with identical +100 ppm/°C parts, each resistance rises about 0.6%, so total resistance rises to 9.6576 kΩ and current falls to approximately 4.970 mA. Because all four parts track together, voltage remains equally divided.