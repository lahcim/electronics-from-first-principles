# Volume 4 Challenge Answer Key

1. Silicon conductivity is strongly controlled by carrier concentration, temperature, and field.
2. n-type majority carriers are electrons; p-type majority carriers are holes.
3. Diffusion creates a depletion-region field that opposes further diffusion at equilibrium.
4. Reverse leakage comes from minority carriers and generation mechanisms.
5. For ideality factor near one, a 60 mV rise near room temperature multiplies current by roughly ten.
6. Fixed-drop models are useful for rough current estimates; exponential and charge-storage models are required for leakage and switching.
7. At 1 mA, ideal $r_d$ is about 26 Ω; at 10 mA, about 2.6 Ω for n=1.
8. Fixed-current forward voltage generally falls with rising temperature; leakage rises.
9. 0.8 W at 80°C/W creates 64°C rise; at 50°C ambient, junction is about 114°C.
10. A 24 V RMS secondary has 33.9 V peak; use substantial margin above this and topology-dependent PIV.
11. Schottky is attractive for low-voltage switching loss but often poor for hot, leakage-sensitive nodes.
12. Use worst-case high supply and low LED forward voltage to limit maximum current.
13. 5 µA through 100 kΩ gives 0.5 V ideally.
14. Zener series resistor must satisfy minimum Zener current at low line/full load and maximum power at high line/no load.
15. Stand-off voltage is not the same as clamping voltage under surge current.
16. Reverse-recovery energy can be approximated by integrating reverse voltage times recovery current.
17. Ideal 10 V peak half-wave average is $10/\pi\approx3.18$ V.
18. Center-tapped rectifier PIV is approximately twice the half-secondary peak.
19. 12 V RMS through a silicon bridge charges near $16.97-1.4\approx15.6$ V unloaded.
20. 100 mA, 120 Hz, 1 V ripple requires about 833 µF; choose a larger standard value.
21. Capacitor-input rectifiers produce peak/RMS currents much greater than load average current.
22. Include low-line secondary peak, two diode drops, ripple valley, and regulator dropout.
23. Clamp current must be limited by series impedance under all fault voltages.
24. Two opposite Zener or series-diode arrangements can create approximate symmetric clipping.
25. Choose $RC$ long enough that exponential droop over hold time stays below 1%.
26. Multiplier output sags increasingly with stage count and load current.
27. Diode OR selects the source that produces the highest post-diode voltage.
28. Flyback diode peak current begins near coil current; voltage and recovery ratings need margin.
29. A Schottky series diode can meet a 0.4 V drop target at suitable current, subject to temperature/leakage checks.
30. TVS protection must be coordinated with source impedance and sustained-overvoltage disconnection.
31. Minimize loop inductance and route ESD current away from protected circuitry.
32. High-frequency 5 V/2 A freewheel service prioritizes low drop, low recovery loss, thermal performance, and capacitance/EMI tradeoffs.
33. A 1000–2200 µF reservoir is a plausible starting range for 100 mA and <1 V ripple, but full corner simulation is required.
34. Normal scaling, fault current, leakage, diode clamp level, ADC injection limits, and physical current paths must all be validated together.