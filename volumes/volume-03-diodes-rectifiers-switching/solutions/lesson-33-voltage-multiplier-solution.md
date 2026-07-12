# Lesson 33 Challenge — Reference Solution

Use an inverting charge pump driven by the 0–5 V clock.

For 5 mA load, 100 kHz, and 0.5 V allowed ripple:

$$C\ge\frac{I}{f\Delta V}=\frac{5\text{ mA}}{100\text{ kHz}\cdot0.5\text{ V}}=100\text{ nF}$$

This is only the ideal charge-balance minimum. Choose 1 µF or more to reduce output impedance and account for capacitance tolerance, ESR, diode drop, and switching resistance.

A rough allowed effective output resistance from the 0.5 V loss budget is:

$$R_{out}\le0.5\text{ V}/5\text{ mA}=100\ \Omega$$

Startup time is several $R_{out}C_{out}$ constants or multiple clock cycles. Verify peak switch/diode current and the exact negative voltage under load.