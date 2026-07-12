# Lesson 6 Challenge — Reference Solution

No-load secondary voltage with 12% regulation:

$$V_{NL}=15(1.12)=16.8\text{ V RMS}$$

Peak capacitor voltage at nominal line is approximately:

$$V_{C,max}\approx16.8\sqrt2-2(0.7)\approx22.4\text{ V}$$

At 0.5 A with 3300 µF and 120 Hz ripple:

$$\Delta V\approx\frac{0.5}{120\cdot3300\mu F}\approx1.26\text{ V}$$

A first full-load estimate is therefore roughly the loaded secondary peak minus bridge loss and ripple. Confidence requires winding resistance, full-load secondary voltage, line tolerance, transformer VA rating, temperature rise, leakage inductance, and diode conduction-current data.