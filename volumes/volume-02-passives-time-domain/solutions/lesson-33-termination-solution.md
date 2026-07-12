# Lesson 33 Challenge — Worked Solution

Driver resistance is 15 Ω and the line is 50 Ω.

Choose:

$$R_{series}=50-15=35\ \Omega$$

Use 33 Ω or 36 Ω depending on the available series and measured driver resistance.

With 35 Ω total added, source impedance is 50 Ω. The initial launched voltage is:

$$V^+=3.3\frac{50}{50+50}=1.65\text{ V}$$

At the high-impedance receiver, $\Gamma_L\approx+1$, so the arriving wave doubles toward 3.3 V. The reflection returns after another 20 ns round trip and is absorbed by the matched source.

Verify receiver voltage at 10 ns, source-end behavior at 20 ns, rise time with receiver capacitance, and tolerance of driver output resistance.