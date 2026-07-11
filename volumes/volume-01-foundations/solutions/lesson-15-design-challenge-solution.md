# Lesson 15 Design Challenge — Worked Solution

Sensor model:

- $V_{TH}=2.5\text{ V}$
- $R_{TH}=500\text{ k}\Omega$

Meter indication is:

$$V_M=V_{TH}\frac{R_M}{R_{TH}+R_M}$$

| Meter input | Indication | Error |
|---:|---:|---:|
| 1 MΩ | 1.667 V | −33.33% |
| 10 MΩ | 2.381 V | −4.76% |
| 100 MΩ | 2.488 V | −0.498% |

To keep error below 1%:

$$\frac{R_M}{R_{TH}+R_M}\ge0.99$$

Solving gives:

$$R_M\ge99R_{TH}=49.5\text{ M}\Omega$$

Therefore a 100 MΩ electrometer input satisfies the requirement; 10 MΩ does not.