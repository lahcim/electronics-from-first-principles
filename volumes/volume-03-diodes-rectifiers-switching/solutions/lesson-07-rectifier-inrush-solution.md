# Lesson 7 Challenge — Worked Solution

For 24 V RMS:

$$V_{PK}=24\sqrt2\approx33.9\text{ V}$$

With 0.8 Ω minimum source resistance:

$$I_{initial}\approx33.9/0.8\approx42.4\text{ A}$$

Stored energy at full charge:

$$E_C=\frac12(6800\mu F)(33.9^2)\approx3.91\text{ J}$$

To limit peak below 20 A, total cold-path resistance must be at least:

$$R_{total}\ge33.9/20\approx1.70\ \Omega$$

Therefore add roughly 0.9 Ω or more at startup, with pulse-energy margin. Use an NTC only if hot restart is acceptable; otherwise use a resistor-plus-relay/MOSFET precharge path and verify bypass surge.