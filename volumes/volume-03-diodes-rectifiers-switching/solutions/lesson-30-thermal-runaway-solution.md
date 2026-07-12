# Lesson 30 Challenge — Worked Solution

At 25°C:

$$P_{leak}=48\text{ V}\cdot0.2\text{ mA}=9.6\text{ mW}$$

At 125°C:

$$P_{leak}=48\text{ V}\cdot20\text{ mA}=0.96\text{ W}$$

At 0.96 W and 35°C/W, leakage alone would raise junction temperature by about:

$$\Delta T\approx33.6°C$$

From an 85°C ambient, that suggests about 119°C before conduction loss. Because leakage is already approaching the stated 125°C value, a stable point may exist only with limited margin. Iterate leakage versus temperature using the datasheet curve and add conduction loss. Do not accept the design unless the calculation converges below the allowed junction temperature across tolerance and cooling variation.