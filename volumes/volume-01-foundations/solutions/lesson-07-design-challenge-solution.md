# Lesson 7 Design Challenge — Worked Solution

Target current: 3 mA from 15 V.

Total resistance:

$$
R_T=\frac{15\ \text{V}}{3\ \text{mA}}=5\ \text{k}\Omega
$$

For a 6 V drop:

$$
R_1=\frac{6\ \text{V}}{3\ \text{mA}}=2\ \text{k}\Omega
$$

For a 9 V drop:

$$
R_2=\frac{9\ \text{V}}{3\ \text{mA}}=3\ \text{k}\Omega
$$

KVL:

$$
+15-6-9=0
$$

Power:

$$
P_{R1}=18\ \text{mW},\qquad P_{R2}=27\ \text{mW}
$$

A 0.125 W or 0.25 W rating satisfies the 50% rule.

Expected node voltages with the lower end grounded:

| Node | Voltage |
|---|---:|
| source positive | 15 V |
| resistor midpoint | 9 V |
| return | 0 V |

Reference values: R1 = 2 kΩ and R2 = 3 kΩ.