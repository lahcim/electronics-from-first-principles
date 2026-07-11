# Lesson 4 Challenge — Reference Design

For a 3.3 V MCU with four supply pins:

- place one 100 nF X7R capacitor at each VDD pin, preferably 6.3 V minimum and often 10 V for better bias margin;
- place one 1 µF X7R near each supply-pin group or MCU power island;
- place 10–47 µF bulk capacitance near the MCU/regulator region, subject to regulator requirements;
- use a dedicated low-noise capacitor on the ADC reference pin exactly as the MCU datasheet specifies, commonly 100 nF plus 1 µF but not assumed without checking;
- keep each VDD-capacitor-ground loop short and connect directly to planes/vias;
- place regulator input/output capacitors according to the regulator datasheet, including allowed ESR range.

For a simplified 150 mA, 200 ns local pulse with 50 mV droop:

$$C\ge\frac{0.15\cdot200\text{ ns}}{50\text{ mV}}=600\text{ nF}$$

This supports adding local 1 µF capacitance beyond the individual 100 nF parts. The final plan must verify MCU transient current, capacitor bias loss at 3.3 V and 70°C, regulator stability, ADC-reference noise, and PCB loop inductance.