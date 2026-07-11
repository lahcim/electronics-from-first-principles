# Lesson 12 Challenge — Worked Solution

For $R=10\text{ k}\Omega$, $C=10\ \mu\text{F}$, and $V_S=5$ V:

$$RC=100\text{ ms}$$

### Case 1 — Start at 0 V

$$t_{4.5}=-RC\ln(1-4.5/5)=2.303RC\approx230.3\text{ ms}$$

Use `startup` or `.ic V(VCAP)=0` with a justified transient setup.

### Case 2 — Start at 2 V

Charging from $V_0$ to $V_S$ follows:

$$V(t)=V_S+(V_0-V_S)e^{-t/RC}$$

Set $V(t)=4.5$ V:

$$4.5=5-3e^{-t/RC}$$

$$t=RC\ln 6\approx179.2\text{ ms}$$

Use `.ic V(VCAP)=2` and `.tran ... uic`.

### Case 3 — Normal DC operating point

With a 5 V DC source, the operating-point solver places the capacitor at 5 V before time zero. The transient begins already settled, so there is no charging waveform and no 4.5 V rising crossing to measure.

This is correct simulator behavior for the assumed past, but wrong for a power-on study.