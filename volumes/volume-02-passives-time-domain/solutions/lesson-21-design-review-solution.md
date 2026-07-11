# Lesson 21 Design Review — Reference Solution

## Logic rail

Reserve 50 mV for ESR/ESL and 150 mV for capacitance:

$$C_{effective}\ge533\ \mu F$$

The 4 nH remote path produces an idealized 400 mV edge term for a 2 A change in 20 ns, so remote bulk cannot meet the first-edge requirement. Use local low-ESL ceramics at the load, plus 680–1000 µF effective bulk for the 40 µs interval. Verify regulator stability and inrush.

## Button

For a 5 V rail and 3 V rising threshold:

$$t=0.916RC$$

A 100 kΩ/220 nF network gives about 20.2 ms nominal and low switch current. Check release at the 1.5 V falling threshold and ±20% capacitor corners. A Schmitt input is required.

## Solenoid

Steady current is 1 A and stored energy is 60 mJ. A plain diode gives a long decay. A clamp that permits approximately 40–50 V across the coil speeds release, but total MOSFET VDS must remain below the 80 V rating with margin. Use a higher-rated MOSFET or lower clamp if tolerance/layout overshoot erodes margin. Verify clamp energy above 60 mJ per event and average power at the actual rate.

## Ringing

Estimated parasitic resonance is about 53 MHz. First reduce the 15 nH loop inductance. Then sweep an RC snubber starting with capacitance near 600 pF–1.5 nF and resistance near $\sqrt{L/C}$. Verify overshoot and power.

## Measurement

Measure the rail directly at load pins with a spring-ground or low-inductance coax method. Measure the switch node with a suitably rated differential probe. Save probe models and setup details with the validation results.