# Lesson 28 Challenge — Reference Solution

A two-stage RC filter is a practical starting point because one first-order pole gives only about 20 dB/decade attenuation.

Choose two buffered stages near 2 kHz each. At 100 kHz, each stage attenuates by approximately 34 dB, so the pair easily exceeds 30 dB.

A 2 kHz pole has $RC\approx79.6\ \mu s$. Its 1% settling is about 366 µs per isolated stage; the cascaded response remains below 2 ms with margin.

A practical starting pair is 8.2 kΩ and 10 nF per stage. If no buffer is allowed, include the 50 kΩ load and interstage loading, then tune values in AC and transient simulation. Pass only when 100 kHz attenuation and measured 1% settling both meet the requirement.