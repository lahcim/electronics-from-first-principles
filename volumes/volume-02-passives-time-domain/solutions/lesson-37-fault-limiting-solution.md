# Lesson 37 Challenge — Reference Solution

Normal current is 1.2 A, with 2.5 A for 100 ms at startup. Available fault current is 20 A and the downstream path tolerates 12 A²s.

The protection must not nuisance-trip during startup:

$$I^2t_{startup}=2.5^2\cdot0.1=0.625\text{ A}^2\text{s}$$

The downstream path allows 12 A²s, so the protection must clear well before:

$$t_{max}=\frac{12}{20^2}=30\text{ ms}$$

at a 20 A fault, assuming fault current remains near 20 A.

Choose a fuse whose time-current curve tolerates the 2.5 A, 100 ms startup pulse but whose total clearing $I^2t$ remains below 12 A²s with margin. Also verify breaking capacity above the available fault current and voltage rating above 24 V.

A PTC alone may not satisfy a strict 30 ms energy limit because it does not fully open. It may be useful with an upstream fuse, but the fuse curve is the primary proof.