# Lesson 14 Design Challenge — Worked Solution

Thevenin source:

- $V_{TH}=5\text{ V}$
- $R_{TH}=250\ \Omega$

Norton equivalent:

$$I_N=\frac{5}{250}=20\text{ mA}$$

$$R_N=250\ \Omega$$

Results:

| Load | VOUT | Load current |
|---:|---:|---:|
| 100 Ω | 1.429 V | 14.286 mA |
| 250 Ω | 2.500 V | 10.000 mA |
| 1 kΩ | 4.000 V | 4.000 mA |
| open | 5.000 V | 0 mA |

For example, with 100 Ω:

$$V_{OUT}=I_N(R_N\parallel R_L)=20\text{ mA}(250\parallel100)=1.429\text{ V}$$

The transformed Norton and original Thevenin circuits produce the same terminal results for every load.