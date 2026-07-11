# Part II — Real Op-Amp Limitations

## Lesson 13 — Input Bias Current

Model small DC currents entering or leaving both inputs. Observe voltage error across source and feedback resistances.

**Challenge:** choose a compensation resistor that approximately balances bias-current error in an inverting amplifier.

---

## Lesson 14 — Input Offset Voltage

Add a small differential DC source inside the model. Multiply its effect by noise gain rather than signal gain.

**Challenge:** estimate output offset for 2 mV input offset and noise gain 11.

---

## Lesson 15 — Input Offset Current and Drift

Distinguish average input bias current from mismatch between the two input currents. Sweep temperature and include offset-voltage drift.

**Challenge:** build a worst-case DC error budget over −20°C to 85°C.

---

## Lesson 16 — Common-Mode Input Range

Sweep both inputs together while maintaining small differential signal. Observe distortion or phase reversal when the common-mode range is exceeded.

**Challenge:** determine whether a “rail-to-rail input” device truly supports both rails at all supply voltages.

---

## Lesson 17 — Output Swing

Load the output with several resistances and sweep commanded output. Real outputs cannot necessarily reach either supply rail, especially under load.

**Challenge:** validate a 0.2–4.8 V output requirement from a 5 V supply.

---

## Lesson 18 — Output Current and Short-Circuit Limits

Sweep load resistance and observe current limiting, output droop, heating, and recovery.

**Challenge:** determine whether an op-amp can directly drive 100 Ω to 2 V peak.

---

## Lesson 19 — Gain-Bandwidth Product

For a dominant-pole op-amp, closed-loop bandwidth is approximately:

$$f_{BW}\approx\frac{GBW}{\text{noise gain}}$$

Compare gains 1, 10, and 100 with the same macromodel.

**Challenge:** select minimum GBW for gain 20 with 100 kHz closed-loop bandwidth and margin.

---

## Lesson 20 — Slew Rate

Large-signal output rate is limited:

$$SR\ge2\pi fV_P$$

Apply increasing sine amplitude and frequency. Observe transition from small-signal bandwidth limitation to triangular slew-rate distortion.

**Challenge:** calculate minimum slew rate for 10 V peak at 20 kHz.

---

## Lesson 21 — Settling Time

Measure time to enter and remain within 1%, 0.1%, and 0.01% error bands after a step. Separate slew interval, linear recovery, ringing, and final thermal/noise limits.

**Challenge:** define settling requirement for a 16-bit ADC driver.

---

## Lesson 22 — Frequency Compensation

Explain dominant-pole compensation and why it trades open-loop bandwidth for stable feedback operation.

Compare compensated and insufficiently compensated conceptual models.

**Challenge:** explain why a device specified for minimum closed-loop gain may oscillate as a follower.

---

## Lesson 23 — Loop Gain and Phase Margin

Break the feedback loop using an AC test method. Plot loop-gain magnitude and phase. Identify unity-loop-gain frequency and phase margin.

**Challenge:** compare expected transient overshoot for 30°, 45°, and 60° phase margin.

---

## Lesson 24 — Capacitive-Load Instability

Add 10 pF, 100 pF, 1 nF, and 10 nF to the output. Observe increased ringing or oscillation. Add an output isolation resistor and compare.

**Challenge:** select a starting isolation resistor from simulation while preserving DC accuracy.

---

## Lesson 25 — Noise Gain

Distinguish signal gain from noise gain. An inverting amplifier with signal gain −10 has noise gain +11.

Explain why bandwidth, offset, voltage noise, and stability often follow noise gain.

**Challenge:** calculate noise gain for a transimpedance amplifier at low and high frequency.

---

## Lesson 26 — Power-Supply Rejection and Common-Mode Rejection

Inject AC ripple into supply rails and common-mode input. Measure PSRR and CMRR versus frequency.

**Challenge:** determine output error from 100 mV supply ripple with 80 dB PSRR.