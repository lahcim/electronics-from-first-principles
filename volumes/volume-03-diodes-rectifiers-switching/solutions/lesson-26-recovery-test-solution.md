# Lesson 26 Challenge — Reference Solution

For 5 A at 400 V and 100 A/µs, choose an inductor large enough that current changes little during the commutation window. A 100 µH inductor changes only:

$$\Delta I=\frac{V\Delta t}{L}$$

For a 100 ns event at 400 V, $\Delta I\approx0.4$ A.

Use a switch rated comfortably above 600 V with peak current above load plus recovery current. Measure diode current with a low-inductance shunt or wide-band current probe, diode voltage with a high-bandwidth differential probe, and deskew voltage/current channels before integrating energy. Record $I_F$, $di/dt$, $I_{RRM}$, $t_{rr}$, $Q_{rr}$, switch peak current, temperature, and loop inductance.