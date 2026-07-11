# Part III — Passive Filters and Loading

## Lesson 19 — Poles and Zeros Intuitively

A pole is a frequency-dependent mechanism that makes gain fall and phase rotate. A zero makes gain rise or cancels a pole under specific conditions.

For a first-order RC low-pass:

$$H(s)=\frac1{1+sRC}$$

The pole is at:

$$\omega_p=\frac1{RC}$$

Relate the pole to the time constant from Volume 2. A shorter time constant means a higher corner frequency.

**Challenge:** identify the pole of R = 10 kΩ, C = 10 nF.

---

## Lesson 20 — First-Order RC Low-Pass Filter

Use R = 1 kΩ and C = 100 nF:

$$f_c=\frac1{2\pi RC}=1.5915\text{ kHz}$$

At low frequency, VOUT ≈ VIN. At $f_c$, magnitude is −3 dB and phase is −45°. Far above the corner, slope approaches −20 dB/decade.

Run AC and transient simulations. Apply a square wave below and above the corner and observe smoothing and rounded edges.

**Challenge:** design a 500 Hz low-pass using E24 R and standard C values, then report actual corner.

---

## Lesson 21 — First-Order RC High-Pass Filter

Swap component positions so the capacitor is in series and resistor goes to ground.

$$H(s)=\frac{sRC}{1+sRC}$$

At low frequency, the capacitor blocks. At high frequency, output approaches input. At the corner, magnitude is −3 dB and phase is +45° for VOUT across R.

Apply a square wave and observe edge pulses when the signal period is long relative to RC.

**Challenge:** design a 20 Hz AC-coupling network into a 100 kΩ input.

---

## Lesson 22 — RL Low-Pass and High-Pass Filters

A series inductor with output across R forms a low-pass. Output across L forms a high-pass.

Corner:

$$f_c=\frac{R}{2\pi L}$$

Compare equivalent RC and RL first-order responses. Discuss practical differences: DCR, saturation, size, and magnetic coupling.

**Challenge:** choose L for a 1 kHz RL low-pass driving 100 Ω.

---

## Lesson 23 — Cascaded Passive Filters

Cascade two RC low-pass stages. If one stage does not load the other, slopes can approach −40 dB/decade after both poles.

Then connect them directly with equal values and observe that loading shifts pole locations and damping. Compare:

- ideal buffered cascade;
- direct passive cascade;
- widely separated impedance levels.

**Challenge:** design two passive stages whose loading error at each intended corner is below 5%.

---

## Lesson 24 — Filter Source Resistance

Add source resistance before an RC filter. It becomes part of the filter resistance and changes the corner:

$$f_c=\frac1{2\pi(R_S+R)C}$$

If the source is a divider or sensor, use its Thevenin resistance.

**Challenge:** redesign a 1 kHz filter driven by a 2 kΩ source so the total effective resistance produces the intended corner.

---

## Lesson 25 — Filter Load Resistance

A finite load is in parallel with the filter’s output resistor or capacitor-related network. Calculate loaded gain and corner frequency.

For an RC low-pass with output load $R_L$, the capacitor sees:

$$R_{TH}=R\parallel R_L$$

when finding the time constant after deactivating the source, while DC gain may also be reduced by source and load division.

**Challenge:** keep passband loss below 1% when driving a 10 kΩ load.

---

## Lesson 26 — Source and Load Impedance as a Design System

Treat source, filter, and load together rather than as isolated blocks. Use Thevenin and Norton equivalents to simplify analysis.

Compare:

- low source impedance and high load impedance;
- high source impedance and comparable load;
- impedance matching for maximum power;
- voltage transfer where high load impedance is preferred.

**Challenge:** explain why audio line inputs are normally bridging loads rather than power-matched loads.

---

## Lesson 27 — Band-Pass and Band-Stop Behavior

Create a passive band-pass by cascading a high-pass and low-pass with separated corners. Create a notch using a twin-T conceptual network or a resonant branch.

Measure:

- lower and upper −3 dB frequencies;
- center frequency;
- bandwidth;
- passband loss;
- loading-induced shifts.

**Challenge:** design a passive band-pass passing roughly 300 Hz–3 kHz, and explain why buffering may be needed for accurate corners.