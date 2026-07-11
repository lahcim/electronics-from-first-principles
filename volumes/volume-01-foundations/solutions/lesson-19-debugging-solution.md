# Lesson 19 Debugging Challenge — Worked Solution

A representative six-fault challenge should be corrected in this order:

1. **Missing node 0** — add the SPICE ground reference.
2. **R1 entered as `1m` instead of `1Meg` or intended value** — correct the suffix.
3. **Wire endpoint not snapped to R2** — reconnect and verify net highlighting.
4. **Voltage source reversed** — restore intended polarity.
5. **Required `.op` or `.tran` line is ordinary text** — mark it as a SPICE directive and verify the netlist.
6. **Wrong model pin mapping** — map graphical pins to the model’s documented pin order.

After correction, a suitable 5 V-to-3.3 V divider can use R1 = 5.1 kΩ and R2 = 10 kΩ:

$$V_{OUT}=5\frac{10}{5.1+10}=3.311\text{ V}$$

Source current is:

$$I=\frac{5}{15.1\text{ k}\Omega}=331\ \mu\text{A}$$

The result is within 1% of 3.3 V and below 10 mA. KCL, KVL, and total-power residuals should be numerically near zero.