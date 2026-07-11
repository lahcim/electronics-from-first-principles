# Lesson 9 Design Challenge — Worked Solution

At 10 V, the branch resistances are:

$$
R=\frac{V}{I}
$$

- 10 mA branch: 1 kΩ;
- 5 mA branch: 2 kΩ;
- second 5 mA branch: 2 kΩ.

Total current:

$$
I_T=10+5+5=20\ \text{mA}
$$

Equivalent resistance:

$$
R_T=\frac{10\ \text{V}}{20\ \text{mA}}=500\ \Omega
$$

Total conductance:

$$
G_T=2\ \text{mS}
$$

Branch powers:

- 1 kΩ: 100 mW;
- each 2 kΩ: 50 mW.

The 1 kΩ branch should use at least a 0.25 W resistor to remain below 50% of rating. Each 2 kΩ branch may use 0.125 W or 0.25 W.

KCL check:

$$
20\ \text{mA}=10\ \text{mA}+5\ \text{mA}+5\ \text{mA}
$$