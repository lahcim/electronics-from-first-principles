# Lesson 22 Challenge — Worked Solution

Given 60 V, 1000 µF, and 1.5 A maximum initial current:

$$R_{min}=60/1.5=40\ \Omega$$

Choose 43 Ω from E24.

Initial current:

$$I_0=60/43=1.395\text{ A}$$

To reach 54 V, which is 90% of 60 V:

$$t_{90}=2.303RC$$

$$t_{90}=2.303(43)(1000\ \mu F)\approx99\text{ ms}$$

At +20% capacitance, $t_{90}\approx119$ ms, still below 500 ms.

Stored energy at 60 V:

$$E_C=\frac12(1000\ \mu F)(60^2)=1.8\text{ J}$$

The precharge resistor dissipates approximately 1.8 J per full charge. Require at least 3.6 J pulse-energy capability.

Closing the bypass exactly at 90% leaves 6 V difference. If bypass-path resistance is 2 Ω total, the spike is 3 A. To remain below 3 A, either wait beyond 90%, increase bypass-path resistance, or control current actively. The final design should use a voltage threshold chosen from the actual bypass resistance and 3 A requirement, not the 90% value alone.