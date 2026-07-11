# Volume 6 Reference ngspice Netlists

## Idealized op-amp follower

```spice
V1 IN 0 SIN(0 1 1k)
EOP OUT 0 IN OUT 100k
RL OUT 0 1k
.tran 2u 5m
.end
```

## Non-inverting amplifier

```spice
V1 IN 0 AC 1 SIN(0 100m 1k)
XU1 IN NFB VCC VEE OUT OPAMP
RF OUT NFB 90k
RG NFB 0 10k
VCC VCC 0 15
VEE VEE 0 -15
.subckt OPAMP P N VP VN O
E1 O 0 P N 100k
.ends OPAMP
.op
.ac dec 100 10 10Meg
.tran 2u 5m
.end
```

## Finite-bandwidth op-amp model

```spice
.subckt OP1 P N VP VN OUT
RIN P N 10Meg
EERR N1 0 P N 100k
RDOM N1 N2 1k
CDOM N2 0 15.9n
EOUT OUT 0 N2 0 1
ROUT OUT N3 50
.ends OP1
```

## Active low-pass

```spice
V1 IN 0 AC 1
R1 IN N1 15.9k
C1 N1 0 10n
EOP OUT 0 N1 OUT 100k
.ac dec 100 10 1Meg
.end
```

## Practical integrator

```spice
V1 IN 0 PULSE(-1 1 0 1u 1u 500u 1m)
RIN IN NINV 10k
CF NINV OUT 100n
RF NINV OUT 1Meg
EOP OUT 0 0 NINV 100k
.tran 2u 10m startup
.end
```

## Transimpedance amplifier

```spice
IIN NINV 0 AC 1n SIN(0 1u 1k)
RF OUT NINV 500k
CF OUT NINV 10p
CPD NINV 0 100p
EOP OUT 0 0 NINV 1Meg
.op
.ac dec 100 1 10Meg
.tran 2u 5m
.end
```

## Comparator with hysteresis

```spice
VIN IN 0 PWL(0 0 10m 5 20m 0)
VREF REF 0 2.5
ECORE RAW 0 IN NTH 1Meg
SOUT OUT 0 RAW 0 SWMOD
RPULL VCC OUT 10k
VCC VCC 0 5
R1 OUT NTH 100k
R2 REF NTH 100k
.model SWMOD SW(Ron=10 Roff=1G Vt=0 Vh=0)
.tran 10u 20m
.end
```

In KiCad 10, verify macromodel supply and input/output pin order explicitly. Confirm `.include`, `.lib`, `.subckt`, `.model`, `.op`, `.dc`, `.ac`, `.tran`, `.step`, `.temp`, and `.meas` lines are exported as actual SPICE directives.