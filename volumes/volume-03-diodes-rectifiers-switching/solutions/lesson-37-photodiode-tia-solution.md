# Lesson 37 Challenge — Reference Solution

For 20 µA maximum signal and about 1.5 V usable output excursion from the 1.65 V reference:

$$R_F\le\frac{1.5\text{ V}}{20\ \mu A}=75\text{ k}\Omega$$

Choose 68 kΩ as a practical starting value. Full-scale signal is about 1.36 V.

The op-amp should have:

- gain-bandwidth comfortably above the required 200 kHz closed-loop behavior;
- low input-current noise and bias current;
- low voltage noise, especially with 25 pF input capacitance;
- input common-mode range including 1.65 V;
- output swing covering approximately 0.3–3.0 V;
- stable behavior with capacitive input and feedback.

Start with a few picofarads of feedback capacitance, then sweep $C_F$ while checking overshoot, phase margin, and bandwidth. Verify the actual photodiode, op-amp input, package, and PCB capacitance total.