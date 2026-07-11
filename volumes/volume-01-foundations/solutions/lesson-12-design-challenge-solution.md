# Lesson 12 Design Challenge — Worked Solution

A practical E24 candidate is:

- $R_1=68\text{ k}\Omega$
- $R_2=10\text{ k}\Omega$
- $R_L=100\text{ k}\Omega$

Loaded lower leg:

$$R_{LOW}=10\text{ k}\Omega\parallel100\text{ k}\Omega=9.0909\text{ k}\Omega$$

Loaded output:

$$V_{OUT}=24\frac{9.0909}{68+9.0909}=2.830\text{ V}$$

This fails the ±1% requirement, illustrating why the load must be included during design.

Choose $R_2=12\text{ k}\Omega$ and $R_1=75\text{ k}\Omega$:

$$R_{LOW}=12\parallel100=10.714\text{ k}\Omega$$

$$V_{OUT}=24\frac{10.714}{75+10.714}=3.000\text{ V}$$

Source current is:

$$I=\frac{24}{85.714\text{ k}\Omega}=280\ \mu\text{A}$$

Unloaded output would be:

$$V_{OUT,NL}=24\frac{12}{75+12}=3.310\text{ V}$$

Thus loading lowers the output by about 9.4% relative to the unloaded value. Resistor powers remain below 10 mW, satisfying the constraints.