# Lesson 12 Challenge — Reference Solution

For less than 2 mV crossover error, input offset should be comfortably below 2 mV; target 200–500 µV to leave margin for bias-current and finite-gain errors.

At 1 kHz and 1 V peak, minimum sine-wave slew rate is:

$$SR_{min}=2\pi fV_P\approx0.0063\text{ V}/\mu s$$

Use at least 0.1 V/µs for margin and recovery behavior. Gain-bandwidth should be well above 1 kHz—typically at least hundreds of kilohertz to several megahertz depending on topology and desired accuracy. The op-amp input common-mode and output swing must include the zero-crossing region on the chosen supply rails, and the model must include saturation recovery.