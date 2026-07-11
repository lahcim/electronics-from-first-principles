# Volume 6 Challenge Answer Key

1. Voltage gain alone does not guarantee output-current or power capability.
2. Positive differential input drives output positive for a non-inverting model.
3. 5 V / 200,000 = 25 µV differential input.
4. The virtual-short approximation fails in saturation, open loop, insufficient loop gain, invalid common-mode range, output-current limit, and unstable operation.
5. Closed-loop error is approximately set by loop gain; finite open-loop gain creates a small differential input.
6. Followers can fail from output-current limit, swing limit, capacitive loading, and common-mode violations.
7. Gain 8.5 requires $R_F/R_G=7.5$; choose a standard pair and report actual ratio.
8. Gain −4 with at least 20 kΩ input resistance can use 20 kΩ and 80 kΩ or nearby standard values.
9. Weighted summing follows $-R_F\sum V_i/R_i$.
10. Difference-amplifier CMRR depends strongly on resistor-ratio matching.
11. Instrumentation amplifiers buffer both sensor inputs before subtraction.
12. A divider alone is not a low-impedance bidirectional virtual ground; buffer and decouple it.
13. Bias-current compensation uses approximately $R_{COMP}=R_{IN}\parallel R_F$ when source resistances are otherwise balanced.
14. 2 mV offset with noise gain 11 produces about 22 mV output offset.
15. Worst-case drift combines initial offset, drift, bias-current effects, resistor tolerance, and temperature range.
16. Rail-to-rail claims require checking datasheet common-mode range versus supply, temperature, and operating mode.
17. A 0.2–4.8 V output on 5 V requires verified rail swing at the actual load.
18. 2 V peak into 100 Ω requires 20 mA peak plus margin.
19. Gain 20 and 100 kHz bandwidth needs at least 2 MHz GBW; practical design uses additional margin.
20. 10 V peak at 20 kHz requires about 1.26 V/µs.
21. High-resolution ADC settling requires an error band tied to a fraction of one LSB and acquisition time.
22. Minimum-gain-stable op-amps may oscillate when used below their specified noise gain.
23. Higher phase margin generally reduces ringing and overshoot.
24. An output isolation resistor separates capacitive load phase shift from the op-amp output; optimize by AC and transient simulation.
25. Inverting gain −10 has noise gain +11.
26. 80 dB PSRR attenuates 100 mV ripple by 10,000, producing about 10 µV referred output error under the stated convention.
27. High source resistance increases resistor thermal noise and converts current noise into voltage noise.
28. A 1 kHz active low-pass can use a standard RC pair near $1/(2\pi RC)$ plus a gain-setting network.
29. High-pass startup saturation is reduced with a valid bias-return path and controlled time constants.
30. A Butterworth second-order low-pass targets Q ≈ 0.707 and requires enough op-amp GBW.
31. A Q=5 band-pass is sensitive to component ratios and op-amp bandwidth.
32. A practical integrator includes a parallel feedback resistor to limit DC gain.
33. A practical differentiator limits both low- and high-frequency gain.
34. Precision rectifiers reduce diode-threshold error but can suffer saturation recovery.
35. Envelope attack and release are set by separate charge and discharge paths when asymmetric timing is needed.
36. A 2.5 V reference and 25 Ω sense resistor produce 100 mA nominal current.
37. 0–10 µA to 0 to −5 V requires 500 kΩ transimpedance; feedback capacitance is chosen from stability and bandwidth.
38. Wide photodiode current range generally needs switchable gain, logarithmic response, or multiple channels.
39. Reference buffering requires stability with output capacitance and transient-current validation.
40. Comparators are optimized for saturation switching and recovery; ordinary op-amps may be slow or behave unpredictably.
41. Window thresholds require reference and resistor-tolerance corner analysis.
42. Schmitt-trigger thresholds follow the feedback divider and output high/low levels; solve both states separately.
43. Photodiode TIA selection is dominated by input bias/current noise, voltage noise versus capacitance, GBW, common-mode range, output swing, and recovery.
44. Precision bridge front ends require a complete gain, offset, drift, CMRR, filtering, loading, and ADC-drive budget.