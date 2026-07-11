# Lesson 6 Challenge — Worked Solution

Solenoid:

- 24 V;
- 48 Ω;
- 200 mH;
- steady current 0.5 A;
- stored energy:

$$E=\frac12LI^2=\frac12(0.2)(0.5^2)=25\text{ mJ}$$

A plain diode leaves only about the coil resistance plus diode drop to force decay, so current falls relatively slowly.

To reach 50 mA in 5 ms with approximately exponential decay:

$$\frac{I}{I_0}=e^{-tR_{eq}/L}$$

$$R_{eq}= -\frac{L}{t}\ln\left(\frac{0.05}{0.5}\right)=92.1\ \Omega$$

The coil already provides 48 Ω, so roughly 44 Ω of additional effective clamp resistance is needed. At 0.5 A that corresponds to about 22 V additional reverse voltage. A clamp near 24 V above the supply is therefore a reasonable starting point.

With a 24 V supply and approximately 24 V clamp above it, switch VDS approaches 48 V plus tolerances and overshoot. For a desired 60 V maximum, layout and clamp tolerance are critical; a lower nominal clamp or a higher-rated MOSFET is safer.

Select the clamp for at least 25 mJ per event with at least 2× energy margin and verify average power from switching frequency. Simulate current decay, peak VDS, and clamp energy rather than relying only on the exponential approximation.