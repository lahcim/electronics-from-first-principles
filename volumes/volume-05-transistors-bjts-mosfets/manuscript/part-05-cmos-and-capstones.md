# Part V — CMOS Foundations and Capstones

## Lesson 58 — CMOS Inverter Introduction

Combine PMOS pull-up and NMOS pull-down devices. Sweep input voltage and plot output transfer curve, supply current, transistor regions, and noise margins.

Observe:

- near-zero static current in ideal logic states;
- a transition region where both devices conduct;
- output inversion;
- stronger devices changing switching threshold and edge speed.

Use:

```spice
.dc VIN 0 5 0.01
```

Then apply a pulse and observe dynamic charging and discharging of a capacitive load.

**Challenge:** explain why CMOS can have low static power yet significant dynamic power.

---

## Lesson 59 — Transistor Switch Capstone

Design two implementations of a 12 V relay driver controlled by a 3.3 V GPIO:

1. NPN BJT;
2. logic-level NMOS.

Relay model:

- winding resistance: 120 Ω;
- inductance: 100 mH;
- nominal current: 100 mA.

Compare:

- GPIO loading;
- on-state voltage and conduction loss;
- switching speed;
- flyback behavior;
- component count;
- sensitivity to transistor gain or gate voltage;
- thermal margin;
- default state during controller reset;
- fault behavior.

**Acceptance criteria:** both designs operate safely over supply and temperature tolerances, keep GPIO current within limits, and include justified clamp components.

---

## Lesson 60 — Motor or Solenoid Driver Capstone

Design a low-side MOSFET driver for a 24 V inductive load drawing 5 A peak under PWM control.

Requirements:

- 3.3 V controller;
- 20 kHz PWM;
- current rise and decay modeled using load R and L;
- MOSFET selected from guaranteed gate-voltage data;
- external gate driver evaluated;
- clamp voltage selected from release-speed and stress requirements;
- gate resistor, pull-down, TVS/flyback path, and current shunt included;
- conduction, switching, diode/clamp, and shunt losses calculated;
- junction temperatures estimated at worst-case ambient;
- SOA and avalanche checked;
- current-loop and gate-loop layout discussed;
- startup, shutdown, open-load, short-load, and controller-reset behavior documented.

Provide a design-review table comparing at least two MOSFETs and two clamp strategies.

## Volume 5 Completion Review

After Volume 5, the learner should be able to:

- explain BJT and MOSFET operation without relying only on switch analogies;
- distinguish operating regions and select correct models;
- design reliable BJT and MOSFET switches;
- calculate drive requirements, conduction loss, switching loss, and thermal limits;
- interpret beta, VGS(th), RDS(on), gate charge, SOA, and avalanche specifications correctly;
- bias and analyze common transistor amplifier stages;
- use current mirrors, differential pairs, followers, and compound devices;
- compare transistor technologies for a real load;
- verify model pin mapping, simulation directives, and datasheet assumptions in KiCad 10.