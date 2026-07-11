# Part IV — Comparators, References, and Sensor Interfaces

## Lesson 36 — Constant-Current Sources and Sinks

Use an op-amp, reference voltage, resistor, and transistor to regulate current:

$$I\approx\frac{V_{REF}}{R_S}$$

Study compliance voltage, transistor power, sense-resistor tolerance, and loop stability.

**Challenge:** design a 100 mA current sink from a 2.5 V reference with less than 1% nominal error.

---

## Lesson 37 — Transimpedance Amplifiers

Convert input current to voltage:

$$V_{OUT}=-I_{IN}R_F$$

Add source capacitance and observe stability effects. Introduce feedback capacitance for compensation.

**Challenge:** convert 0–10 µA into 0 to −5 V while maintaining 10 kHz bandwidth.

---

## Lesson 38 — Photodiode Amplifiers

Model photocurrent, dark current, junction capacitance, op-amp voltage/current noise, feedback resistance, and feedback capacitance.

Compare zero-bias and reverse-biased photodiode operation.

**Challenge:** design for 1 nA–10 µA optical current and justify gain ranges.

---

## Lesson 39 — Reference-Voltage Buffering

Buffer a precision reference while respecting output capacitor stability, load transients, noise, and reference output-current limits.

**Challenge:** supply a 2.5 V ADC reference load with 10 mA transient steps and less than 5 mV deviation.

---

## Lesson 40 — Comparator Versus Op-Amp

Compare output stages, saturation recovery, input common-mode range, propagation delay, and open-collector/open-drain behavior.

**Challenge:** explain why a general op-amp may be unreliable as a fast comparator.

---

## Lesson 41 — Window Comparators

Use two comparators to detect when a signal lies below, inside, or above a voltage window.

**Challenge:** detect a valid battery range from 3.3 V to 4.2 V with resistor tolerances included.

---

## Lesson 42 — Hysteresis and Schmitt Triggers

Positive feedback creates separate rising and falling thresholds. Derive thresholds from resistor network and output levels.

Simulate a slow noisy ramp with and without hysteresis.

**Challenge:** design 2.0 V rising and 1.5 V falling thresholds from a 5 V comparator output.