# Lesson 16 Challenge — Reference Solution

For a +24 V fault and a 2.8 V upper clamp target:

$$R\ge\frac{24-2.8}{1\text{ mA}}=21.2\text{ k}\Omega$$

For a −24 V fault and a −0.3 V lower clamp:

$$R\ge\frac{24-0.3}{1\text{ mA}}=23.7\text{ k}\Omega$$

Choose 24 kΩ or 27 kΩ. With 30 pF input capacitance, 24 kΩ creates a pole near 221 kHz, well above the 2 kHz signal bandwidth. Verify ADC acquisition settling and rail back-powering. Prefer low-leakage, low-capacitance external clamps to a dedicated sink-capable clamp node.