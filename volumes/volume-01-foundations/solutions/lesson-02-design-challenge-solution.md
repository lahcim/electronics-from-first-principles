# Lesson 2 Design Challenge — Worked Solution

The required charge is

$$
Q=I t=(2\ \text{mA})(15\ \text{ms})=30\ \mu\text{C}
$$

Using $Q=CV$:

$$
C=\frac{Q}{V}=\frac{30\ \mu\text{C}}{3.0\ \text{V}}=10\ \mu\text{F}
$$

A standard 10 µF capacitor is therefore the reference answer.

Expected ideal simulation result at 15 ms:

| Quantity | Expected value |
|---|---:|
| current | 2.000 mA |
| transferred charge | 30.0 µC |
| capacitor voltage | 3.000 V |
| voltage slope | 0.200 V/ms |

A real 10 µF capacitor may differ substantially because of tolerance, leakage, dielectric absorption, ESR, and voltage dependence. Those effects are intentionally omitted from this first-principles model.