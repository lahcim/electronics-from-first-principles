# Lesson 9 Challenge — Reference Solution

Low-line/full-load with maximum Zener voltage $6.51$ V:

$$R_{max}=\frac{10-6.51}{12\text{ mA}+3\text{ mA}}\approx233\ \Omega$$

High-line/minimum-load with minimum Zener voltage $5.89$ V and 500 mW limit:

$$I_{Z,max}\le0.5/5.89\approx84.9\text{ mA}$$

Allowing 2 mA load:

$$R_{min}\ge\frac{16-5.89}{84.9\text{ mA}+2\text{ mA}}\approx116\ \Omega$$

An overlap exists. Choose 220 Ω to reduce wasted current while meeting the low-line corner. Then check resistor tolerance, Zener power, resistor power, and temperature derating explicitly.