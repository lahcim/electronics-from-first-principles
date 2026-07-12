# Lesson 5 Challenge — Reference Solution

For a bridge on 60 Hz mains-derived AC, ripple frequency is 120 Hz.

Required effective capacitance:

$$C\ge\frac{0.3}{120\cdot1.0}=2500\ \mu F$$

With −20% tolerance:

$$C_{nominal}\ge3125\ \mu F$$

Choose 3300 µF minimum; 3900–4700 µF may provide practical margin, but larger C must be checked for current peaks.

The unloaded peak is approximately:

$$12\sqrt2-2V_F\approx15.6\text{ V}$$

A 25 V capacitor is a reasonable minimum starting rating after allowing source tolerance and light-load rise.

Simulate the 1.5 Ω source resistance and chosen diode model. If peak diode current exceeds 5 A, reduce C, add intentional series resistance or an NTC, or choose higher-surge diodes. Select capacitor ripple-current rating from simulated RMS capacitor current, not only the 300 mA DC load.