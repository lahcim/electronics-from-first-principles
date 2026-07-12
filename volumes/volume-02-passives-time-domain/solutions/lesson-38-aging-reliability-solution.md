# Lesson 38 Challenge — Reference Solution

Initial ESR heating at 1 A RMS:

$$P_{ESR}=I^2ESR=1^2\cdot0.08=80\text{ mW}$$

A defensible end-of-life model might begin with:

- capacitance reduced to 70–80% of initial;
- ESR increased to 2× initial;
- ripple current unchanged or increased at worst-case load;
- hotspot temperature calculated from ESR loss and thermal path.

At 2× ESR, heating becomes 160 mW at the same ripple current. That can further increase core temperature and accelerate aging.

Manufacturer data required:

- rated life at stated temperature and ripple;
- life multiplier versus temperature;
- ripple-current multiplier versus frequency and temperature;
- maximum ESR or impedance at end of life;
- allowable capacitance change;
- thermal-resistance or temperature-rise guidance;
- voltage and surge derating guidance.

The 10-year claim is valid only after estimating capacitor hotspot temperature and applying the manufacturer’s lifetime model, not the generic 10°C rule alone.