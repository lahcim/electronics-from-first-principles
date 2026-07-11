# Part II — BJT Amplifiers and Building Blocks

## Lesson 19 — Common-Emitter Amplifier

Build a collector-resistor amplifier and observe voltage inversion. Separate DC bias from small-signal behavior.

**Challenge:** bias a transistor near mid-supply for maximum symmetrical swing.

---

## Lesson 20 — DC Biasing

Compare fixed-base bias, collector-feedback bias, voltage-divider bias, and emitter degeneration. Sweep beta and temperature.

**Challenge:** choose a bias network keeping collector voltage within ±10% over beta 80–250.

---

## Lesson 21 — Emitter Degeneration

Add emitter resistance. Negative feedback stabilizes current and reduces gain.

Approximate small-signal gain:

$$A_V\approx-\frac{R_C}{r_e+R_E}$$

**Challenge:** trade gain for bias stability and linearity.

---

## Lesson 22 — Small-Signal Transconductance

Introduce:

$$g_m=\frac{I_C}{V_T}$$

and:

$$r_e\approx\frac1{g_m}$$

Compare gain at 0.1, 1, and 10 mA collector current.

**Challenge:** calculate gm and intrinsic emitter resistance at 2 mA.

---

## Lesson 23 — Input and Output Impedance

Measure input impedance with a test source and output impedance by deactivating the input. Include bias resistors and transistor parameters.

**Challenge:** design coupling values for a 10 kΩ source and 10 kΩ load.

---

## Lesson 24 — Emitter Follower

Study near-unity voltage gain, high input impedance, low output impedance, and current gain.

**Challenge:** buffer a high-resistance divider driving 1 kΩ while limiting gain error.

---

## Lesson 25 — Common-Base Amplifier

Observe low input impedance, non-inverting voltage gain, and useful high-frequency behavior.

**Challenge:** calculate input resistance near $1/g_m$ at 1 mA.

---

## Lesson 26 — Differential Pair

Drive two transistor bases differentially. Observe current steering, common-mode behavior, tail current, and limited linear range.

**Challenge:** estimate input difference needed to steer most tail current to one side.

---

## Lesson 27 — Current Mirrors

Build a two-transistor mirror. Study matching, finite beta, Early effect, output compliance, and resistor programming.

**Challenge:** design a nominal 1 mA mirror and quantify error for beta 100.

---

## Lesson 28 — Darlington Pair

Combine two BJTs for high current gain. Observe increased base-emitter voltage and saturation voltage, leakage multiplication, and slower switching.

**Challenge:** compare Darlington and single-BJT relay drivers.

---

## Lesson 29 — Sziklai Pair and Compound Stages

Study complementary-feedback pair behavior and compare its voltage drops and saturation with a Darlington.

**Challenge:** explain why compound-device pin mapping and polarity require careful checking.

---

## Lesson 30 — BJT Amplifier Capstone

Design a single-supply common-emitter amplifier for a 10 mV RMS, 1 kHz input with gain near −20.

Requirements:

- 12 V supply;
- 10 kΩ source;
- 10 kΩ load;
- output clipping margin;
- bias stability over beta and temperature;
- low-frequency coupling corners below 50 Hz;
- transistor power and noise discussed;
- AC and transient simulations compared.

Provide nominal, tolerance, distortion, and clipping results.