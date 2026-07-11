# Part IV — First-Order Design Applications and Capstones

## Lesson 36 — RC Delay Circuits

Design a passive delay node and understand its limitations. A resistor-capacitor network does not create a clean delayed digital edge; it creates an exponential analog waveform.

Use a 5 V step, R = 100 kΩ, and C = 1 µF. Compare threshold crossing at 1 V, 2.5 V, and 4 V. The apparent delay depends on the receiving circuit’s threshold.

Add source resistance and input leakage. Observe timing error. Replace the load with a Schmitt-trigger input model and see why hysteresis produces a cleaner transition.

**Required directive:**

```spice
.tran 50u 1s startup
```

**Challenge:** design a nominal 200 ms threshold crossing at 3.0 V from a 5 V step, then calculate tolerance range using ±5% R, −20/+80% C, and threshold variation.

---

## Lesson 37 — RC Differentiators

A high-pass RC network produces a large response to rapid input changes and little response to steady DC. Apply a square wave and observe positive and negative pulses at each edge.

Use C = 100 nF and R = 10 kΩ. Vary pulse width relative to $RC$.

When pulse duration is much greater than the time constant, each edge produces an isolated exponential pulse. When comparable, responses overlap.

**Observe:** capacitor current is largest at edges because $dv/dt$ is largest.

**Challenge:** generate an approximately 1 ms edge pulse from a 5 V square wave while limiting peak current below 1 mA.

---

## Lesson 38 — RC Integrators

A low-pass RC network averages rapid changes. Drive it with PWM and observe the output approaching the duty-cycle average when the RC time constant is much longer than the PWM period.

Compare 10%, 50%, and 90% duty cycles. Sweep RC relative to switching period and quantify ripple versus response time.

**Design tradeoff:** larger RC reduces ripple but slows response.

**Challenge:** convert 10 kHz, 3.3 V PWM to a DC level with less than 20 mV ripple and settling within 100 ms. Validate several RC choices.

---

## Lesson 39 — Switch Debounce

Model a mechanical switch as a pulse sequence containing rapid openings and closings. Feed it into an RC network and threshold model.

Compare:

- no filtering;
- RC only;
- RC plus Schmitt trigger;
- asymmetric charge/discharge using a diode;
- software debounce conceptually.

Show that RC selection must account for input thresholds, switch resistance, pull resistor, leakage, and desired response time.

**Challenge:** suppress a 5 ms bounce burst while recognizing a valid press within 30 ms. Provide worst-case threshold calculations.

---

## Lesson 40 — Relay-Coil Flyback Capstone

Design and compare protection for a 12 V relay coil modeled as:

- L = 100 mH;
- winding resistance = 120 Ω;
- steady current approximately 100 mA;
- stored energy approximately 0.5 mJ.

Evaluate four turn-off networks:

1. no clamp;
2. silicon flyback diode;
3. diode plus series Zener for a 24–36 V clamp;
4. RC snubber.

For each, measure:

- switch peak voltage;
- current-decay time;
- clamp peak power;
- absorbed energy;
- estimated relay release speed;
- sensitivity to component tolerance.

Use a voltage-controlled switch or pulse-controlled transistor model. Typical directives:

```spice
VCTRL CTRL 0 PULSE(0 5 0 1u 1u 20m 100m)
.tran 2u 50m startup
```

**Acceptance criteria:**

- switch voltage remains below a selected 60 V limit;
- coil current falls below 10 mA within the required release time;
- protection part energy rating has at least 2× margin;
- source, coil, resistance, and clamp energy balance is documented;
- schematic includes exact SPICE text fields and model mappings;
- a worked comparison table identifies which solution is best for low stress, fastest release, lowest cost, and lowest EMI.

## Volume 2 Completion Review

After Lesson 40, the learner should be able to:

- predict capacitor and inductor transient behavior before simulation;
- choose correct initial-condition and startup settings;
- separate ideal component behavior from ESR, ESL, DCR, leakage, saturation, and thermal limits;
- calculate and verify stored energy;
- design RC timing and filtering blocks with threshold and loading awareness;
- design an inductive-load clamp based on voltage, time, energy, and device stress;
- inspect KiCad-generated ngspice netlists and confirm directives and pin mappings.