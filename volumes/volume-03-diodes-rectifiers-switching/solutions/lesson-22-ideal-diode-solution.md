# Lesson 22 Challenge — Reference Solution

For less than 100 mV drop at 5 A:

$$R_{path}\le100\text{ mV}/5\text{ A}=20\text{ m}\Omega$$

This budget includes MOSFET, copper, connector, and sense resistance. Choose a MOSFET near 8–12 mΩ at hot junction and the actual gate voltage.

To keep reverse-current peak below 1 A during handoff, the controller must detect approximately zero or slightly negative forward voltage and remove gate charge before output-to-input inductance allows current to build. Specify reverse threshold, propagation delay, gate sink current, and any reverse-current blocking topology. Add a $V_{GS}$ clamp and verify startup body-diode conduction, source handoff, short circuit, and output-capacitor backfeed.