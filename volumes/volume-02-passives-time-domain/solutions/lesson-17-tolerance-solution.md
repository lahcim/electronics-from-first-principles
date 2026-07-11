# Lesson 17 Challenge — Reference Solution

For charging to threshold:

$$t=-RC\ln\left(1-\frac{V_T}{V_S}\right)$$

Choose $R=120\text{ k}\Omega$ and $C=1\ \mu\text{F}$.

Nominal at 3.3 V and 2.0 V threshold:

$$t\approx111.7\text{ ms}$$

Fast corner uses minimum R, minimum C, low threshold, and high supply:

$$R=118.8\text{ k}\Omega,\ C=0.9\ \mu\text{F},\ V_T=1.9\text{ V},\ V_S=3.45\text{ V}$$

This gives approximately 85.7 ms, which fails the 90 ms minimum.

Try $R=130\text{ k}\Omega$ with 1 µF. The nominal delay is about 121 ms, but the slow corner may exceed 130 ms. This reveals that the requested guaranteed range is tight for ±10% capacitance plus threshold and supply variation.

A practical conclusion is to use a tighter capacitor, a calibrated threshold, or a timer/supervisor IC. The engineering answer is allowed to be “the passive topology cannot guarantee the requirement with the available parts.”