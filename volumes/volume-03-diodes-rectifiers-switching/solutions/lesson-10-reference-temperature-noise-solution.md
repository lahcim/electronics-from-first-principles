# Lesson 10 Challenge — Worked Solution

For the 5.1 V Zener at 200 ppm/°C over 70°C:

$$\Delta V_T=5.1(200\times10^{-6})(70)\approx71.4\text{ mV}$$

This already exceeds the ±20 mV requirement before initial tolerance.

For a 5.0 V precision reference at 20 ppm/°C:

$$\Delta V_T=5(20\times10^{-6})(70)=7\text{ mV}$$

Initial tolerance adds approximately ±51 mV for the ±1% Zener and ±10 mV for the ±0.2% precision reference. The precision reference can plausibly meet ±20 mV after combining temperature and initial error; the Zener cannot without calibration or compensation.