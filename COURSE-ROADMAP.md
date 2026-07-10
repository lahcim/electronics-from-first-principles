# Course Roadmap

## Mission

Teach electronics as an engineering discipline rather than as a catalog of formulas. The learner should become able to predict circuit behavior, validate predictions in KiCad/ngspice, select component values, recognize model limitations, and defend a schematic in a design review.

## Learning loop

Every major concept follows the same loop:

1. Build a physical mental model.
2. Derive the minimum useful mathematics.
3. Predict voltages, currents, timing, power, and failure modes.
4. Draw and simulate the circuit in KiCad.
5. Change one parameter at a time.
6. Explain the observed waveform from first principles.
7. Compare simulation with component tolerances and real hardware.
8. Complete a constrained design challenge.
9. Validate against acceptance criteria before opening the solution.
10. Review tradeoffs and alternative designs.

## Planned volumes

### Volume 1 — Electrical Foundations and Resistive Circuits

Charge, current, voltage, reference nodes, resistance, conductance, Ohm's law, KCL, KVL, series and parallel networks, loading, source resistance, power, energy, measurement, and first design reviews.

### Volume 2 — Capacitors, Inductors, and Time

Electric and magnetic energy storage, RC and RL transients, time constants, initial conditions, filters, resonance, real component parasitics, decoupling, bulk capacitance, and why multiple capacitor values are used together.

### Volume 3 — Diodes and Nonlinear Circuits

PN junctions, LEDs, Schottky and Zener diodes, rectification, clamps, protection, piecewise-linear models, temperature effects, and model selection.

### Volume 4 — Bipolar Junction Transistors

BJT physics, switching, biasing, active region, saturation, small-signal models, common-emitter stages, emitter followers, current mirrors, differential pairs, and thermal stability.

### Volume 5 — MOSFETs and Power Switching

MOSFET operation, threshold versus usable drive, capacitances, switching loss, low-side and high-side switching, gate drivers, body diode behavior, H-bridges, and safe operating area.

### Volume 6 — Operational Amplifiers and Feedback

Ideal and nonideal op-amps, negative feedback, stability, bandwidth, slew rate, input/output limits, amplifiers, filters, comparators, integrators, differentiators, and active sensors.

### Volume 7 — Oscillators, Timing, and Clocks

Positive feedback, Barkhausen criterion, relaxation oscillators, 555 timers, Wien bridge, phase-shift, LC, Hartley, Colpitts, Pierce and crystal oscillators, startup, amplitude control, phase noise, jitter, and clock distribution.

### Volume 8 — Power Conversion

Linear regulators, references, buck, boost, buck-boost and flyback converters, magnetics, control loops, ripple, compensation, startup, protection, thermal design, and layout.

### Volume 9 — Digital Electronics and Mixed Signal

Logic families, timing, flip-flops, counters, state machines, metastability, clock-domain crossing, ADC/DAC fundamentals, grounding, and mixed-signal interfaces.

### Volume 10 — PCB Design, Signal Integrity, and Complete Systems

Return paths, transmission lines, impedance, reflections, termination, decoupling placement, power integrity, EMI/EMC, connectors, protection, thermal concerns, manufacturability, bring-up, and structured schematic review.

## Release model

Each volume may produce three PDFs:

- Student edition: lessons and challenges, without worked solutions nearby.
- Complete edition: lessons plus chapter-end solutions.
- Solution manual: compact worked answers, expected measurements, and review rubrics.

Editable KiCad projects and reference simulation data accompany every simulation lesson.
