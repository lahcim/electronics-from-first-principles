# Lesson 6 Design Challenge — Worked Solution

The 12 V source, R1 = 1 kΩ, and `NODE_A = 6 V` give:

$$
I_{R1}=\frac{12-6}{1\ \text{k}\Omega}=6\ \text{mA}
$$

Let the branch currents be 4 mA and 2 mA so one is twice the other and their sum is 6 mA.

$$
R_2=\frac{6\ \text{V}}{4\ \text{mA}}=1.5\ \text{k}\Omega
$$

$$
R_3=\frac{6\ \text{V}}{2\ \text{mA}}=3\ \text{k}\Omega
$$

Both are standard values.

| Quantity | Expected |
|---|---:|
| `V(NODE_A)` | 6 V |
| incoming current through R1 | 6 mA |
| current through R2 | 4 mA |
| current through R3 | 2 mA |
| KCL residual | approximately 0 A |

Reference design: R2 = 1.5 kΩ and R3 = 3 kΩ.