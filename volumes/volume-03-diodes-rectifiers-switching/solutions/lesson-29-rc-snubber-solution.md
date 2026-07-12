# Lesson 29 Challenge — Worked Solution

Let original capacitance be $C_P$ and added capacitance be 220 pF.

Because $f\propto1/\sqrt{C}$:

$$\left(\frac{45}{30}\right)^2=\frac{C_P+220\text{ pF}}{C_P}=2.25$$

Therefore:

$$C_P\approx176\text{ pF}$$

Using 45 MHz:

$$L_P=\frac{1}{(2\pi f)^2C_P}\approx71\text{ nH}$$

Choose a starting snubber capacitor around 220–470 pF. With 220 pF total added, a damping resistance estimate is:

$$R\approx\sqrt{71\text{ nH}/(176+220)\text{ pF}}\approx13.4\ \Omega$$

Start near 12–15 Ω and tune. For 220 pF, 100 V, and 200 kHz, the rough loss scale is:

$$P\approx CV^2f=0.44\text{ W}$$

Verify actual waveform and resistor pulse rating.