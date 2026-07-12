# Lesson 8 Challenge — Worked Solution

At 9 V, 8 mA load, and 2 mA required Zener current:

$$R\le\frac{9-5.1}{10\text{ mA}}=390\ \Omega$$

Choose 390 Ω.

At 14 V and no load:

$$I_Z=\frac{14-5.1}{390}\approx22.8\text{ mA}$$

$$P_Z\approx5.1(22.8\text{ mA})=116\text{ mW}$$

Maximum resistor power:

$$P_R\approx(22.8\text{ mA})^2(390)=203\text{ mW}$$

Use at least a 0.5 W resistor for margin and a Zener comfortably rated above 116 mW after temperature derating.