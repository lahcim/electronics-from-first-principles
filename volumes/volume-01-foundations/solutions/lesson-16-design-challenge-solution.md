# Lesson 16 Design Challenge — Worked Solution

One workable nominal design is:

- $R_1=30.1\text{ k}\Omega$, 1%
- $R_2=10.0\text{ k}\Omega$, 1%
- $R_L=1\text{ M}\Omega$, 5%

Nominal lower equivalent resistance:

$$R_{LOW}=10\text{ k}\Omega\parallel1\text{ M}\Omega=9.90099\text{ k}\Omega$$

Nominal output:

$$V_{OUT}=10\frac{9.90099}{30.1+9.90099}=2.4752\text{ V}$$

For worst-case maximum, use source high, R1 low, R2 high, and load high. For worst-case minimum, use source low, R1 high, R2 low, and load low.

Using those corners gives an output range of approximately 2.39 V to 2.56 V. The low corner is slightly below 2.40 V, so the design should be adjusted.

A better choice is $R_1=29.4\text{ k}\Omega$ and $R_2=10.0\text{ k}\Omega$. Repeating all corners gives approximately 2.43 V to 2.60 V, while nominal divider current remains about 254 µA. This satisfies the stated current and output-window constraints, subject to confirming exact corner arithmetic in the supplied SPICE sweep.