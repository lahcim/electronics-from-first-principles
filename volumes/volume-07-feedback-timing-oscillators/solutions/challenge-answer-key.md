# Volume 7 Challenge Answer Key

1. Negative feedback opposes a perturbation; positive feedback reinforces it.
2. Loop magnitude below one causes a disturbance to decay when phase is regenerative.
3. Startup generally needs loop gain above one; settled nonlinear operation reduces effective gain to one.
4. `startup` is usually less artificial than a large forced initial condition; high-Q circuits may still need a tiny perturbation.
5. Permanent loop gain above one drives clipping or another nonlinearity.
6. An inverting amplifier contributes 180°, so the feedback network must contribute another 180° modulo 360°.
7. Higher Q improves selectivity but usually slows startup and settling.
8. Acceptance criteria should include frequency, amplitude, startup time, duty cycle, distortion, supply range, and temperature/tolerance behavior.
9. A three-section RC phase-shift oscillator requires substantial amplifier gain; exact frequency depends on loading.
10. Equal-value Wien bridge has zero phase and one-third attenuation at $1/(2\pi RC)$.
11. Relaxation period follows logarithmic capacitor charging between thresholds.
12. Schmitt thresholds and RC determine frequency and duty cycle.
13. Equal halves produce near-50% duty only when transistor and component asymmetries are small.
14. Monostable pulse width must be defined independently of valid trigger width.
15. Perfectly symmetric bistables can remain metastable in ideal simulation without noise or mismatch.
16. Trigger below one-third sets the latch; threshold above two-thirds resets it in the standard 555.
17. The divider, comparators, latch, discharge transistor, and output stage form the functional 555 core.
18. Classic astable high time includes both RA and RB, so duty cycle exceeds 50% without modification.
19. Nominal monostable width is about $1.1RC$, with tolerance dominated by R, C, thresholds, and leakage.
20. Control-voltage modulation changes thresholds and therefore duty/frequency relationships.
21. Any LC pair satisfying $LC=1/(2\pi f)^2$ is valid, subject to realistic Q and parasitics.
22. Colpitts feedback is set by the capacitive divider and loaded transistor impedances.
23. Hartley feedback uses an inductive divider, with coupling and winding polarity important.
24. A small series Clapp capacitor can dominate frequency and reduce parasitic sensitivity.
25. Reversing transformer dots changes feedback sign.
26. Crystal Q is typically far higher than ordinary discrete LC resonators.
27. Rm models loss; Lm/Cm set motional resonance; C0 creates antiresonance interaction.
28. Series resonance is $1/(2\pi\sqrt{L_mC_m})$.
29. Antiresonance is the nearby high-impedance interaction of motional branch and shunt capacitance.
30. For equal capacitors, $C_L\approx C/2+C_{stray}$, so solve $C\approx2(C_L-C_{stray})$.
31. Unequal capacitors can compensate unequal pin capacitance, change feedback ratio, or meet drive/startup constraints.
32. The large feedback resistor establishes DC bias; crystal and capacitors select frequency and phase.
33. Discrete gain-stage bias and loading must keep crystal drive within limits.
34. MCU and crystal requirements must both be satisfied, especially ESR, load capacitance, and drive level.
35. High-Q startup may require milliseconds or longer even when the carrier period is nanoseconds.
36. Presented negative-resistance magnitude should exceed crystal ESR with design margin.
37. Crystal drive is estimated from motional current and ESR power.
38. Load capacitance only pulls frequency over a small range.
39. Overtones are mechanical modes; harmonics are waveform spectral components.
40. Total ppm error includes initial tolerance, temperature, aging, load error, and calibration uncertainty.
41. 10 ps at 100 MHz corresponds to about 0.36° RMS phase error.
42. A divide ratio of 10 converts 10 MHz reference to 100 MHz output in an integer-N PLL.
43. Below loop bandwidth the PLL tends to track reference-related behavior; above it VCO noise increasingly dominates.
44. Clock distribution must be evaluated for edge rate, fan-out, load capacitance, reflections, and skew.
45. The 25 MHz capstone must verify startup, negative resistance, drive, load capacitance, corners, and layout.
46. The timing-system capstone compares accuracy, power, startup, jitter, cost, calibration, and failure recovery across clock technologies.