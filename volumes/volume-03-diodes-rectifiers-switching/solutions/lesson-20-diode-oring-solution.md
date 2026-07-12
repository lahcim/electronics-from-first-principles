# Lesson 20 Challenge — Reference Solution

A passive diode path cannot maintain 4.5 V from a battery that falls to 3.0 V. Even an ideal diode cannot create voltage.

With the 5.0 V adapter, a Schottky path may provide roughly 4.6–4.8 V at 1 A depending on current and temperature. With the battery, output follows battery minus diode drop and falls below requirement well before the battery reaches 3.0 V.

Use ideal-diode MOSFET OR-ing to reduce loss, plus a buck-boost or boost regulator if the load must remain at 4.5–5.0 V over the full battery range. Verify reverse leakage, handoff, startup, and adapter-to-battery backfeed.