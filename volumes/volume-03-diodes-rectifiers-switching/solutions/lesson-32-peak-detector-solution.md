# Lesson 32 Challenge — Worked Solution

From the droop requirement:

$$C\ge\frac{I\Delta t}{\Delta V}=rac{20\text{ nA}\cdot50\text{ ms}}{5\text{ mV}}=200\text{ nF}$$

Choose 220 nF minimum, with leakage and tolerance margin.

For a first-order charge to within 20 mV of 3 V in 5 µs:

$$e^{-t/(RC)}\le\frac{20\text{ mV}}{3\text{ V}}$$

$$RC\le\frac{5\ \mu s}{\ln(150)}\approx1.0\ \mu s$$

With 220 nF:

$$R_{charge}\lesssim4.5\ \Omega$$

This is impractically low for many passive sources, so an active peak detector or smaller capacitor followed by a low-leakage buffer may be required. The challenge exposes the acquisition-versus-hold tradeoff.