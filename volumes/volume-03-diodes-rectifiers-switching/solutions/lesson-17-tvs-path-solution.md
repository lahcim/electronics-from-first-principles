# Lesson 17 Challenge — Reference Solution

The TVS must have:

- working standoff above the maximum normal 12 V input;
- clamping below 28 V at 30 A after tolerance and temperature;
- 8/20 µs pulse-current and energy capability above the applied surge;
- acceptable leakage and capacitance;
- package and layout suitable for the return current.

Resistive path rise is:

$$IR=30(0.02)=0.6\text{ V}$$

For an 8/20 µs waveform, the 15 nH inductive term is relatively modest because $di/dt$ is far slower than ESD. For a 1 ns ESD edge, even 15 nH can create hundreds of volts momentarily:

$$V_L=L\frac{di}{dt}$$

Therefore place the TVS and return path very close to the connector.