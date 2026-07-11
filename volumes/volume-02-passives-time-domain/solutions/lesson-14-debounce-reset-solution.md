# Lesson 14 Challenge — Reference Solution

Choose a 100 kΩ pull-up. Closed-switch current is:

$$I=3.3/100\text{k}=33\ \mu\text{A}$$

For a rising threshold of 2.0 V from a 3.3 V rail:

$$t_{rise}=-RC\ln(1-2/3.3)=0.931RC$$

To keep nominal response below 25 ms:

$$RC<26.9\text{ ms}$$

Choose $C=220$ nF, giving $RC=22$ ms and nominal rising crossing near 20.5 ms.

With +20% capacitance, crossing is about 24.6 ms, still inside 30 ms. The 4 ms bounce pulses are much shorter than the time constant, so the RC node moves only partway toward the opposite state. The Schmitt input prevents repeated toggling while the node traverses the threshold region.

For release, calculate against the 1.0 V falling threshold using the actual discharge direction and resistance. Simulate the complete bounce sequence, because several pulses can accumulate charge even when each pulse is individually short.