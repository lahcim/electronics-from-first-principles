# Lesson 18 Design Challenge — Worked Solution

Relay indicator branch requirement:

- supply: 10.8–13.2 V;
- LED drop: 1.8–2.3 V;
- desired nominal current near 6 mA;
- allowed current: 4.5–8 mA.

Using nominal 12 V and 2.1 V:

$$R=\frac{12-2.1}{6\text{ mA}}=1.65\text{ k}\Omega$$

Choose E24 value 1.8 kΩ.

Worst-case maximum current:

$$I_{MAX}=\frac{13.2-1.8}{1.8\text{ k}\Omega}=6.33\text{ mA}$$

Worst-case minimum current:

$$I_{MIN}=\frac{10.8-2.3}{1.8\text{ k}\Omega}=4.72\text{ mA}$$

Both satisfy the limits.

Worst-case resistor power:

$$P_{MAX}=I_{MAX}^2R\approx72.2\text{ mW}$$

After requiring at least 2× margin at 85°C, select a part whose **derated** rating is at least 145 mW. A 0.25 W metal-film or appropriately rated thick-film resistor is suitable if its 85°C derating curve still exceeds 145 mW.

Required working voltage is approximately 11.4 V across the resistor, easily met by common packages. A 1% tolerance is preferred to keep current predictable.