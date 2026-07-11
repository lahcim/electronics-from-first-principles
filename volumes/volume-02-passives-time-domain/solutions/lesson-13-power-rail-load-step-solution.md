# Lesson 13 Challenge — Reference Solution

Load step: 1.2 A for 50 µs. Allowed droop: 150 mV.

Reserve 30 mV for ESR/ESL, leaving 120 mV for capacitive droop.

$$C_{effective}\ge\frac{1.2\cdot50\ \mu s}{120\text{ mV}}=500\ \mu F$$

If ceramic capacitance falls to 50% under bias, an all-ceramic solution needs at least 1000 µF nominal before tolerance and temperature margin, which is often impractical.

A better starting bank is:

- 680–1000 µF low-ESR polymer/electrolytic for energy;
- 22–100 µF effective ceramic near the load for faster support;
- 100 nF–1 µF local ceramic at individual supply pins.

Combined ESR should keep the immediate step below 30 mV:

$$ESR_{bank}\le25\text{ m}\Omega$$

Model the specified 2 nH connection inductance. At a 1.2 A current change in 20 ns, the inductive term alone is:

$$V=L\frac{di}{dt}=2\text{ nH}\cdot60\text{ MA/s}=120\text{ mV}$$

This shows why the fastest current must come from an extremely local low-inductance capacitor path. The bulk-capacitance calculation does not solve the edge by itself.