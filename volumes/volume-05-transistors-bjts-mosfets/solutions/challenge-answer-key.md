# Volume 5 Challenge Answer Key

1. A switch uses cutoff/on states; an amplifier intentionally operates in a controlled region between them.
2. The emitter is heavily doped and optimized for carrier injection; collector geometry and doping support voltage.
3. Complement all polarities, current directions, and supply references for PNP.
4. VBE is current- and temperature-dependent, not a fixed threshold.
5. Beta-based exact-current designs are fragile without feedback.
6. Emitter degeneration or feedback reduces beta dependence.
7. Use junction biases and VCE to identify cutoff, active, and saturation regions.
8. For 100 mA and 5 mA maximum GPIO current, forced beta 20 is the upper practical limit.
9. For 200 mA, forced beta 10, and 3.3 V drive, base current 20 mA is too high for many GPIOs; use a driver or MOSFET.
10. Define saturation by required load current and acceptable VCE, not by unlimited base overdrive.
11. At 500 mA, 0.1/0.2/0.4 V imply 50/100/200 mW.
12. Deep saturation stores charge and increases turn-off delay.
13. Baker/Schottky clamping prevents deep saturation and speeds release.
14. Verify coil energy $\frac12LI^2$, peak current, clamp voltage, and transistor SOA.
15. Switching loss grows with transition time and frequency; conduction loss dominates at low frequency.
16. SOA must be checked at simultaneous VCE and IC for the pulse duration.
17. $(125-50)/100=0.75$ W maximum under the simplified thermal model.
18. Emitter ballast creates local negative feedback but wastes voltage and power.
19. Mid-supply collector bias permits approximate symmetrical swing.
20. Divider bias with emitter resistance gives much better beta stability than fixed base bias.
21. Emitter degeneration lowers gain while improving linearity and bias stability.
22. At 2 mA, $g_m\approx77$ mS and $r_e\approx13$ Ω at room temperature.
23. Coupling capacitors must be selected from actual source/input and output/load resistances.
24. An emitter follower buffers impedance but has level shift and finite output current.
25. At 1 mA, common-base input resistance is roughly 26 Ω.
26. A few thermal voltages of differential input steer most tail current.
27. Finite beta and Early effect create mirror error; emitter resistors improve matching.
28. Darlingtons provide high gain but larger drops and slower switching.
29. Compound pairs require careful polarity and model pin mapping.
30. Validate bias, gain, loading, coupling corners, clipping, beta, and temperature together.
31. MOSFET gates require current while capacitances are charged or discharged.
32. Body diode and body connection make source/drain use directionally important.
33. PMOS high-side control requires gate voltage relative to its moving source.
34. Enhancement devices are normally off; depletion devices are normally on at VGS=0.
35. VGS(th) is not an on-resistance guarantee.
36. MOSFET saturation is the amplifier/current-source region; low-loss switching uses the ohmic region.
37. Transconductance is the local slope $dI_D/dV_{GS}$.
38. Less than 100 mV at 1 A requires total on resistance below 100 mΩ.
39. Gate protection must consider source bounce and transients, not gate-to-ground only.
40. At 5 A, 10/30/100 mΩ dissipate 0.25/0.75/2.5 W.
41. 40 nC in 100 ns requires 0.4 A average gate current during transition.
42. With 5 Ω driver resistance and 1 A target peak, total resistance near 10 Ω for 10 V drive leaves about 5 Ω external.
43. Idealized overlap switching loss doubles when frequency doubles.
44. Body-diode recovery and drop may make an external or synchronous path preferable.
45. Gate current during the Miller plateau controls drain-voltage transition speed.
46. Require guaranteed RDS(on) at 3.3 V or lower, not merely a low threshold.
47. A small NPN can pull a 12 V PMOS gate down while protecting GPIO voltage.
48. A 24 V source with 10 V desired VGS needs about 34 V at the gate.
49. $C_{BOOT}\ge Q/\Delta V=50\text{ nC}/0.5\text{ V}=100$ nF before margin and other loads.
50. Linear-mode SOA must cover 20 V × 3 A for 5 ms at the relevant temperature.
51. Avalanche margin compares inductor energy with derated repetitive or single-pulse capability.
52. Parallel MOSFET validation needs static and switching tests with symmetrical layout and individual gate resistors.
53. For 8 W, 40°C ambient, 125°C junction, total thermal resistance must be below 10.625°C/W.
54. Common-source gain and bias depend on gm, RD, source degeneration, and output resistance.
55. Source followers buffer but lose gate-source headroom.
56. Common-gate input resistance is approximately $1/g_m$.
57. The 24 V/5 A design must reconcile voltage margin, drive voltage, losses, SOA, clamp, and thermal limits.
58. CMOS static power is low in settled states, but capacitive switching energy is approximately $CV^2f$ and both devices conduct during transitions.
59. The MOSFET relay driver generally loads GPIO less and wastes less conduction power; the BJT can be simpler but needs guaranteed base drive.
60. The final driver must be validated as a system: controller, gate driver, MOSFET, load, clamp, current sense, thermal path, and PCB loops.