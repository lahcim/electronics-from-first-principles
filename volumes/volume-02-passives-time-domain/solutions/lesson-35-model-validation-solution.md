# Lesson 35 Challenge — Reference Solution

Create a one-port AC fixture with a 1 V AC source and a small current-sense resistor. Plot:

$$|Z|=\left|\frac{V}{I}\right|$$

For a capacitor model, verify:

- low-frequency slope near $1/(2\pi fC)$;
- minimum impedance near ESR;
- self-resonance where capacitive and inductive reactances cancel;
- inductive rise above resonance;
- leakage behavior at low frequency if included.

Then fit a simplified series RLC model using:

- C from low-frequency slope;
- ESR from minimum impedance;
- ESL from $f_{SR}=1/(2\pi\sqrt{LC})$.

Document the frequency range over which the simplified model stays within a chosen error, such as ±20%, and retain the vendor model only where its extra behavior is relevant.