# Lesson 27 Challenge — Worked Solution

A high-pass RC output decays as $V=V_0e^{-t/RC}$. Require 3.3 V to fall below 0.5 V in 500 µs:

$$RC\le-\frac{500\ \mu s}{\ln(0.5/3.3)}\approx265\ \mu s$$

With 100 kΩ load, choose C = 2.2 nF, giving about 220 µs. Initial peak is close to 3.3 V for a low-impedance source. At 500 µs:

$$V\approx3.3e^{-500/220}\approx0.34\text{ V}$$

The falling edge creates a negative pulse. Clamp it with a diode network or feed the signal into an input rated for the excursion; include clamp current and altered time constant in simulation.