# Volume 1 — Electrical Foundations and Resistive Circuits

## Volume outcome

By the end of this volume, the learner should be able to read and construct low-voltage resistive schematics, predict their DC behavior, measure them correctly in simulation and hardware, calculate power, identify loading and source-resistance effects, and complete a basic schematic design review.

## Part I — What circuit quantities mean

1. **A circuit needs a loop**  
   Closed paths, open circuits, short circuits, node zero, and why a source alone does not define useful current.
2. **Charge and current**  
   Coulombs, amperes, conventional current, electron motion, current direction, and conservation of charge.
3. **Voltage is a difference**  
   Electric potential, reference nodes, polarity, negative readings, and why a node does not possess an absolute voltage.
4. **Energy and power**  
   Joules, watts, passive sign convention, source-delivered versus component-absorbed power, and energy over time.
5. **Resistance and conductance**  
   Material behavior, geometry, Ohm's law, linearity, and the limits of an ideal resistor.

## Part II — Conservation laws become design tools

6. **Kirchhoff's Current Law**  
   Charge conservation at a node, branch-current signs, and current splitting.
7. **Kirchhoff's Voltage Law**  
   Energy accounting around a loop and consistent voltage polarity.
8. **Series resistors**  
   Equivalent resistance, voltage division, current continuity, and resistor power.
9. **Parallel resistors**  
   Equivalent conductance, current division, and why parallel resistance is below the smallest branch resistance.
10. **Mixed resistor networks**  
    Reduction, nodal reasoning, and when a network cannot be simplified by inspection.

## Part III — Real sources, loads, and measurements

11. **The voltage divider as a design block**  
    Ratio design, standard values, divider current, and dissipation.
12. **Loading changes the divider**  
    Input resistance, parallel loading, measurement disturbance, and error budgeting.
13. **Source resistance and Thevenin models**  
    Open-circuit voltage, short-circuit current, maximum transfer, and practical source behavior.
14. **Norton models and current sources**  
    Source transformation and choosing the representation that makes analysis easiest.
15. **Meters are circuit elements**  
    Voltmeter input resistance, ammeter burden, probe placement, and simulator probes.
16. **Tolerance and worst-case reasoning**  
    Nominal versus guaranteed behavior, corner combinations, and parameter sweeps.
17. **Temperature and resistor ratings**  
    Temperature coefficient, power derating, voltage rating, package size, and failure mechanisms.

## Part IV — Engineering practice

18. **Reading a datasheet and selecting a resistor**  
    Value series, tolerance, power, voltage, package, pulse rating, noise, and availability.
19. **Debugging deliberately broken circuits**  
    Floating nodes, reversed sources, accidental shorts, wrong values, misleading current signs, and bad model mappings.
20. **Capstone: low-voltage sensor divider interface**  
    Design from constraints, validate loading and tolerance, document measurements, and perform a structured review.

## Pilot chapter

The first development milestone implements Lessons 1–5 plus a chapter design challenge. These lessons establish the visual, mathematical, and simulation style before the remaining volume is expanded.

## Planned repository layout

```text
volume-01-foundations/
├── manuscript/
├── figures/
├── schematics/
├── simulations/
├── exercises/
├── solutions/
└── reference-data/
```
