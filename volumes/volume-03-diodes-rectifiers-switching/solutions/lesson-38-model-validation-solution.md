# Lesson 38 Challenge — Reference Solution

Use separate fixtures for each required behavior.

## Forward drop

Sweep current from milliamps through 5 A at 25°C and the expected hot junction temperature. Compare the model against datasheet forward-voltage curves at matching conditions.

## Reverse leakage

Bias near the actual maximum reverse voltage and compare leakage at hot temperature. Do not extrapolate from the 25°C typical value.

## Junction capacitance

Sweep reverse bias and compare $C_J(V_R)$ against the datasheet capacitance curve. Include package and PCB capacitance in the converter model.

## Switching

Use the controlled commutation fixture at the actual current and $di/dt$. A Schottky should show mainly displacement current rather than minority-carrier recovery.

SPICE alone cannot prove surge survival, repetitive avalanche capability, maximum junction temperature, solder reliability, fuse coordination, or long-term lifetime. Those require ratings, thermal calculations, and hardware testing.