# Lesson 39 Challenge — Reference Solution

## Stimulus

Drive the relay coil from 12 V through the production MOSFET. Use a repeatable digital control edge and record coil current before turn-off.

## Measurements

- MOSFET VDS with a suitably rated low-capacitance differential probe;
- coil current with a current probe or low-inductance shunt and differential measurement;
- gate voltage to establish switching time;
- clamp voltage directly across the clamp.

## Pass/fail

- peak VDS below 50 V over supply and coil-resistance corners;
- coil current below 10 mA within 8 ms;
- integrated clamp energy below repetitive rating with margin;
- no threshold recrossing or parasitic turn-on.

## Model comparison

Simulate minimum and maximum coil resistance, inductance tolerance, clamp tolerance, MOSFET capacitance, wiring inductance, and probe capacitance. Save the same numerical measurements from simulation and hardware.

Repeat with a spring-ground or alternate differential setup where safe. A materially different peak indicates probe-loop or loading error that must be modeled before accepting the result.