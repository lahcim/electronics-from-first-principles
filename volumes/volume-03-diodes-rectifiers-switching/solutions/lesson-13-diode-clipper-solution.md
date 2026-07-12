# Lesson 13 Challenge — Reference Solution

Use clamp paths referenced near 3.0 V and −3.0 V so silicon diode conduction begins around ±3.6 V. The worst excess voltage is approximately:

$$12-3.6=8.4\text{ V}$$

To keep clamp current below 5 mA:

$$R_{total}\ge8.4/5\text{ mA}=1.68\text{ k}\Omega$$

Subtract the 100 Ω source resistance and choose about 1.8 kΩ added series resistance.

For 20 kHz normal signals, diode capacitance and ADC input capacitance form an RC pole with the series resistance. Verify attenuation and settling using the actual capacitance model. Low-capacitance clamp diodes or a two-stage protection network may be needed.