# Lesson 9 Challenge — Reference Solution

For a 20 kHz PWM signal, period is 50 µs. A single RC with a time constant much larger than 50 µs reduces ripple, but a very large time constant violates the 150 ms settling requirement.

A practical two-stage starting design is:

- Stage 1: 10 kΩ and 1 µF, $\tau_1=10$ ms;
- Stage 2: 10 kΩ and 1 µF, $\tau_2=10$ ms;
- 100 kΩ load included in simulation.

Each stage has a corner near 15.9 Hz, far below 20 kHz, providing strong PWM attenuation. The cascaded unloaded settling is on the order of several tens of milliseconds; direct passive loading shifts the exact response, so simulation is required.

Measure steady-state `VMAX-VMIN` at 50% duty and the time to enter the final-value ±1% band after a duty step. If settling is too slow, reduce one C; if ripple is too high, increase the second stage impedance ratio or use an active buffer. The final values must meet both measurements with the 100 kΩ load present.