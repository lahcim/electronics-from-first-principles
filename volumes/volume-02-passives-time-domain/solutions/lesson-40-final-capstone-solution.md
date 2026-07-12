# Lesson 40 Final Capstone — Reference Solution

## Input energy subsystem

At 30 V and 3 A maximum initial current:

$$R_{pre}\ge10\ \Omega$$

Choose a higher standard value if source and wiring resistance are uncertain. Size pulse energy from the selected bulk capacitance and maximum input voltage.

For 15 W hold-up from 24 V to 18 V over 20 ms at 90% efficiency:

$$C\ge\frac{2(15)(0.02)}{0.9(24^2-18^2)}\approx2.65\text{ mF}$$

Select at least 3.9–4.7 mF nominal after tolerance and ESR margin. Recalculate precharge energy and bleeder requirements for the final capacitance.

## 5 V rail

Reserve droop among ESL, ESR, and capacitance. For 1.5 A over 50 µs with 120 mV assigned to C:

$$C_{effective}\ge625\ \mu F$$

At 70% end-of-life capacitance, nominal capacitance must exceed about 893 µF before tolerance. Use local ceramics for the 25 ns edge and low-ESR bulk for the 50 µs interval. Verify doubled ESR stays within the remaining droop budget.

## Cable

Choose approximately 30 Ω source-series resistance because $50-20=30$ Ω. Verify receiver capacitance, probe capacitance, common-mode choke parasitics, and any line-to-line capacitor preserve threshold and 80 ns settling.

## Button

A 100 kΩ/220 nF starting network gives a nominal rising crossing near 20.5 ms for a 3.3 V rail and 2.0 V threshold. Verify ±20% C and the 1.0 V falling threshold with a Schmitt input.

## Solenoid

Worst-case current uses minimum resistance:

$$I_{max}=24/(30\cdot0.85)\approx0.941\text{ A}$$

Stored energy:

$$E_L\approx\frac12(0.15)(0.941^2)\approx66.4\text{ mJ}$$

A plain diode may release too slowly. Choose a higher-voltage clamp while keeping MOSFET VDS below 60 V with tolerance and overshoot margin. The clamp must tolerate at least 0.664 W average at 10 operations per second before design margin.

## Protection and verification

Choose fault protection from startup pulse, 25 A available current, breaking capacity, and downstream $I^2t$. Validate new and end-of-life rail behavior, every energy path, all corners, and probe-aware hardware measurements. A passing design package includes numerical evidence for every requirement rather than only nominal waveforms.