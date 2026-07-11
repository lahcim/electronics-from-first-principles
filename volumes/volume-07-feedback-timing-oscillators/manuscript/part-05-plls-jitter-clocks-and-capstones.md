# Part V — PLLs, Jitter, Clock Distribution, and Capstones

## Lesson 41 — Jitter and Phase Noise

Distinguish cycle-to-cycle jitter, period jitter, time-interval error, and phase noise. Explain that deterministic and random components require different measurements.

**Challenge:** convert 10 ps RMS timing jitter to approximate phase error at 100 MHz.

---

## Lesson 42 — PLL Fundamentals

A phase-locked loop contains a phase/frequency detector, charge pump or error amplifier, loop filter, voltage-controlled oscillator, and optional divider.

Study acquisition, lock, frequency multiplication, tracking, and disturbance rejection.

**Challenge:** choose divider ratio for 10 MHz reference to 100 MHz output.

---

## Lesson 43 — Loop Filters and PLL Bandwidth

Explore how loop bandwidth trades reference tracking, VCO-noise suppression, lock time, and stability. Compare first- and second-order conceptual filters.

**Challenge:** explain which noise source dominates below and above loop bandwidth.

---

## Lesson 44 — Clock Distribution and Loading

Model source resistance, trace/load capacitance, multiple receiver inputs, buffering, fan-out, edge rate, and skew. Explain why a clock’s edge quality matters independently of nominal frequency.

**Challenge:** compare star and daisy-chain distribution for four loads.

---

## Lesson 45 — Crystal-Oscillator Capstone

Design a 25 MHz Pierce oscillator around a representative MCU oscillator input and a parallel-specified crystal.

Requirements:

- select a crystal and document frequency, load capacitance, ESR, drive level, tolerance, aging, and temperature range;
- calculate initial C1/C2 including estimated stray capacitance;
- include bias/feedback components required by the MCU architecture;
- simulate crystal impedance and oscillator startup;
- estimate negative-resistance margin;
- estimate crystal drive level;
- sweep capacitor, ESR, temperature-model, and transconductance corners;
- document startup time and settled amplitude;
- provide layout rules for crystal loop area, ground return, guard/keepout, and distance from switching nodes;
- compare simulation with datasheet/reference-design recommendations.

Explain model limitations and why hardware startup testing across voltage and temperature remains required.

---

## Lesson 46 — Precision Timing System Capstone

Design a timing subsystem for a microcontroller requiring:

- low-power 32.768 kHz timekeeping;
- 25 MHz main clock;
- startup-status monitoring;
- fallback internal clock;
- optional calibration against an external reference;
- ppm error budget;
- clock distribution to two loads;
- supply filtering and decoupling;
- fault handling for missing or slow-starting crystals.

Compare ordinary crystal, TCXO, MEMS oscillator, and internally calibrated RC options. Document accuracy, startup, power, cost, jitter, temperature, aging, and PCB-area tradeoffs.

## Volume 7 Completion Review

After Volume 7, the learner should be able to:

- analyze feedback polarity, loop gain, phase, startup, and amplitude limiting;
- design and simulate RC, relaxation, transistor, 555, LC, and crystal oscillators;
- understand why SPICE oscillators may require startup treatment and long simulation time;
- derive 555 timing and diagnose duty-cycle limitations;
- use crystal equivalent models, load capacitance, negative resistance, ESR, and drive level correctly;
- distinguish fundamental, overtone, harmonic, jitter, and phase-noise concepts;
- explain PLL operation and clock-distribution tradeoffs;
- turn MCU and crystal datasheets into a reviewable timing design.