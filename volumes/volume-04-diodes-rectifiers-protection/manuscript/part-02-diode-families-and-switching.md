# Part II — Diode Families and Switching Behavior

## Lesson 10 — Rectifier Diodes

Study ordinary silicon rectifier diodes: forward drop, current rating, reverse-voltage rating, surge current, and reverse recovery.

Compare 1 A and 3 A device models in a 50/60 Hz rectifier. Explain why a higher current rating does not automatically mean lower forward voltage at every current.

**Challenge:** select minimum reverse-voltage rating for a 24 V RMS transformer secondary with margin.

---

## Lesson 11 — Schottky Diodes

Explain metal-semiconductor junction behavior, lower forward voltage, higher leakage, and usually faster switching.

Compare silicon and Schottky models at 10 mA, 100 mA, and 1 A, then sweep temperature.

**Challenge:** decide whether Schottky is preferable for a low-voltage buck freewheel path and for a high-temperature leakage-sensitive input.

---

## Lesson 12 — Light-Emitting Diodes

Explain radiative recombination, color versus bandgap, forward-voltage variation, current control, optical efficiency, and thermal limits.

Sweep current through red, green, blue, and white LED models. Observe that voltage is not a fixed color constant and brightness is not necessarily linear with current.

**Challenge:** choose a resistor for a 3.3 V GPIO driving a red LED at 4 mA over supply and forward-voltage tolerances.

---

## Lesson 13 — Photodiodes

Model a photodiode as a light-dependent current source in parallel with junction capacitance, leakage, and diode behavior.

Compare photovoltaic zero-bias operation and reverse-biased photoconductive operation. Observe speed, linearity, dark current, and noise tradeoffs.

**Challenge:** calculate output voltage across 100 kΩ for 5 µA photocurrent, then discuss bandwidth limitation from capacitance.

---

## Lesson 14 — Zener Diodes

Study reverse breakdown as a voltage-reference and clamp mechanism. Include dynamic resistance and knee current.

Use a series resistor from 12 V to a 5.1 V Zener and sweep load current. Observe regulation deterioration near the knee and power rise at light load.

**Challenge:** design the series resistor for a 12 V ±10% source, 5.1 V Zener, and 0–10 mA load while respecting Zener current and power limits.

---

## Lesson 15 — Avalanche and TVS Diodes

Distinguish breakdown voltage, stand-off voltage, test voltage, clamping voltage, pulse current, and pulse-energy ratings.

Apply a current pulse to a TVS model through source impedance. Plot clamp voltage and absorbed power.

**Challenge:** explain why a “5 V TVS” can clamp far above 5 V at large surge current.

---

## Lesson 16 — Switching Speed and Reverse Recovery

A conducting PN diode stores charge. When reverse-biased, current can flow briefly while stored charge is removed.

Compare ideal, fast-recovery, and slow rectifier models in a switching circuit. Plot reverse current and recovery time.

```spice
.tran 1n 20u
```

Explain switching loss, EMI, and why Schottky diodes have no minority-carrier reverse recovery but still have junction capacitance.

**Challenge:** estimate reverse-recovery energy from a triangular current pulse and switching voltage.