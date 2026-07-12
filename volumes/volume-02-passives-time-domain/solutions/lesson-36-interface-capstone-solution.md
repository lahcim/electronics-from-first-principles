# Lesson 36 Capstone — Reference Solution

## Termination

Choose 33 Ω at the driver. Combined with 18 Ω output resistance, the source is near the 50 Ω cable impedance.

## Receiver timing

Simulate 8 pF nominal and at least 5–15 pF corners including the probe. Verify 10–90% rise time remains 5–30 ns and threshold crossing is monotonic.

## Noise filter

Use a common-mode choke whose impedance is high near 5 MHz and whose current, DCR, and self-resonance are suitable. Add only enough line-to-line capacitance to meet differential attenuation without violating rise-time and settling requirements. Use symmetric chassis capacitors only when leakage and safety rules allow.

## Validation

Pass criteria:

- full-level receiver voltage after the reflected wave;
- no threshold recrossing;
- settling within ±5% by 80 ns;
- acceptable 5 MHz common-mode and differential attenuation;
- driver current and component ratings within limits;
- results remain valid with receiver and probe capacitance corners.

The final design must state the return path for both signal current and injected noise.