# Lesson 4 Challenge — Reference Solution

For 9 V RMS:

$$V_P=9\sqrt2\approx12.73\text{ V}$$

### Bridge

Two diodes conduct:

$$V_{OUT,PK}\approx12.73-2V_F$$

With 0.7 V per diode, approximately 11.3 V peak. Ripple frequency is 100 Hz. Each diode should have reverse-voltage margin above the source peak and current/surge margin above the 200 mA load because capacitor charging will be pulsed.

### Center-tapped

One diode conducts per half-cycle, so conduction loss is lower, but each half-winding provides only half of the total end-to-end voltage and diode peak inverse voltage is higher. It requires a center-tapped transformer and uses only one half-winding at a time.

For a common 9 V single secondary, the bridge is usually simpler and uses the winding more effectively.