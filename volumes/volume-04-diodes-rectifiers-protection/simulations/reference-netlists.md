# Volume 4 Reference ngspice Netlists

## Diode DC sweep

```spice
V1 IN 0 0
R1 IN D 100
D1 D 0 DTEST
.model DTEST D(Is=1n N=1.8 Rs=0.2 Cjo=20p Tt=2u Bv=100 Ibv=10u)
.dc V1 -10 1 0.01
.end
```

## LED resistor experiment

```spice
V1 IN 0 3.3
R1 IN LEDN 330
D1 LEDN 0 DRED
.model DRED D(Is=1e-20 N=2 Rs=10 Eg=1.9)
.op
.end
```

## Zener regulator

```spice
V1 IN 0 12
R1 IN OUT 330
DZ OUT 0 DZ5V1
RL OUT 0 1k
.model DZ5V1 D(Bv=5.1 Ibv=5m Rs=5)
.dc V1 8 14 0.1
.end
```

## Half-wave rectifier

```spice
V1 IN 0 SIN(0 10 60)
D1 IN OUT DRECT
RL OUT 0 1k
.model DRECT D(Is=10n Rs=0.1 N=1.8)
.tran 20u 100m
.end
```

## Bridge with reservoir capacitor

```spice
V1 AC1 AC2 SIN(0 16.97 60)
D1 AC1 POS DRECT
D2 AC2 POS DRECT
D3 NEG AC1 DRECT
D4 NEG AC2 DRECT
C1 POS NEG 1000u
RL POS NEG 120
.model DRECT D(Is=10n Rs=0.1 N=1.8)
.tran 20u 500m startup
.end
```

## Peak detector

```spice
V1 IN 0 SIN(0 5 1k)
D1 IN HOLD DFAST
C1 HOLD 0 1u
R1 HOLD 0 1Meg
.model DFAST D(Is=1n Rs=0.1 Tt=5n)
.tran 1u 20m
.end
```

## Flyback diode

```spice
VCC VPLUS 0 24
RCOIL VPLUS NCOIL 120
LCOIL NCOIL NSW 300m
S1 NSW 0 CTRL 0 SWMOD
VCTRL CTRL 0 PULSE(0 5 0 1u 1u 50m 100m)
D1 NSW VPLUS DCLAMP
.model SWMOD SW(Ron=0.05 Roff=1G Vt=2 Vh=0.2)
.model DCLAMP D(Is=1n Rs=0.1 Tt=2u Bv=100)
.tran 2u 100m startup
.end
```

## TVS pulse clamp

```spice
IPULSE SURGE 0 PULSE(0 10 1u 10n 10n 10u 100u)
RS SURGE OUT 1
DTVS OUT 0 TVS
RL OUT 0 1k
.model TVS D(Bv=18 Ibv=1m Rs=0.5)
.tran 1n 30u
.end
```

In KiCad 10, verify diode orientation and SPICE pin mapping. Mark `.model`, `.dc`, `.tran`, `.temp`, and `.meas` lines as real SPICE directives and confirm them in the generated netlist.