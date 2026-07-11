# Lesson 8 Design Challenge — Worked Solution

At 2 mA, the required resistor for each desired voltage drop is:

$$
R=\frac{V}{I}
$$

Therefore:

- 2 V drop: 1 kΩ;
- 4 V drop: 2 kΩ;
- 6 V drop: 3 kΩ.

Total resistance is 6 kΩ, so:

$$
I=\frac{12\ \text{V}}{6\ \text{k}\Omega}=2\ \text{mA}
$$

Power:

- 1 kΩ: 4 mW;
- 2 kΩ: 8 mW;
- 3 kΩ: 12 mW.

A 0.125 W or 0.25 W rating satisfies the 50% rule.

With the 1 kΩ resistor nearest the source and the 3 kΩ nearest ground, expected node voltages are 12 V, 10 V, 6 V, and 0 V.

KVL check:

$$
12-2-4-6=0
$$