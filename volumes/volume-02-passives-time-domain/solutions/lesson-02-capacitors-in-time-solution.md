# Lesson 2 Challenge — Worked Solution

Target: 5 V node crosses 3.0 V at 100 ms.

For charging:

$$t=-RC\ln\left(1-\frac{3}{5}\right)=0.9163RC$$

Therefore:

$$RC=\frac{100\text{ ms}}{0.9163}=109.1\text{ ms}$$

Initial current must be below 1 mA, so:

$$R>\frac{5\text{ V}}{1\text{ mA}}=5\text{ k}\Omega$$

Choose E24 $R=110\text{ k}\Omega$ and $C=1\ \mu\text{F}$.

Then $RC=110$ ms and:

$$t=0.9163(110\text{ ms})=100.8\text{ ms}$$

Initial current:

$$I_0=\frac5{110\text{k}}=45.5\ \mu\text{A}$$

With ±10% capacitor tolerance, crossing time varies approximately ±10%: 90.7–110.9 ms, ignoring resistor and threshold tolerance. This demonstrates why passive RC timing is unsuitable for tight timing unless calibrated or followed by a controlled threshold device.