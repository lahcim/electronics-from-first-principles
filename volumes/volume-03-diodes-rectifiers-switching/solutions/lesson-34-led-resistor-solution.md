# Lesson 34 Challenge — Worked Solution

Nominal estimate at 3.3 V and approximately 2.1 V LED drop:

$$R\approx\frac{3.3-2.1}{8\text{ mA}}=150\ \Omega$$

Choose 180 Ω to control the worst-case current.

Maximum current uses 3.6 V, 1.9 V LED drop, and −5% resistance:

$$R_{min}=171\ \Omega$$

$$I_{max}=\frac{3.6-1.9}{171}\approx9.94\text{ mA}$$

Minimum current uses 3.0 V, 2.4 V LED drop, and +5% resistance:

$$R_{max}=189\ \Omega$$

$$I_{min}=\frac{3.0-2.4}{189}\approx3.17\text{ mA}$$

Maximum resistor power is approximately:

$$P_{R,max}=I_{max}^2R_{min}\approx16.9\text{ mW}$$

A standard 0.125 W resistor has ample power margin. The wide current range shows why LED brightness should be checked at corners.