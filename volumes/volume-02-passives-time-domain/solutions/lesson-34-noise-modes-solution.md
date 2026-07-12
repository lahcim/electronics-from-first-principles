# Lesson 34 Challenge — Reference Solution

For a 24 V, 2 A cable with dominant 2 MHz common-mode noise, start with:

- a common-mode choke rated above 2 A DC with useful common-mode impedance at 2 MHz;
- small symmetric Y capacitors to chassis where leakage and safety permit;
- an X capacitor across the pair for the remaining differential component;
- optional differential series inductance or use of choke leakage inductance;
- damping if the source/load and filter form a high-Q resonance.

Simulate differential excitation separately from common-mode excitation. Measure:

$$A_{DM}=20\log_{10}\left|\frac{V_{out,DM}}{V_{in,DM}}\right|$$

and the equivalent common-mode ratio. Check choke saturation, DCR loss, self-resonance, Y-capacitor leakage, and layout capacitance that can bypass the choke.