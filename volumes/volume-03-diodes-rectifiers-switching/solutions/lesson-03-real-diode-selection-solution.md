# Lesson 3 Challenge — Reference Solution

For a 12 V, 1 A freewheel path at 200 kHz with 24 V peak reverse stress, a Schottky diode is the natural first candidate if a suitable voltage and temperature rating is available.

Minimum checks:

- repetitive reverse voltage comfortably above 24 V, typically 40–60 V or more after margin;
- average and peak current above the actual waveform;
- forward voltage near 1 A at the expected junction temperature;
- leakage at 70°C ambient and estimated junction temperature;
- package thermal resistance and allowable power;
- junction capacitance and switching loss;
- surge capability.

A standard silicon PN diode is usually too slow and lossy. A fast-recovery diode may be suitable at higher voltage or temperature, but reverse-recovery loss must be checked. A Schottky usually minimizes recovery loss, but leakage and reverse-voltage margin can dominate.