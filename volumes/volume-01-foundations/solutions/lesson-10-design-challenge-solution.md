# Lesson 10 Design Challenge — Worked Solution

A valid E24 solution is:

- $R_1=1.2\text{ k}\Omega$
- $R_2=2.4\text{ k}\Omega$
- $R_3=2.4\text{ k}\Omega$

The parallel pair is:

$$R_{23}=1.2\text{ k}\Omega$$

Total resistance is:

$$R_T=2.4\text{ k}\Omega$$

Therefore:

$$I_T=\frac{12\text{ V}}{2.4\text{ k}\Omega}=5.0\text{ mA}$$

and:

$$V_X=(5.0\text{ mA})(1.2\text{ k}\Omega)=6.0\text{ V}$$

Each parallel branch carries 2.5 mA.

Power checks:

| Part | Power |
|---|---:|
| R1 | 30 mW |
| R2 | 15 mW |
| R3 | 15 mW |
| total load | 60 mW |

All constraints are satisfied. A second valid design can be formed by choosing unequal parallel resistors whose equivalent is 1.2 kΩ, but the equal-value solution is easier to source, explain, and validate.