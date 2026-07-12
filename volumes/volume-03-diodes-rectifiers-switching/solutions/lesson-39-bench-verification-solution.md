# Lesson 39 Challenge — Reference Solution

Use this sequence:

1. Low-voltage, current-limited polarity and continuity test.
2. Nominal 12 V startup with reduced reservoir capacitance.
3. Full 2200 µF startup while measuring peak current and fuse $I^2t$.
4. Steady ripple and diode temperature at full load.
5. Reverse-input test with current limit active.
6. Controlled 24 V overvoltage pulse while measuring TVS voltage, current, and energy.
7. Output short with fuse/limiter coordination.
8. Hot restart after thermal equilibrium.

Pass/fail metrics should include maximum capacitor voltage, minimum loaded bus voltage, ripple, peak inrush, TVS clamp voltage, TVS pulse energy, fuse clearing behavior, reverse current, and component temperature. Use short or differential probes and deskew voltage/current channels before energy integration.