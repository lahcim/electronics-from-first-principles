# Lesson 20 Capstone — Reference Solution

A practical candidate is:

- $R_S=1\text{ k}\Omega$ maximum sensor resistance;
- $R_1=29.4\text{ k}\Omega$, 1%;
- $R_2=10.0\text{ k}\Omega$, 1%;
- $R_{ADC}=1\text{ M}\Omega$ minimum.

Loaded lower resistance:

$$R_{LOW}=10\text{ k}\Omega\parallel1\text{ M}\Omega=9.90099\text{ k}\Omega$$

At 12 V:

$$V_{ADC}=12\frac{9.90099}{1+29.4+9.90099}=2.948\text{ V}$$

Nominal full-scale error relative to 3.0 V is about −1.73%, so this pair does not meet the strict ±1% nominal requirement.

A better candidate is:

- $R_1=28.7\text{ k}\Omega$
- $R_2=10.0\text{ k}\Omega$

Then:

$$V_{ADC}=12\frac{9.90099}{1+28.7+9.90099}=3.000\text{ V approximately}$$

Divider current is about 302 µA, below 500 µA.

Nominal powers are only a few milliwatts, so 0.1 W or 0.125 W parts have large margin. The worst-case maximum ADC voltage must use source high, RS low, R1 low, R2 high, and RADC high. With a 12 V hard maximum and 1% resistors, this candidate remains well below 3.3 V, but exact corner values should be verified using the provided parameter sweep.

Fault behavior:

| Fault | Expected result |
|---|---|
| R1 open | VADC falls toward 0 V through R2/RADC |
| R2 open | VADC rises dangerously toward sensor voltage through R1 |
| ADC short | current limited mainly by RS + R1, about 404 µA at 12 V |
| RADC open | divider approaches unloaded ratio and VADC rises slightly |

The open-R2 case shows that a divider alone may not provide single-fault ADC protection. A later design should add an appropriate clamp or buffer if that fault must be tolerated.