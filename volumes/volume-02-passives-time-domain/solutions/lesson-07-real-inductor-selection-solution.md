# Lesson 7 Challenge — Worked Solution

Given 2 A average and 1.2 A peak-to-peak triangular ripple:

$$I_{PK}=2+0.6=2.6\text{ A}$$

With 25% margin:

$$I_{SAT,rated}\ge3.25\text{ A}$$

RMS current:

$$I_{RMS}=\sqrt{2^2+\frac{1.2^2}{12}}\approx2.03\text{ A}$$

For copper loss below 0.4 W:

$$R_{DCR}\le\frac{0.4}{2.03^2}\approx97\text{ m}\Omega$$

Select a 10 µH part with saturation current above 3.25 A, thermal current above 2.03 A at the actual ambient, and DCR below about 97 mΩ. Check inductance-versus-DC-bias, core-loss data at 500 kHz, temperature rise, self-resonant frequency, and shielding.

If L falls to 40%, current ripple rises by approximately 2.5× for the same applied volt-seconds, potentially exceeding switch and inductor current limits.