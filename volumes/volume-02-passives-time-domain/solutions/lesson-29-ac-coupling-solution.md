# Lesson 29 Challenge — Reference Solution

For 2% droop during a 2 ms pulse:

$$1-e^{-t_p/RC}\le0.02$$

$$RC\ge-\frac{2\text{ ms}}{\ln(0.98)}\approx99\text{ ms}$$

With 47 kΩ input resistance:

$$C\ge2.11\ \mu F$$

Choose 2.2 µF minimum, preferably a nonpolar or correctly biased part.

At 10 Hz, the period is 100 ms. A 99–103 ms time constant does not return to within 1% of baseline before the next pulse; 1% recovery requires about $4.6RC$, roughly 460 ms. Therefore the droop and recovery requirements conflict for a simple single high-pass RC at 10 Hz.

Use active baseline restoration, a lower source impedance with controlled bias, or relax one requirement. The correct engineering conclusion is that one passive coupling capacitor cannot guarantee both specifications.