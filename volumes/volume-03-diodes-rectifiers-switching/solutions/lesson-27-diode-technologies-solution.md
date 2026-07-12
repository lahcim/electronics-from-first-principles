# Lesson 27 Challenge — Reference Solution

At 400 V, 8 A, and 100 kHz, compare both parts at the actual junction temperature.

For the silicon diode, estimate:

$$P_{cond}\approx V_FI_{AVG}$$

and:

$$P_{rr}\sim V_{BUS}Q_{rr}f_s$$

For the SiC diode, minority-carrier recovery is negligible, but include junction-capacitance energy, forward loss, and package thermal resistance.

A typical outcome is that SiC substantially reduces switch turn-on current and recovery loss, especially at high temperature and hard switching. The ultrafast silicon diode may still win on cost if duty cycle, frequency, and cooling keep total loss acceptable. Final selection requires hot $V_F$, $Q_{rr}$ test conditions, $C(V)$, surge rating, package thermal data, availability, and measured EMI.