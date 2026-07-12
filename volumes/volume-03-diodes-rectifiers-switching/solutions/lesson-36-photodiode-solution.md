# Lesson 36 Challenge — Worked Solution

Photocurrent range:

$$I_{PH}=0.45P$$

At 1 µW:

$$I_{MIN}=0.45\ \mu A$$

At 100 µW:

$$I_{MAX}=45\ \mu A$$

With 100 kΩ and 20 pF, the ideal pole is:

$$f_c=\frac{1}{2\pi(100\text{ k}\Omega)(20\text{ pF})}\approx79.6\text{ kHz}$$

This already misses the 100 kHz requirement before amplifier, package, and PCB capacitance are included. Use a lower resistor or a TIA. Reverse bias is helpful because it lowers junction capacitance, but dark current and noise must be checked.