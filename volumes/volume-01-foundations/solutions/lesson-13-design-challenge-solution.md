# Lesson 13 Design Challenge — Worked Solution

Given:

- $V_{OC}=9.0\text{ V}$
- $V_L=7.5\text{ V}$ with $R_L=1.5\text{ k}\Omega$

Thevenin voltage is:

$$V_{TH}=9.0\text{ V}$$

Thevenin resistance:

$$R_{TH}=R_L\left(\frac{V_{OC}}{V_L}-1\right)=1500\left(\frac{9}{7.5}-1\right)=300\ \Omega$$

Short-circuit current:

$$I_{SC}=\frac{9}{300}=30\text{ mA}$$

For $R_L=470\ \Omega$:

$$V_L=9\frac{470}{300+470}=5.494\text{ V}$$

For $R_L=10\text{ k}\Omega$:

$$V_L=9\frac{10000}{10300}=8.738\text{ V}$$

Maximum load power occurs at $R_L=300\ \Omega$:

$$P_{MAX}=\frac{V_{TH}^2}{4R_{TH}}=\frac{81}{1200}=67.5\text{ mW}$$

The KiCad equivalent is a 9 V source in series with 300 Ω.