# Lesson 4 Design Challenge — Worked Solution

Required power is 100 mW from 10 V.

$$R=\frac{V^2}{P}=\frac{(10\text{ V})^2}{0.100\text{ W}}=1000\ \Omega$$

Current is:

$$I=\frac{V}{R}=\frac{10\text{ V}}{1\text{ k}\Omega}=10\text{ mA}$$

A 1 kΩ resistor dissipates exactly 100 mW nominally. The required rating is at least 200 mW, so a 0.25 W resistor satisfies the stated rule; a 0.5 W part provides more margin.

Energy over 30 seconds is:

$$E=Pt=(0.100\text{ W})(30\text{ s})=3.0\text{ J}$$

Expected simulation results:

| Measurement | Result |
|---|---:|
| load current | 10 mA |
| resistor power | +100 mW |
| source power | −100 mW |
| 30 s energy | 3.0 J |
