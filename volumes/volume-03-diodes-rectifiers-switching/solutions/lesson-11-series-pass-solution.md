# Lesson 11 Challenge — Reference Solution

A 5 V output from an emitter follower needs a base reference near 5.6–5.8 V. A 5.6 V Zener gives roughly 4.8–5.0 V depending on $V_{BE}$.

At 100 mA and minimum beta 40:

$$I_B=2.5\text{ mA}$$

Allow at least 5 mA Zener current, so the bias resistor must supply about 7.5 mA at minimum 9 V input. With a 5.6 V reference:

$$R\le\frac{9-5.6}{7.5\text{ mA}}\approx453\ \Omega$$

Choose 430 Ω.

Worst transistor power at 14 V and 100 mA is approximately:

$$P_Q=(14-5)(0.1)=0.9\text{ W}$$

Use a transistor and thermal path with SOA and temperature margin above this value.