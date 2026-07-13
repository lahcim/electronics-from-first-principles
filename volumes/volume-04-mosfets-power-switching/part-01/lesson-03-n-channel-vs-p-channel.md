# Lesson 3 — N-Channel and P-Channel MOSFETs

> **Fast-track time:** 15–20 minutes  
> **Capability unlocked:** Choose device polarity and orient the body diode correctly in low-side and high-side paths.

## Polarity

An N-channel MOSFET turns on when its gate is positive relative to its source. A P-channel MOSFET turns on when its gate is negative relative to its source.

N-channel devices usually provide lower $R_{DS(on)}$ for the same die area because electron mobility is higher than hole mobility. They dominate efficient power stages.

![N-channel and P-channel switching](../figures/lesson-03-n-vs-p.svg)

## Typical placement

- N-channel: simple low-side switch.
- P-channel: simple high-side switch at modest voltage/current.
- N-channel high side: best efficiency, but requires a gate voltage above the source.

## Body diode

Every power MOSFET contains an intrinsic body diode. Its direction matters during startup, reverse polarity, inductive commutation, and half-bridge dead time.

## KiCad/ngspice experiment

Build equivalent 12 V, 2 A high-side paths with a P-channel MOSFET and an N-channel MOSFET plus ideal elevated gate drive. Compare voltage drop and gate-drive requirements.

## What to observe

- N-channel conduction loss is usually lower.
- P-channel high-side control is simpler.
- Source voltage moves in a high-side circuit, so gate voltage must be interpreted as $V_{GS}$.
- Wrong orientation permits current through the body diode.

## Common mistakes

- Driving a high-side N-channel gate with only the load supply voltage.
- Forgetting P-channel gate polarity.
- Swapping source and drain without checking body-diode behavior.
- Comparing $R_{DS(on)}$ at different gate voltages.

## Design challenge

Select a topology for a 12 V, 4 A high-side load switch controlled by 3.3 V logic. Compare a P-channel solution with an N-channel plus driver using loss, complexity, startup state, and reverse-current criteria.