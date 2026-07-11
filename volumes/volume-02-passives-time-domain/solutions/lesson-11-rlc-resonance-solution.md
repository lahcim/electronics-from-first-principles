# Lesson 11 Challenge — Worked Solution

Given ringing frequency $f_0=20$ MHz and capacitance $C=500$ pF:

$$L=\frac{1}{(2\pi f_0)^2C}$$

$$L\approx126.7\text{ nH}$$

A common RC-snubber starting method is to choose Csnub comparable to or a few times the estimated ringing capacitance, then choose:

$$R_{snub}\approx\sqrt{\frac{L}{C_{snub}}}$$

For $C_{snub}=1$ nF:

$$R_{snub}\approx\sqrt{126.7\text{ nH}/1\text{ nF}}\approx11.3\ \Omega$$

Start near 10–12 Ω and 1 nF, then sweep R and C while observing overshoot, decay, switching loss, and device stress.

A rough upper-bound snubber energy per transition is $\tfrac12C_{snub}V^2$. At switching frequency $f_s$, estimate power from the number of charge/discharge events per second, then verify by integrating simulated resistor power. Hardware tuning should use a low-inductance probe because probe ground leads can create false ringing.