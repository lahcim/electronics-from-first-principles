# Volume 2 Challenge Answer Key

This key gives reference values and validation targets. Full derivations should be attempted before opening it.

1. 12.5 mJ at 5 V: $C=1\text{ mF}$.
2. 0–3 V in 30 ms at 100 µA: $C=1\ \mu\text{F}$.
3. 2 V/ms through 4.7 µF: $I=9.4\text{ mA}$.
4. Limit 12 V / 100 µF initial current below 100 mA: $R\ge120\ \Omega$.
5. Reach 4 V of 5 V in 20 ms: $RC=12.43\text{ ms}$.
6. 100 µF from 12 V to 1 V in 2 s: $R\approx8.05\text{ k}\Omega$.
7. General threshold time: $t=-RC\ln(1-f)$.
8. Power-on studies normally use `startup`; stored-state studies may use `.ic`/`uic` with justification.
9. Ideal RC charging from a fixed source dissipates half the delivered energy in R and stores half in C.
10. 1 µF in series with 3 µF gives 750 nF.
11. Balancing resistors must dominate leakage; two 1 MΩ parts draw 50 µA at 100 V total.
12. Infer leakage from $R=-t/[C\ln(V/V_0)]$.
13. 2 A with 50 mV ESR step: ESR ≤ 25 mΩ.
14. Tenfold ESL creates tenfold edge spike for the same $di/dt$.
15. Parallel values target different frequency ranges; validate total impedance, not capacitance sum alone.
16. Guarantee 8 µF at 40% retained capacitance: nominal ≥ 20 µF.
17. 0.5 A RMS with less than 0.25 W: ESR < 1 Ω.
18. −20/+80% capacitance alone cannot meet ±10% timing.
19. Reference choices: C0G for crystal loading, X7R for local decoupling, polymer/electrolytic plus ceramic for bulk switching rails, film for low-distortion audio coupling.
20. For 300 mA × 2 ms with 200 mV capacitive droop after reserving 50 mV for ESR: C ≥ 3 mF; ESR ≤ 167 mΩ.
21. 25 mJ in 20 mH: $I\approx1.58\text{ A}$.
22. An air gap lowers permeability/inductance but raises energy storage before saturation.
23. 2 A in 5 ms through 4.7 mH: 1.88 V ideal.
24. Higher clamp voltage gives larger negative $di/dt$ and faster decay.
25. 5 V, 100 Ω, 10 mH: final current 50 mA, τ = 100 µs.
26. 1 A to 0.1 A in 20 ms with 50 mH: R ≈ 5.76 Ω.
27. Clamp energy rating should exceed $\frac12LI^2$ with margin.
28. Integrate component powers and compare with change in magnetic energy.
29. 10 mH + 5 mH in series gives 15 mH.
30. 2 A RMS and 0.5 W limit: DCR ≤ 125 mΩ.
31. Saturation appears as increasing current slope under constant applied voltage.
32. Total magnetic loss = copper loss + core loss; core loss needs frequency/flux data.
33. 1 A average with 0.8 A p-p triangular ripple: peak 1.4 A; RMS ≈ 1.026 A.
34. Secondary polarity follows dot convention; magnitude follows turns ratio.
35. A 4:1 primary-to-secondary turns ratio reflects $16Z_L$; 62.5 Ω reflects as 1 kΩ.
36. Timing tolerance is dominated by the broad capacitor and threshold ranges; passive RC alone may not meet a tight delay requirement.
37. A 1 ms pulse scale suggests RC ≈ 1 ms; peak-current constraint sets minimum R.
38. PWM filter requires simulation tradeoff between ripple and settling; cascaded filtering may outperform one large RC.
39. A Schmitt input after RC is the reference hardware solution for robust debounce.
40. Diode clamp gives lowest stress and slowest release; higher-voltage clamp gives faster release; snubber offers tunable compromise.
