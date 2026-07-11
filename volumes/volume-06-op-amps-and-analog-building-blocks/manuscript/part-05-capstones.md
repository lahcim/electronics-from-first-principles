# Part V — Design Capstones

## Lesson 43 — Photodiode Front-End Capstone

Design a low-noise photodiode transimpedance amplifier for a sensor producing 10 nA to 20 µA.

Requirements:

- single 5 V supply;
- usable output range of 0.2–4.5 V;
- switchable gain or dual-range strategy;
- at least 20 kHz bandwidth in the low-gain range;
- photodiode capacitance and dark current modeled;
- feedback capacitor selected for stability;
- input/output common-mode and swing checked;
- op-amp voltage/current noise included;
- resistor thermal noise included;
- saturation and recovery behavior documented;
- tolerance and temperature analysis included.

Compare at least two op-amp candidates and justify the dominant selection criteria.

---

## Lesson 44 — Precision Sensor Front-End Capstone

Design an analog front end for a bridge-like sensor producing ±20 mV around a 2.5 V common-mode voltage.

Requirements:

- 5 V single supply;
- output scaled to approximately 0.5–4.5 V;
- input impedance high enough not to load the sensor;
- gain accuracy within ±1% nominal;
- total offset and drift budget documented;
- common-mode range and CMRR verified;
- 100 Hz low-pass filtering;
- output capable of driving an ADC input model;
- power-supply ripple rejection evaluated;
- startup, saturation, overrange, and open-sensor behavior documented;
- resistor-ratio matching and tolerance corners simulated.

Compare a discrete three-op-amp instrumentation topology with an integrated instrumentation-amplifier macromodel.

## Volume 6 Completion Review

After Volume 6, the learner should be able to:

- derive and simulate common closed-loop op-amp circuits;
- distinguish ideal feedback rules from the conditions that make them valid;
- account for offset, bias current, common-mode range, output swing, current limit, GBW, slew rate, and settling;
- evaluate loop gain, phase margin, capacitive loading, noise gain, PSRR, and CMRR;
- design active filters, integrators, differentiators, precision rectifiers, and peak detectors;
- design current sources, transimpedance amplifiers, photodiode interfaces, references, comparators, and hysteresis;
- choose and validate an op-amp using datasheet limits and a verified macromodel;
- inspect KiCad symbol-to-subcircuit pin mapping and generated SPICE directives.