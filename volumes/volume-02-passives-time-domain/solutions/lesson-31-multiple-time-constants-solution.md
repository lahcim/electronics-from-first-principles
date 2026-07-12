# Lesson 31 Challenge — Reference Solution

Use a fast first stage and slower second stage, for example:

- Stage 1: 2.2 kΩ and 1 µF, nominal $\tau_1=2.2$ ms;
- Stage 2: 22 kΩ and 1 µF, nominal $\tau_2=22$ ms;
- load: 200 kΩ.

The first stage gives an approximate 10–90% rise near 4.8 ms. The slower stage contributes final settling on the order of $4.6\tau_2\approx101$ ms before loading corrections, so values require slight reduction, such as 20 kΩ and 1 µF.

At 10 kHz, both poles provide strong attenuation. Because the stages are passive and directly coupled, calculate or simulate actual pole locations with the 200 kΩ load. Tune until measured rise time is below 5 ms and 1% settling below 100 ms. Identify the first stage as the fast mode and the second as the dominant slow mode.