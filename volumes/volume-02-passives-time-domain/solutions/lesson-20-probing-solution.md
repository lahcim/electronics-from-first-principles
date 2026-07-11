# Lesson 20 Challenge — Reference Solution

A 30 MHz ringing node has a period of about 33.3 ns.

The passive probe adds 10 pF plus a 40 nH ground-lead inductance. Their own resonance is:

$$f=\frac1{2\pi\sqrt{40\text{ nH}\cdot10\text{ pF}}}\approx252\text{ MHz}$$

Although above 30 MHz, the added capacitance shifts the node resonance and the ground inductance creates extra overshoot during fast edges. The long loop also captures magnetic interference.

The 2 pF differential probe loads the node much less and avoids the grounded clip hazard, provided its common-mode voltage, differential voltage, bandwidth, and CMRR are adequate.

Recommended setup:

- use the differential probe directly across the switching device or intended nodes;
- keep probe leads short and symmetric;
- verify at least several times 30 MHz bandwidth and sufficient rise-time performance;
- compare with a spring-ground passive measurement only if the node is safely ground-referenced;
- include both probe models in simulation and document the observed frequency and peak-voltage changes.