# Lesson 18 Challenge — Reference Solution

Steady relay current:

$$I_0=12/240=50\text{ mA}$$

Stored energy:

$$E_L=\frac12(80\text{ mH})(50\text{ mA})^2=0.10\text{ mJ}$$

A plain diode gives a slow decay dominated by the coil resistance and diode drop. To reach 10 mA within 3 ms, use a higher-voltage clamp while keeping total MOSFET voltage below 40 V. With a 12 V supply, leave margin for overshoot and select a clamp near 20–24 V above the supply rail, then simulate tolerance and wiring inductance. The clamp must absorb at least the 0.10 mJ pulse with repetitive margin.