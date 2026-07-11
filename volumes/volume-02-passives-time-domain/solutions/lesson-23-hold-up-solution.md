# Lesson 23 Challenge — Worked Solution

Load power is 1 W. With 85% efficiency, capacitor power is:

$$P_C=1/0.85=1.176\text{ W}$$

Usable voltage is 5.0 V down to 3.8 V. Required energy for 100 ms:

$$E=P_Ct=0.1176\text{ J}$$

Using:

$$E=\frac12C(V_1^2-V_2^2)$$

$$C=\frac{2E}{25-14.44}\approx22.3\text{ mF}$$

Reserve 100 mV for ESR. The initial current is approximately:

$$I=P_C/V\approx0.235\text{ A}$$

Therefore:

$$ESR\le0.1/0.235\approx0.43\ \Omega$$

Choose at least 27 mF nominal before tolerance, leakage, aging, and efficiency margin. A practical design may use 33 mF low-ESR bulk capacitance behind a Schottky or ideal-diode MOSFET. Simulate a constant-power load because current rises as voltage falls.