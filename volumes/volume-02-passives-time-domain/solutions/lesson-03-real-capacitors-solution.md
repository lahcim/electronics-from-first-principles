# Lesson 3 Challenge — Worked Solution

Load step: 1 A for 50 µs. Total allowed droop: 100 mV.

Reserve 30 mV for ESR and 70 mV for capacitive droop.

Maximum bank ESR:

$$ESR\le\frac{30\text{ mV}}{1\text{ A}}=30\text{ m}\Omega$$

Required effective capacitance:

$$C\ge\frac{I\Delta t}{\Delta V_C}=\frac{1\cdot50\ \mu s}{70\text{ mV}}=714\ \mu\text{F}$$

A practical starting bank is:

- one 820 µF low-ESR polymer/electrolytic for energy;
- one or more 10 µF X7R ceramics for medium-frequency current;
- 100 nF ceramic close to the load for the fastest edge.

The 820 µF part must have ESR below 30 mΩ or the bank’s parallel combination must meet that target. Ceramic effective capacitance must be checked at 3.3 V bias. ESL and layout are validated with a fast-edge model; the bulk calculation alone does not guarantee the first nanoseconds.