# KiCad/ngspice Simulation Conventions

## Purpose

These conventions keep lesson projects reproducible and make simulator output easier to interpret.

## Version and portability

- Target KiCad 10 unless a lesson states otherwise.
- Keep SPICE libraries in a repository-relative `models/` directory.
- Do not commit references to paths such as `C:\Users\...` or `/home/name/...`.
- Record the source and license of every third-party model.
- Prefer simple built-in models early in the course so model complexity does not hide the core concept.

## Node naming

Use descriptive labels such as:

- `VIN`
- `VOUT`
- `VCAP`
- `VBASE`
- `VCOLLECTOR`
- `CLK`
- `SWITCH_NODE`

Avoid relying on generated names such as `Net-(R1-Pad2)` in instructional plots.

## Voltage and current conventions

- State the reference polarity for every derived voltage.
- State the assumed positive current direction before calculating it.
- Explain that ngspice branch-current signs follow element pin ordering and may appear opposite to an intuitive arrow.
- When a sign is surprising, verify the model pin mapping before assuming the circuit is wrong.

## Ground

Every SPICE circuit needs node `0`. In KiCad, use the SPICE-compatible ground symbol and verify the generated netlist contains a node-zero reference.

## Simulation analyses

### Operating point

Use to inspect DC bias before transient or AC analysis. Check whether semiconductor devices are in the intended region of operation.

### Transient

Document:

- stop time;
- maximum timestep when waveform detail matters;
- source rise/fall time;
- initial conditions;
- whether `startup` or `uic` is used and why.

Do not use an unrealistically ideal voltage step when the edge itself is not the subject of the lesson; finite edges reduce numerical artifacts and better resemble hardware.

### DC sweep

Document swept source/parameter, start, stop, and increment. Use it to expose nonlinearity rather than only showing one operating point.

### AC analysis

First establish a valid DC operating point. State whether plotted amplitude is linear or dB and whether phase is in degrees.

## Plot standards

- Plot only traces needed to answer the experiment question.
- Give plot traces names matching schematic labels.
- Put quantities with very different units on separate panes or clearly separate axes in exported figures.
- Mark important values such as 63.2% time, cutoff frequency, threshold crossing, peak current, or settling time.
- Export reference data when exact validation is useful.

## Model hierarchy

Lessons should distinguish among:

1. ideal behavioral component;
2. simple generic SPICE model;
3. manufacturer macromodel;
4. measured hardware.

A more complex model is not automatically more useful. Select the simplest model that captures the behavior under study.

## Debugging order

When a simulation looks wrong, check in this order:

1. Is node `0` present?
2. Are all wires actually connected?
3. Are source values and analysis settings correct?
4. Are symbol pins mapped to the intended SPICE pins?
5. Is the model orientation correct?
6. Does the DC operating point make physical sense?
7. Is the timestep or frequency resolution adequate?
8. Are startup conditions preventing an oscillator or bistable circuit from moving?
9. Is an ideal source or zero-resistance loop causing numerical trouble?
10. Is the chosen model valid in this voltage, current, frequency, and temperature range?

## Reference results

Each completed simulation lesson should eventually include:

- a rendered schematic;
- expected operating-point values or ranges;
- one or more reference plots;
- a compact measurement table;
- optional CSV data for automated comparison;
- a note explaining expected differences across ngspice/KiCad patch versions.
