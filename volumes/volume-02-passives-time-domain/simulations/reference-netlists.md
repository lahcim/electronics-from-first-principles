# Volume 2 Reference ngspice Netlists

These compact netlists support the core experiments. Each should be reproduced as a KiCad 10 schematic before running.

## RC charging — Lessons 1, 5, 7, and 9

```spice
* RC charging
V1 IN 0 PULSE(0 5 0 1u 1u 100m 200m)
R1 IN VCAP 10k
C1 VCAP 0 1u
.tran 20u 60m startup
.meas tran T63 WHEN V(VCAP)=3.1606 RISE=1
.meas tran T90 WHEN V(VCAP)=4.5 RISE=1
.end
```

## Constant-current capacitor ramp — Lessons 2 and 3

```spice
* Constant-current charge
I1 0 VCAP 1m
C1 VCAP 0 1u IC=0
.tran 10u 5m uic
.end
```

## Real capacitor RLC model — Lessons 13–15

```spice
* ESR and ESL model
V1 IN 0 AC 1
RTEST IN N1 1m
LESL N1 N2 1n
RESR N2 N3 50m
CIDEAL N3 0 1u
.ac dec 100 10 1G
.end
```

## RL step response — Lessons 21–28

```spice
* RL rise
V1 IN 0 PULSE(0 5 0 1u 1u 5m 10m)
R1 IN N1 100
L1 N1 0 10m
.tran 1u 600u startup
.end
```

## Coupled inductors — Lessons 34 and 35

```spice
* Coupled inductors
V1 PRI 0 SIN(0 1 1k)
L1 PRI 0 10m
L2 SEC 0 2.5m
K1 L1 L2 0.99
RL SEC 0 100
.tran 1u 5m
.end
```

## PWM RC integrator — Lesson 38

```spice
* PWM averaging
V1 IN 0 PULSE(0 3.3 0 100n 100n 50u 100u)
R1 IN OUT 10k
C1 OUT 0 1u
.tran 1u 100m startup
.end
```

## Relay-coil flyback baseline — Lesson 40

```spice
* Relay coil with idealized switch and flyback diode
VCC VPLUS 0 12
RCOIL VPLUS NCOIL 120
LCOIL NCOIL NSW 100m
S1 NSW 0 CTRL 0 SWMOD
VCTRL CTRL 0 PULSE(0 5 0 1u 1u 20m 100m)
D1 NSW VPLUS DCLAMP
.model SWMOD SW(Ron=0.05 Roff=1G Vt=2 Vh=0.2)
.model DCLAMP D(Is=1n Rs=0.1)
.tran 2u 50m startup
.end
```

In KiCad, verify the switch and diode pin mapping and ensure all `.model`, `.tran`, `.meas`, `.temp`, `.step`, and `.ic` lines are exported as SPICE directives rather than ordinary text.