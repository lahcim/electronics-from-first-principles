# Lesson 19 Challenge — Worked Solution

For a 2 A change in 10 ns:

$$\frac{di}{dt}=200\text{ MA/s}$$

With 6 nH loop inductance:

$$V_L=6\text{ nH}\cdot200\text{ MA/s}=1.2\text{ V}$$

With 15 mΩ resistance:

$$V_R=2\text{ A}\cdot15\text{ m}\Omega=30\text{ mV}$$

The edge error is dominated by inductance.

To keep total error below 250 mV, the idealized inductance budget after allowing 30 mV resistive drop is:

$$L\le\frac{220\text{ mV}}{200\text{ MA/s}}=1.1\text{ nH}$$

This requires a much smaller supply-return loop and local capacitor placement. A practical redesign uses a close power/ground plane pair, local small-package ceramics directly at the load pins, and wider/shorter current paths. Simulation must include capacitor ESL; increasing remote capacitance alone cannot satisfy the first 10 ns.