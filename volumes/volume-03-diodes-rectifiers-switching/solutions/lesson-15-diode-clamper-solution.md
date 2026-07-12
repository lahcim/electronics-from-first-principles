# Lesson 15 Challenge — Reference Solution

A 4 V peak-to-peak sine has 2 V peak. A Schottky diode is preferred because its lower forward drop keeps the negative peak closer to 0 V.

For less than 2% droop per 2 ms cycle:

$$1-e^{-T/RC}\le0.02$$

$$RC\ge-\frac{2\text{ ms}}{\ln(0.98)}\approx99\text{ ms}$$

With a 47 kΩ load:

$$C\ge99\text{ ms}/47\text{ k}\Omega\approx2.1\ \mu F$$

Choose 2.2 µF minimum, then verify diode leakage, source resistance, capacitor tolerance, startup cycles, and negative-peak range. A 4.7 µF part provides more droop margin.