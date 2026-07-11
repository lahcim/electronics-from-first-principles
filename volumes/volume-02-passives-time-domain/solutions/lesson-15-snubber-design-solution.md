# Lesson 15 Challenge — Worked Solution

Given:

- $V=48$ V;
- $f_r=18$ MHz;
- estimated $C=700$ pF;
- switching frequency 250 kHz.

Estimated parasitic inductance:

$$L=\frac1{(2\pi f_r)^2C}\approx111.7\text{ nH}$$

Choose a starting snubber capacitor near 1.5 nF.

$$R_{snub}\approx\sqrt{L/C_{snub}}\approx\sqrt{111.7\text{ nH}/1.5\text{ nF}}\approx8.6\ \Omega$$

Start with 8.2–10 Ω and sweep:

- C: 680 pF, 1 nF, 1.5 nF, 2.2 nF;
- R: 4.7 Ω, 8.2 Ω, 10 Ω, 15 Ω, 22 Ω.

A rough capacitor energy per full charge is:

$$E=\frac12CV^2\approx1.73\ \mu J$$

At 250 kHz, one such event per cycle corresponds to about 0.432 W; two comparable events would approach 0.864 W. The actual topology and waveform determine the real resistor power, so integrate simulated power and reject combinations above 0.75 W.

Choose the lowest-loss combination that keeps peak voltage and decay within requirements, then verify with a low-inductance probe in hardware.