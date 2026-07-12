# Lesson 23 Challenge — Worked Solution

Required capacitance follows:

$$C=\frac{1}{(2\pi f)^2L}$$

For $L=1\ \mu H$ and 8 MHz:

$$C_{8MHz}\approx396\text{ pF}$$

For 12 MHz:

$$C_{12MHz}\approx176\text{ pF}$$

The resonator therefore needs approximately 176–396 pF total, including varactor, fixed capacitor, package, and layout capacitance. Use one or more varactors whose bias-dependent capacitance covers the missing range after parasitics. Feed reverse bias through a high-value resistor or RF choke and bypass the bias source so it does not load the tank. Verify signal amplitude never forward-biases the diode.