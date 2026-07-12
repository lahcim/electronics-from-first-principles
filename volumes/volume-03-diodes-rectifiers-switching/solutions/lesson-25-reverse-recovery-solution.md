# Lesson 25 Challenge — Worked Solution

Using the triangular approximation:

$$Q_{rr}\approx\frac12I_{RRM}t_{rr}$$

$$Q_{rr}\approx\frac12(3\text{ A})(60\text{ ns})=90\text{ nC}$$

Recovery energy order of magnitude at 400 V:

$$E_{rr}\sim VQ=(400)(90\text{ nC})=36\ \mu J$$

At 100 kHz:

$$P_{rr}\sim36\ \mu J\cdot100\text{ kHz}=3.6\text{ W}$$

This is an approximation because voltage and current overlap are not constant. Include the commutating switch’s current, diode temperature, $di/dt$, and ringing in the final loss calculation.