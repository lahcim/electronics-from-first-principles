# Lesson 5 Challenge — Worked Solution

Required energy: 5 mJ at 1 A.

$$E=\frac12LI^2$$

Therefore:

$$L=\frac{2E}{I^2}=\frac{2(5\text{ mJ})}{1^2}=10\text{ mH}$$

Peak-current requirement with 25% margin:

$$I_{rated}\ge1.25\text{ A}$$

Maximum DCR for less than 0.5 W copper loss at 1 A:

$$R_{DCR}\le\frac{P}{I^2}=0.5\ \Omega$$

A suitable part must therefore provide approximately 10 mH, saturation current above 1.25 A, thermal current above 1 A, and DCR no more than 0.5 Ω.

If saturation begins at 0.8 A, effective inductance falls before the target current. Under constant applied voltage, $di/dt=V/L$ increases, causing a steeper current ramp and potentially excessive current. The part fails the design even if its printed small-signal inductance is 10 mH.