# Course Specification

## Audience

The primary learner is technically experienced but may be new to formal electronics. Lessons assume curiosity and comfort with algebra, but they do not assume prior circuit-design experience.

## Outcomes

A learner completing the course should be able to:

- explain circuit behavior using charge, fields, energy, and conservation laws;
- calculate first-order expected behavior before simulation;
- construct robust KiCad 10/ngspice simulations;
- distinguish schematic errors, model errors, pin-mapping errors, numerical issues, and genuine circuit behavior;
- choose component values from requirements instead of copying reference values blindly;
- account for tolerance, temperature, parasitics, loading, startup, and measurement effects;
- convert a simulated circuit into a reviewable PCB schematic;
- perform a structured schematic design review.

## Pedagogical rules

1. **Prediction before plotting.** Every experiment asks the learner to write down an expected result first.
2. **One controlled change.** Parameter experiments initially vary one quantity at a time.
3. **Explain the mechanism.** Descriptions such as “the voltage rises” are insufficient without explaining current, stored energy, and the governing relationship.
4. **Separate ideal and real behavior.** Lessons identify which observations come from ideal theory, component models, parasitics, or simulator implementation.
5. **Use dimensional checks.** Equations are checked for units before numerical substitution.
6. **Design from constraints.** Challenges specify measurable acceptance criteria rather than requiring one memorized circuit.
7. **Solutions remain plural.** A reference solution is not necessarily the only valid solution.
8. **Safety is explicit.** Early lessons use low-voltage isolated sources. Mains and hazardous-energy circuits are treated conceptually or through safe simulation unless suitable lab controls are established.

## Standard lesson anatomy

Each lesson contains:

1. Learning objectives
2. Prerequisites
3. The design question
4. Physical intuition
5. Mathematical model
6. Schematic and node naming
7. KiCad construction instructions
8. Simulation setup
9. Pre-simulation predictions
10. Baseline experiment
11. Parameter experiments
12. What to observe
13. Why the observations occur
14. Limits of the model
15. Common mistakes and debugging
16. Practical design guidance
17. Knowledge check
18. Design challenge
19. Acceptance criteria and validation measurements
20. Optional hardware experiment
21. References and next lesson

## Challenge validation model

Every design challenge includes four layers:

### Acceptance criteria

Objective constraints such as voltage range, settling time, current limit, component limits, power dissipation, or frequency.

### Hidden-result-friendly validation

Expected ranges and measurement instructions are provided without revealing the complete component selection.

### Worked reference solution

A separate solution explains calculations, schematic choices, simulation settings, observed results, and tradeoffs.

### Review rubric

The learner scores the design on correctness, robustness, model quality, clarity, safety, and justification.

## Difficulty labels

- **Foundation:** one governing idea and a small circuit.
- **Integration:** combines two or more previously learned ideas.
- **Design:** starts with requirements rather than a completed schematic.
- **Investigation:** diagnoses unexpected behavior or a deliberately flawed circuit.
- **Professional review:** considers tolerances, startup, layout, sourcing, protection, and testability.

## Visual standards

- Schematics are rendered images, never ASCII art.
- Every important node has a meaningful label.
- Current direction and voltage polarity are shown when they are part of the explanation.
- Expected waveforms use consistent node names with the schematic.
- Equivalent-circuit illustrations are visually distinct from buildable schematics.
- Bad and improved designs are shown side-by-side when layout or component placement matters.

## Version baseline

The initial course targets KiCad 10 and its bundled ngspice integration. Projects should avoid machine-specific absolute paths and should keep any third-party SPICE models inside the relevant lesson or shared model directory, subject to redistribution rights.
