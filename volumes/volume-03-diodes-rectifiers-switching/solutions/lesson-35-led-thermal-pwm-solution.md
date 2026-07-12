# Lesson 35 Challenge — Reference Solution

At 350 mA, a resistor from 12 V to a 3.2 V LED requires about:

$$R=(12-3.2)/0.35\approx25.1\ \Omega$$

Resistor loss is approximately:

$$P_R=(12-3.2)(0.35)=3.08\text{ W}$$

LED electrical power is about 1.12 W, so the resistor path is only roughly 27% efficient.

A linear current driver dissipates nearly the same 3.08 W. A 90% efficient buck supplying 1.12 W draws about 1.24 W, losing only about 0.12 W.

For $T_A=60°C$ and $T_J<110°C$, allowable total LED thermal resistance is:

$$\theta_{JA,total}<\frac{50°C}{P_{heat}}$$

Using a conservative 1 W heat estimate gives less than 50°C/W. Use actual optical efficiency and driver loss, then verify at 100% duty. PWM from 20–100% reduces average heating, but peak current remains 350 mA.