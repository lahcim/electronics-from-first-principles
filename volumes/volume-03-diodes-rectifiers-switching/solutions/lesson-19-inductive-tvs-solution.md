# Lesson 19 Challenge — Reference Solution

The 80 V MOSFET must remain below rating with margin:

$$V_{TVS,max}\le80-24-8=48\text{ V}$$

Do not select a “48 V TVS” by name; require its actual clamping voltage at the initial solenoid current to stay below this limit. A lower target, such as 36–40 V clamping above the supply reference, leaves more tolerance and ringing margin.

Worst average magnetic energy is:

$$P_{AVG}\approx90\text{ mJ}\cdot8=0.72\text{ W}$$

The TVS needs repetitive thermal capability comfortably above 0.72 W after accounting for winding dissipation, ambient temperature, and pulse-energy derating.