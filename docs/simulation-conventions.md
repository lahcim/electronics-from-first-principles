# KiCad/ngspice Simulation Conventions

## Purpose

These conventions keep lesson projects reproducible and make simulator output easier to interpret.

## Version and portability

- Target KiCad 10 unless a lesson states otherwise.
- Keep SPICE libraries in a repository-relative `models/` directory.
- Do not commit references to paths such as `C:\Users\...` or `/home/name/...`.
- Record the source and license of every third-party model.
- Prefer simple built-in models early in the course so model complexity does not hide the core concept.

## Markdown mathematics

GitHub and the PDF build must use math delimiters that render in both environments:

- inline math: `$V=IR$`;
- display math: `$$` on its own line before and after the equation.

Do not use `\(...\)` or `\[...\]` in course Markdown because GitHub does not render those delimiters consistently.

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

## Schematic SPICE directives and text fields

Every simulation lesson must include a subsection named **Schematic SPICE directives / text fields**.

That subsection must state one of these explicitly:

1. **None required** — the analysis is configured entirely in KiCad's Simulator dialog; or
2. the exact directives the learner must place on the schematic as a SPICE directive/text field.

Examples include:

```spice
.tran 10u 100m startup
.ac dec 100 10 1Meg
.ic V(VCAP)=0
.options reltol=1e-4
.include "../models/device.lib"
```

Rules:

- distinguish ordinary explanatory schematic text from simulator directives;
- place each required directive exactly as ngspice must receive it, including its leading period;
- explain what every directive changes and why it is needed;
- do not add directives merely by habit when the Simulator dialog already expresses the setup clearly;
- include initial conditions, `startup`, or `uic` only when their effect is intentionally taught;
- use repository-relative model paths;
- when both a dialog setting and a schematic directive could control the same analysis, identify which one is authoritative for the lesson;
- include a netlist-verification note when directive recognition or placement is easy to get wrong.

A directive must be placed using KiCad's SPICE directive mechanism or a schematic text object that KiCad exports to the SPICE netlist. A visible note that is not exported to the netlist does not configure ngspice.

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
4. Are required schematic SPICE directives present and exported to the netlist?
5. Are symbol pins mapped to the intended SPICE pins?
6. Is the model orientation correct?
7. Does the DC operating point make physical sense?
8. Is the timestep or frequency resolution adequate?
9. Are startup conditions preventing an oscillator or bistable circuit from moving?
10. Is an ideal source or zero-resistance loop causing numerical trouble?
11. Is the chosen model valid in this voltage, current, frequency, and temperature range?

## Reference results

Each completed simulation lesson should eventually include:

- a rendered schematic;
- expected operating-point values or ranges;
- one or more reference plots;
- a compact measurement table;
- optional CSV data for automated comparison;
- a note explaining expected differences across ngspice/KiCad patch versions.
