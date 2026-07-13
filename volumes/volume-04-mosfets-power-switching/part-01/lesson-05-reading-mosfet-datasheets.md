# Lesson 5 — Reading MOSFET Datasheets Like an Engineer

> **Fast-track time:** 20 minutes  
> **Capability unlocked:** Select a MOSFET from guaranteed operating data rather than headline voltage and current ratings.

## Start with the application

Write down:

- maximum drain-source voltage including overshoot;
- continuous, RMS, and peak current;
- available gate voltage;
- switching frequency and edge targets;
- allowable conduction and switching loss;
- ambient, PCB, and cooling conditions;
- avalanche, reverse current, and fault requirements.

![MOSFET datasheet workflow](../figures/lesson-05-datasheet-workflow.svg)

## The most important tables and curves

### $V_{DS}$ rating

Absolute maximum, not a normal operating target. Add transient and tolerance margin.

### $R_{DS(on)}$

Use the guaranteed maximum at your actual $V_{GS}$. Correct for junction temperature using the normalized resistance curve.

$$P_{cond}=I_{RMS}^2R_{DS(on),hot}$$

### Gate charge

$Q_G$, $Q_{GD}$, and the test voltage/current indicate driver demand and switching behavior.

### SOA

Safe operating area limits simultaneous voltage, current, pulse duration, and temperature. The headline current rating does not prove linear or fault survival.

### Thermal data

Use the package and board condition matching your design. Junction-to-ambient values from an ideal test board may not apply.

### Body diode and avalanche

Check forward drop, reverse recovery, repetitive use guidance, and single-pulse avalanche conditions.

## KiCad/ngspice experiment

Create a parameterized switch model and compare:

- 10 mΩ typical at 25°C;
- 15 mΩ maximum at 25°C;
- 27 mΩ estimated hot;
- 3.3 V versus 10 V gate drive.

Measure conduction loss and switching energy.

## Common mistakes

- Selecting from the front-page current rating.
- Using typical room-temperature $R_{DS(on)}$.
- Ignoring the gate voltage attached to the resistance specification.
- Treating SOA as implied by current rating.
- Comparing gate charge at different test conditions.

## Design challenge

Choose between two 40 V MOSFETs for a 12 V, 15 A, 100 kHz synchronous buck. One has 3 mΩ resistance and 80 nC gate charge; the other has 6 mΩ and 25 nC. Define the calculations needed to choose the better high-side and low-side devices.

## Remember

> A MOSFET datasheet is a set of conditional guarantees, not a list of independent best-case numbers.