# Part IV — MOSFET Power Design and Amplifiers

## Lesson 48 — N-Channel High-Side Switching

Explain why a high-side NMOS gate must rise above its source. Compare isolated drive, charge pump, and bootstrap concepts.

**Challenge:** determine required gate voltage for a 24 V source node and 10 V desired VGS.

---

## Lesson 49 — Bootstrap Gate Drivers

Use a diode and capacitor to create a floating high-side supply during switching. Study duty-cycle limits, refresh requirements, leakage, and startup.

**Challenge:** size bootstrap capacitance for 50 nC gate charge and less than 0.5 V droop.

---

## Lesson 50 — MOSFET Safe Operating Area

Read current, voltage, pulse-duration, thermal, and linear-mode limits. Explain that low RDS(on) does not guarantee strong linear SOA.

**Challenge:** validate a hot-swap event at 20 V, 3 A for 5 ms.

---

## Lesson 51 — Avalanche and Inductive Stress

Study unclamped inductive switching and avalanche energy. Compare single-pulse rating with repetitive operation and temperature derating.

**Challenge:** compare stored inductor energy with MOSFET avalanche rating using margin.

---

## Lesson 52 — Parallel MOSFETs

Discuss positive RDS(on) temperature coefficient, static sharing, dynamic imbalance, gate resistors, layout symmetry, and common-source inductance.

**Challenge:** design a current-sharing validation test for two parallel devices.

---

## Lesson 53 — Thermal Resistance and Junction Temperature

Build a thermal path from junction to case, interface, heatsink, and ambient. Include transient thermal impedance for pulsed operation.

**Challenge:** choose heatsink thermal resistance for 8 W loss at 40°C ambient and 125°C maximum junction.

---

## Lesson 54 — Common-Source Amplifier

Bias an NMOS in saturation and observe inverted voltage gain. Compare source degeneration and drain resistance.

**Challenge:** bias near mid-supply and obtain gain near −10.

---

## Lesson 55 — Source Follower

Study high input impedance, low output impedance, level shift, and limited output swing.

**Challenge:** buffer a 100 kΩ source into 1 kΩ with less than 5% gain loss.

---

## Lesson 56 — Common-Gate Amplifier

Study low input impedance, non-inverting gain, current buffering, and reduced Miller effect.

**Challenge:** estimate input resistance from gm.

---

## Lesson 57 — MOSFET Selection Capstone

Select a MOSFET and gate-drive strategy for a 24 V, 5 A PWM-controlled solenoid at 20 kHz.

Requirements:

- 3.3 V logic controller;
- MOSFET VDS margin;
- guaranteed RDS(on) at actual drive voltage;
- conduction and switching loss budget;
- gate-driver current and resistor;
- flyback/clamp choice;
- SOA and avalanche review;
- junction-temperature estimate;
- layout-current-loop discussion;
- nominal and worst-case simulation.