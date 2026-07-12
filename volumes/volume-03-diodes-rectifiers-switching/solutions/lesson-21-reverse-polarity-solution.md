# Lesson 21 Challenge — Reference Solution

At 3 A and 0.5 W maximum loss, the MOSFET path requires:

$$R_{DS(on)}\le\frac{0.5}{3^2}=55.6\text{ m}\Omega$$

Choose substantially lower resistance, such as 15–25 mΩ at the guaranteed gate voltage and hot junction temperature. A Schottky with 0.35 V drop would dissipate about 1.05 W and fail the loss requirement.

Use a MOSFET voltage rating above the 12 V source plus transients, typically 30–40 V or more depending on environment. Add a gate-source Zener or other clamp so $|V_{GS}|$ remains within rating. Verify reverse −15 V, body-diode orientation, startup, output-capacitor backfeed, and hot $R_{DS(on)}$.