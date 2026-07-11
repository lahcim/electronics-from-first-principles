# Part IV — Protection Circuits and Capstones

## Lesson 28 — Flyback Diode Design

Revisit the relay-coil circuit from Volume 2 using a real diode model. Calculate stored energy, peak diode current, decay time, repetitive power, and junction heating.

Compare ordinary silicon, Schottky, and diode-plus-Zener clamps.

**Challenge:** select diode current, voltage, and surge ratings for a 24 V, 200 mA solenoid with 300 mH inductance.

---

## Lesson 29 — Reverse-Polarity Protection

Compare:

- series diode;
- bridge rectifier input;
- shunt diode plus fuse/current limit;
- ideal-diode MOSFET concept preview.

Measure normal voltage loss, reverse current, power, and fault behavior.

**Challenge:** protect a 5 V, 1 A device while keeping normal drop below 0.4 V using a diode-only solution.

---

## Lesson 30 — Input Overvoltage and TVS Protection

Build a source with realistic series impedance, fuse/PTC model, TVS, and protected load. Apply slow overvoltage and fast surge pulses.

Explain coordination: the TVS limits voltage while another element limits or interrupts sustained current. A TVS alone may overheat under continuous overvoltage.

**Challenge:** create a protection plan for a nominal 12 V automotive-like input with a 24 V sensitive load limit, stating assumptions and limitations.

---

## Lesson 31 — ESD Protection Basics

Explain ESD as a very fast, high-voltage, limited-energy event with strong dependence on layout inductance.

Model an ESD pulse approximately with a charged capacitor, series resistance, and inductance. Place the clamp close to or far from the connector by changing trace inductance.

Observe that clamp-device voltage alone does not equal IC-pin voltage when interconnect inductance produces:

$$V=L\frac{di}{dt}$$

**Challenge:** explain the desired ESD current path from connector to chassis/ground return.

---

## Lesson 32 — Selecting a Real Diode from a Datasheet

Create a selection checklist:

- repetitive reverse voltage;
- average and RMS forward current;
- surge current;
- forward voltage at operating current and temperature;
- leakage at maximum temperature;
- reverse recovery or junction capacitance;
- power and thermal resistance;
- package and assembly;
- avalanche capability;
- qualification and availability.

**Challenge:** compare three candidate diode technologies for a 5 V, 2 A, 500 kHz freewheel application and justify which specifications dominate.

---

## Lesson 33 — Rectified DC Supply Capstone

Design an isolated low-voltage supply model using a 12 V RMS transformer secondary, bridge rectifier, reservoir capacitor, bleeder/load, and optional linear regulator load model.

Requirements:

- 60 Hz source;
- 100 mA nominal load;
- raw DC ripple below 1.0 V peak-to-peak;
- minimum raw voltage above a chosen regulator dropout requirement;
- diode current and reverse-voltage ratings with at least 2× margin where practical;
- capacitor voltage and ripple-current ratings justified;
- source resistance and transformer regulation represented;
- startup inrush and steady-state waveforms documented;
- power and thermal checks included.

Simulate nominal, low-line, high-line, light-load, full-load, and tolerance cases.

---

## Lesson 34 — Protected Sensor Input Capstone

Design a 0–5 V sensor input that may experience:

- accidental −12 V connection;
- accidental +12 V connection;
- fast ESD-like pulses;
- source resistance from 100 Ω to 10 kΩ;
- ADC absolute maximum of −0.3 V to 3.6 V;
- normal measurement range of 0–3.0 V after scaling.

Combine divider design from Volume 1 with series current limiting, steering/clamp diodes, optional TVS, and ADC input loading.

Validate:

- normal gain and error;
- clamp current under ±12 V faults;
- resistor power;
- ADC pin voltage;
- source loading;
- leakage error at high temperature;
- ESD current path and layout assumptions;
- open and short component faults.

Explain that a protection circuit is a coordinated energy path, not merely “add a diode.”

## Volume 4 Completion Review

After this volume, the learner should be able to:

- explain PN-junction behavior and diode I–V curves;
- choose appropriate simplified or detailed diode models;
- distinguish silicon, Schottky, LED, photodiode, Zener, and TVS behavior;
- analyze rectifiers, reservoir ripple, and charging-current stress;
- design clippers, clamps, peak detectors, and low-current multipliers;
- select flyback, reverse-polarity, surge, and ESD protection strategies;
- read diode datasheets and validate current, voltage, power, temperature, and switching limits.