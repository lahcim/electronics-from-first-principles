# Lesson 31 Challenge — Reference Solution

The carrier period at 200 kHz is 5 µs. The fastest envelope period at 5 kHz is 200 µs.

Choose an initial time constant between them, for example 20–50 µs:

$$5\ \mu s\ll RC\ll200\ \mu s$$

A 10 kΩ resistor with 2.2–4.7 nF gives 22–47 µs. Simulate carrier ripple and falling-envelope distortion, then tune.

At only 0.2 V peak, a passive silicon diode cannot meet 20 mV accuracy. Even a Schottky diode introduces substantial nonlinear error and leakage. Use a biased detector, precision rectifier, or active envelope detector for the low-level requirement.