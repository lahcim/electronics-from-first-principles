# Part I — BJT Fundamentals and Switching

## Lesson 1 — What a Transistor Does

A transistor lets one electrical quantity control another. Compare a mechanical valve, a relay, and a semiconductor transistor while emphasizing that the analogy is incomplete.

Build a current-controlled BJT model driving a resistor. Sweep base drive and observe collector current.

**Challenge:** describe the difference between using a transistor as a switch and as an amplifier.

---

## Lesson 2 — NPN Structure and Carrier Flow

Introduce emitter, base, and collector doping, carrier injection, thin base region, and collector electric field. Explain conventional current versus electron motion.

**Challenge:** explain why the emitter and collector are not interchangeable in an ordinary BJT.

---

## Lesson 3 — PNP Structure

Mirror the NPN polarities and current directions. Simulate equivalent high-side PNP and low-side NPN circuits.

**Challenge:** convert a working NPN bias network into its PNP complement.

---

## Lesson 4 — Base-Emitter Junction Behavior

Treat base-emitter as a diode junction. Sweep base voltage through a resistor and plot base current.

Explain why “VBE = 0.7 V” is an approximation dependent on current, temperature, and device.

**Challenge:** compare base current at 0.6, 0.7, and 0.8 V with a realistic model.

---

## Lesson 5 — Collector Current and Beta

In forward-active operation:

$$I_C\approx\beta I_B$$

Sweep base current and plot collector current before saturation. Explain that beta varies widely with current, temperature, and device.

**Challenge:** determine whether a circuit that requires exact beta is robust.

---

## Lesson 6 — Why Beta Is Unreliable

Step transistor model beta from 50 to 300. Observe operating-point movement in a base-resistor-biased circuit.

```spice
.step param BFVAL list 50 100 200 300
```

**Challenge:** redesign the circuit so collector current depends less on beta.

---

## Lesson 7 — Cutoff, Active Mode, and Saturation

Map transistor regions by sweeping base drive and collector load. In cutoff, both junctions are not forward-driven; in active mode, collector current is controlled; in saturation, both junctions are forward-biased and collector voltage collapses.

**Challenge:** classify several operating points from VBE, VBC, and VCE.

---

## Lesson 8 — BJT as a Low-Side Switch

Drive an LED or resistive load from an NPN collector. Calculate load current, base current, and transistor power.

**Challenge:** switch 100 mA from a 5 V logic output while keeping GPIO current below 5 mA.

---

## Lesson 9 — Base-Resistor Design

Use forced beta rather than nominal beta:

$$I_B\ge\frac{I_C}{\beta_{forced}}$$

$$R_B\le\frac{V_{DRIVE}-V_{BE}}{I_B}$$

Compare forced beta 5, 10, and 20.

**Challenge:** choose an E24 base resistor for 200 mA load and 3.3 V drive.

---

## Lesson 10 — Forced Beta and Saturation Margin

Sweep base resistor and observe VCE(sat), base current, load current, and wasted drive current. More base current eventually produces diminishing improvement.

**Challenge:** define an acceptance criterion for “sufficiently saturated.”

---

## Lesson 11 — Saturation Voltage

Show that VCE(sat) is not a universal 0.2 V constant. Sweep collector current and forced beta.

**Challenge:** estimate switch loss at 500 mA for 0.1, 0.2, and 0.4 V saturation.

---

## Lesson 12 — Switching Speed

Apply pulses and observe delay, rise, storage, and fall time. Compare active-region switching with deep saturation.

```spice
.tran 1n 20u
```

**Challenge:** explain why overdriving the base can slow turn-off.

---

## Lesson 13 — Storage Time and Baker Clamping

Add a Schottky clamp between base and collector to limit deep saturation. Compare turn-off speed and on-state voltage.

**Challenge:** decide when faster release is worth a slightly higher on-voltage.

---

## Lesson 14 — Inductive-Load Switching

Switch a relay or solenoid using a BJT and flyback diode. Reuse energy analysis from Volumes 2 and 4.

Measure transistor VCE during turn-off with diode, Zener clamp, and no protection.

**Challenge:** validate transistor voltage, current, and energy limits.

---

## Lesson 15 — BJT Power Dissipation

Calculate instantaneous and average power:

$$P_Q=V_{CE}I_C+V_{BE}I_B$$

Plot power during switching and steady conduction.

**Challenge:** compare conduction and switching losses at several frequencies.

---

## Lesson 16 — Safe Operating Area

Read DC, pulse, current, voltage, power, and secondary-breakdown limits. Explain why staying below package wattage alone is insufficient.

**Challenge:** check a transistor switching 2 A at 24 V during a 1 ms linear transition.

---

## Lesson 17 — Thermal Resistance and Junction Temperature

Use:

$$T_J=T_A+P\theta_{JA}$$

Extend to junction-to-case, interface, and heatsink paths.

**Challenge:** find maximum continuous dissipation for 125°C junction, 50°C ambient, and 100°C/W thermal resistance.

---

## Lesson 18 — Thermal Runaway and Current Sharing

Explain VBE temperature coefficient, collector-current growth at fixed base voltage, ballast resistors, and why parallel BJTs can hog current.

**Challenge:** design emitter ballast resistors for two parallel BJTs and explain limitations.