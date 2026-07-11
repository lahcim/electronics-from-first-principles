# Part III — MOSFET Fundamentals and Switching

## Lesson 31 — The MOS Capacitor and Electric-Field Control

Explain gate, oxide, body, channel formation, and why ideal DC gate current is nearly zero while charging current can be large.

**Challenge:** distinguish voltage-controlled conduction from “no current is ever needed at the gate.”

---

## Lesson 32 — NMOS Structure

Introduce source, drain, body diode, channel, and body connection. Sweep gate voltage and drain voltage.

**Challenge:** explain why source and drain labels matter in power MOSFET use despite approximate channel symmetry.

---

## Lesson 33 — PMOS Structure

Reverse polarities and compare high-side PMOS with low-side NMOS circuits.

**Challenge:** convert a 5 V NMOS load switch into a PMOS high-side switch.

---

## Lesson 34 — Enhancement and Depletion Modes

Compare normally-off enhancement devices with normally-on depletion devices. Explain symbol differences and practical uses.

**Challenge:** identify expected state at zero gate-source voltage.

---

## Lesson 35 — Threshold Voltage Is Not Full Enhancement

Threshold is measured at a small specified drain current, not the voltage that guarantees low RDS(on).

Compare device current at VGS(th), 2.5 V, 4.5 V, and 10 V.

**Challenge:** reject an unsuitable MOSFET for 3.3 V logic using datasheet evidence.

---

## Lesson 36 — MOSFET Output Curves

Sweep VDS for multiple VGS values. Identify ohmic/triode and saturation regions.

```spice
.dc VDS 0 10 0.05 VGS 2 5 0.5
```

**Challenge:** explain why “saturation” means different circuit behavior for MOSFETs and BJTs.

---

## Lesson 37 — Transfer Curves and Transconductance

Sweep VGS at fixed VDS. Observe nonlinear drain current and gm variation.

**Challenge:** estimate local transconductance from the curve slope.

---

## Lesson 38 — MOSFET as a Low-Side Switch

Switch a resistive load with an NMOS. Measure gate voltage, drain voltage, current, and dissipation.

**Challenge:** design a 3.3 V-controlled 1 A switch with less than 100 mV drop.

---

## Lesson 39 — Gate-Source Voltage and Absolute Maximums

VGS is measured relative to source, not ground. Study source bounce and high-side drive errors.

Add a gate-source clamp and resistor.

**Challenge:** identify conditions that can violate ±20 V gate rating in an inductive circuit.

---

## Lesson 40 — On-Resistance and Conduction Loss

Use:

$$P_{COND}=I_{RMS}^2R_{DS(on)}$$

Account for RDS(on) increase with junction temperature and gate voltage.

**Challenge:** compare 10, 30, and 100 mΩ devices at 5 A.

---

## Lesson 41 — Gate Capacitance and Gate Charge

Explain Ciss, Coss, Crss, nonlinear capacitance, and why gate charge is often more useful for switching design.

$$I_G\approx\frac{Q_G}{t_{SW}}$$

**Challenge:** estimate driver current needed to move 40 nC in 100 ns.

---

## Lesson 42 — Gate-Resistor Selection

The gate resistor controls peak driver current, edge speed, ringing, and EMI.

Compare 0, 10, 47, and 220 Ω. Include driver output resistance.

**Challenge:** select a starting resistor for a 5 Ω driver and 1 A desired peak gate current.

---

## Lesson 43 — Switching Loss

Approximate overlap loss:

$$P_{SW}\approx\frac12VI(t_r+t_f)f_s$$

Compare this estimate with integrated SPICE power.

**Challenge:** quantify the loss penalty of doubling switching frequency.

---

## Lesson 44 — Body Diode

Study intrinsic diode direction, forward drop, reverse recovery, dead time, and inductive current paths.

**Challenge:** explain why the body diode is useful but often not an ideal freewheel diode.

---

## Lesson 45 — Miller Plateau

Plot gate voltage, drain voltage, and gate current. During the plateau, gate charge changes drain voltage through gate-drain capacitance.

**Challenge:** explain why stronger gate drive shortens the plateau.

---

## Lesson 46 — Logic-Level MOSFET Selection

Create a checklist using guaranteed RDS(on) at the actual gate voltage, Qg, voltage rating, current, SOA, package, thermal resistance, and avalanche data.

**Challenge:** compare two devices for 3.3 V GPIO drive.

---

## Lesson 47 — PMOS High-Side Switching

Design a PMOS load switch. Check VGS at all supply and control states, default-off resistor, turn-on speed, and reverse-current path.

**Challenge:** switch a 12 V, 1 A load from a 3.3 V GPIO using an intermediate transistor.