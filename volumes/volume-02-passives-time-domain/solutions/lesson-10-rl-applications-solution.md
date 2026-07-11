# Lesson 10 Challenge — Reference Solution

Load: 24 V, 12 Ω, 24 mH. DC current at 100% duty is 2 A. A first estimate for 1 A average is 50% duty, but resistance, current ripple, diode drop, and off-state path make the exact result frequency-dependent.

At 1 kHz, period is 1 ms, which is half the 2 ms RL time constant. Current changes substantially during each cycle, so ripple is large.

At 20 kHz, period is 50 µs, only 2.5% of the time constant. Current is much smoother and the 50% duty estimate is closer.

Use the flyback diode model and sweep duty around 50% while measuring average, minimum, and maximum current. Select the duty that gives approximately 1 A average and verify peak current is below the coil and switch limits. A plain diode minimizes switch voltage but slows decay; a higher clamp increases ripple and may require lower duty.