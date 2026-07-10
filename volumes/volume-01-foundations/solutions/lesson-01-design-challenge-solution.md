# Lesson 1 Design Challenge — Worked Solution

## Requirement

Create a one-resistor load that draws 10 mA from an ideal 5 V source, with nominal current within ±1%, and select a resistor power rating at least twice the calculated dissipation.

## 1. Calculate the resistance

Using Ohm's law:

$$
R=\frac{V}{I}
$$

$$
R=\frac{5\ \text{V}}{10\ \text{mA}}=500\ \Omega
$$

A 500 Ω resistor is available as a standard value in tighter preferred-value series. A 499 Ω resistor is also a common 1% E96 value and is acceptable.

## 2. Check nominal current

### Option A — 500 Ω

$$
I=\frac{5\ \text{V}}{500\ \Omega}=10.000\ \text{mA}
$$

### Option B — 499 Ω

$$
I=\frac{5\ \text{V}}{499\ \Omega}=10.020\ \text{mA}
$$

Both satisfy the 9.9–10.1 mA acceptance range.

## 3. Calculate resistor power

For 500 Ω:

$$
P=VI=(5\ \text{V})(10\ \text{mA})=50\ \text{mW}
$$

The required nominal power rating must be at least twice this value:

$$
P_{\text{rated}}\ge 100\ \text{mW}
$$

A 0.125 W resistor technically satisfies the stated rule because 50 mW is 40% of 125 mW. A 0.25 W resistor provides more thermal margin and is an appropriate reference selection for the exercise.

## 4. Expected simulation results

Using an ideal 5 V source and 500 Ω resistor:

| Measurement | Expected result |
|---|---:|
| `V(VIN)` | 5.000 V |
| resistor current magnitude | 10.000 mA |
| resistor power | +50.000 mW |
| source power | −50.000 mW, subject to sign convention |
| sum of component powers | approximately 0 W |

Small floating-point differences are normal.

## 5. Schematic review checklist

A satisfactory schematic should show:

- a 5 V DC source;
- a 500 Ω or suitably justified near-standard resistor;
- a complete return path;
- node 0 connected to the source return;
- a meaningful `VIN` label;
- documented current direction;
- no machine-specific model paths.

## 6. Alternative valid answers

Values from 495.05 Ω through 505.05 Ω satisfy the nominal ±1% current window for an exact 5 V source. In practice, select an actually available standard value and state its tolerance.

A 499 Ω, 1%, 0.25 W resistor is a particularly realistic choice. Its nominal current is about 10.020 mA and nominal power is about 50.10 mW.

## 7. Important limitation

The challenge's ±1% criterion applies to nominal simulation. A real 1% resistor, imperfect 5 V source, meter error, lead resistance, and temperature can push measured current beyond ±1% unless a full tolerance budget is performed. Volume 1 later introduces worst-case and Monte Carlo analysis.

## 8. Why the source power is negative

Under the passive sign convention, positive power means current enters the positively referenced terminal and the element absorbs energy. A source delivering energy has current leaving its positive terminal, so its calculated power is negative. The resistor's positive 50 mW and source's negative 50 mW sum to approximately zero, demonstrating energy conservation in the ideal circuit.
