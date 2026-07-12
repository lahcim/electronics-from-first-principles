# Lesson 40 Final Capstone — Reference Solution

## Rectifier and reservoir

At 300 mA, 50 Hz line, full-wave ripple is 100 Hz. For 1.5 V ripple:

$$C\ge\frac{0.3}{100\cdot1.5}=2000\ \mu F$$

Choose at least 2700–3300 µF after tolerance and ESR. At 14 V RMS high line:

$$V_{PK}\approx19.8\text{ V}$$

After bridge loss, a 25 V capacitor can be suitable only after transformer regulation, line tolerance, light-load rise, and surge margin are verified.

## Inrush and protection

Size source impedance or an NTC/precharge path so worst-phase startup remains below 8 A. Select the TVS from actual clamp voltage at pulse current, not standoff voltage, and coordinate its energy with the fuse or limiter.

## Relay clamp

The coil stores 0.30 mJ at 100 mA. A plain diode may release too slowly. Use a higher-voltage Zener/TVS clamp while keeping supply plus clamp plus overshoot below 50 V. Verify current below 10 mA in 4 ms and repetitive average power at 5 Hz.

## Photodiode

Photocurrent is 1–50 µA. A TIA near 27–33 kΩ produces roughly 33 mV to 1.65 V of signal span. Choose op-amp GBW and feedback capacitance to meet 50 kHz with the total input capacitance and retain ambient-light headroom.

The final design passes only when all nominal, corner, fault, temperature, and bench-verification measurements are documented numerically.