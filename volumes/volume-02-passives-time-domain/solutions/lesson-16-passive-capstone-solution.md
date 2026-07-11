# Lesson 16 Capstone — Reference Solution

## MCU rail

Reserve 20 mV for ESR/ESL and 100 mV for capacitance.

$$C_{effective}\ge300\ \mu F$$

With 60% ceramic retention, nominal ceramic capacitance would need at least 500 µF before tolerance. A practical starting design is:

- 470 µF low-ESR bulk capacitor near the MCU power region;
- 47–100 µF effective ceramic nearby;
- 100 nF at each MCU supply pin;
- combined ESR below roughly $20\text{ mV}/0.3\text{ A}=66.7$ mΩ;
- low-inductance placement for the local ceramics.

Simulate 3 nH between remote bulk and load. Verify minimum rail voltage remains at or above 3.18 V.

## Pushbutton

Choose 100 kΩ and 220 nF:

$$RC=22\text{ ms}$$

Rising threshold crossing at 2.0 V:

$$t\approx0.931RC=20.5\text{ ms}$$

At +20% C, crossing is about 24.6 ms. Switch current is 33 µA. Feed the RC node into a Schmitt input and verify the bounce sequence produces one transition.

## Relay clamp

Coil current is 50 mA and stored energy is 0.25 mJ. A plain diode is likely to meet the 12 ms current-decay requirement because coil resistance is relatively high, but simulate it. If release is too slow, add a Zener clamp while keeping:

$$V_{DS,peak}<40\text{ V}$$

With 12 V supply, a nominal 18–22 V clamp above the supply may approach 30–34 V before tolerance and overshoot. Use a MOSFET with additional voltage margin and verify clamp energy above 0.25 mJ per event with repetition-rate margin.

## Final review

The design passes only when all three transient simulations include realistic ESR, ESL, thresholds, tolerances, and measured pass/fail values. The selected parts must also satisfy regulator stability, capacitor bias/temperature, diode pulse current, and MOSFET voltage/SOA requirements.