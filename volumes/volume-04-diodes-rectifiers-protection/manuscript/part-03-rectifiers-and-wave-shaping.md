# Part III — Rectifiers, Smoothing, and Wave Shaping

## Lesson 17 — Half-Wave Rectification

Use a sine source, one diode, and a resistive load. Observe conduction only during one polarity.

Measure average output, RMS output, diode current, and peak inverse voltage. Compare ideal and real diode models.

**Challenge:** calculate the ideal average output of a 10 V peak half-wave rectifier.

---

## Lesson 18 — Full-Wave Center-Tapped Rectification

Use a center-tapped transformer secondary and two diodes. Each half-secondary conducts on alternate half-cycles.

Compare diode reverse-voltage stress, transformer copper use, and output ripple frequency with a bridge rectifier.

**Challenge:** determine diode PIV for a 12-0-12 V RMS secondary.

---

## Lesson 19 — Bridge Rectifiers

Build a four-diode bridge. Two diode drops appear in the conduction path.

Observe that output polarity remains constant while source current alternates. Compare silicon and Schottky bridges at low voltage.

**Challenge:** estimate DC peak after a 12 V RMS source through a silicon bridge before loading.

---

## Lesson 20 — Reservoir Capacitors

Add a capacitor after the rectifier. It charges near waveform peaks and supplies load current between peaks.

Approximate ripple:

$$\Delta V\approx\frac{I_{LOAD}}{f_{RIPPLE}C}$$

Simulate 50 Hz and 60 Hz mains equivalents, half-wave and full-wave rectification, and several capacitances.

**Challenge:** choose capacitance for 100 mA load and less than 1 V peak-to-peak ripple after full-wave 60 Hz rectification.

---

## Lesson 21 — Rectifier Peak and RMS Currents

The reservoir capacitor causes narrow high-current charging pulses. Average load current can be modest while diode and transformer RMS current are much larger.

Plot source current, diode current, capacitor current, and load current. Reduce source resistance and observe taller, narrower pulses.

**Challenge:** explain why selecting a diode only by average load current can be unsafe.

---

## Lesson 22 — Ripple, Dropout, and Minimum DC Voltage

Calculate minimum capacitor voltage before the next charging peak. Include diode drops, source tolerance, transformer regulation, ripple, and load variation.

**Challenge:** determine whether a nominal 12 V RMS secondary can reliably feed a 12 V linear regulator requiring 2 V headroom.

---

## Lesson 23 — Clamp Circuits

Use a diode and DC reference to prevent a signal from exceeding a selected level. Include resistor-limited clamp current and diode forward drop.

Compare positive and negative clamps and observe distortion when the source impedance is too low or clamp current too high.

**Challenge:** clamp a ±10 V input near 0–5 V without exceeding 5 mA diode current.

---

## Lesson 24 — Clipper Circuits

Diode clippers remove waveform portions above or below thresholds. Build unbiased, biased, symmetric, and asymmetric clippers.

Observe how diode exponential behavior rounds the clipping transition.

**Challenge:** design an approximate ±2.7 V symmetric clipper and compare silicon, Schottky, and Zener approaches.

---

## Lesson 25 — Peak Detectors

A diode charges a capacitor to near the signal peak; a resistor discharges it between peaks.

Explore acquisition speed, diode drop, droop, source resistance, and load. Use an op-amp precision detector only as a preview for a later volume.

**Challenge:** hold a 1 kHz waveform peak with less than 1% droop over 10 ms.

---

## Lesson 26 — Voltage Multipliers

Build a doubler, then a Cockcroft-Walton chain. Observe no-load multiplication and increasing voltage sag under load due to capacitor charge transfer.

Discuss diode PIV, capacitor voltage ratings, ripple, startup time, and stored-energy hazards.

**Challenge:** design and simulate a low-current 5 V-to-approximately-15 V three-stage multiplier, documenting load regulation.

---

## Lesson 27 — Diode Logic and Steering

Use diodes for wired-OR steering, signal isolation, supply selection, and analog maximum selection. Explain voltage-drop and leakage limitations.

**Challenge:** create a two-supply diode-OR circuit and determine which source supplies the load for several source voltages.