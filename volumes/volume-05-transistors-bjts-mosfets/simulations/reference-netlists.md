# Volume 5 Reference ngspice Netlists

## BJT low-side switch

```spice
VCC VCC 0 12
VDRIVE IN 0 PULSE(0 3.3 0 10n 10n 5m 10m)
RB IN B 560
Q1 C B 0 QNPN
RLOAD VCC C 120
.model QNPN NPN(BF=100 VAF=100 IS=1e-14 CJE=20p CJC=10p TF=300p)
.tran 10n 20m
.end
```

## Common-emitter amplifier

```spice
VCC VCC 0 12
VIN IN 0 AC 1 SIN(0 10m 1k)
CIN IN B 10u
R1 VCC B 100k
R2 B 0 18k
RC VCC C 4.7k
RE E 0 1k
CE E 0 100u
Q1 C B E QNPN
COUT C OUT 10u
RL OUT 0 10k
.model QNPN NPN(BF=150 VAF=100 IS=1e-14)
.op
.ac dec 100 10 1Meg
.tran 2u 10m
.end
```

## BJT current mirror

```spice
VCC VCC 0 10
RSET VCC B 9.1k
Q1 B B 0 QNPN
Q2 OUT B 0 QNPN
VTEST VCC OUT 5
.model QNPN NPN(BF=100 VAF=100 IS=1e-14)
.op
.end
```

## NMOS low-side switch

```spice
VCC VCC 0 24
VDRV G 0 PULSE(0 5 0 20n 20n 20u 50u)
RG G GINT 22
M1 D GINT 0 0 NMOS
RLOAD VCC D 4.8
.model NMOS NMOS(VTO=2 KP=20 RS=5m RD=5m CGSO=1n CGDO=300p RDS=100Meg)
.tran 2n 100u
.end
```

## MOSFET transfer and output curves

```spice
VDS D 0 5
VGS G 0 0
M1 D G 0 0 NMOS
.model NMOS NMOS(VTO=2 KP=2 LAMBDA=0.02)
.dc VGS 0 6 0.02
.end
```

## Common-source amplifier

```spice
VDD VDD 0 12
VIN IN 0 AC 1 SIN(0 10m 1k)
CIN IN G 1u
R1 VDD G 1Meg
R2 G 0 330k
RD VDD D 3.3k
RS S 0 1k
CS S 0 100u
M1 D G S 0 NMOS
COUT D OUT 10u
RL OUT 0 10k
.model NMOS NMOS(VTO=2 KP=20m LAMBDA=0.02)
.op
.ac dec 100 10 1Meg
.tran 2u 10m
.end
```

## CMOS inverter

```spice
VDD VDD 0 5
VIN IN 0 0
MP OUT IN VDD VDD PMOS
MN OUT IN 0 0 NMOS
CL OUT 0 20p
.model NMOS NMOS(VTO=1 KP=200u)
.model PMOS PMOS(VTO=-1 KP=100u)
.dc VIN 0 5 0.01
.end
```

## Inductive MOSFET driver

```spice
VCC VCC 0 24
VDRV G 0 PULSE(0 10 0 50n 50n 25u 50u)
RG G GINT 10
M1 SW GINT 0 0 NMOS
RCOIL VCC NCOIL 4.8
LCOIL NCOIL SW 2m
D1 SW VCC DFAST
.model NMOS NMOS(VTO=3 KP=50 RS=5m RD=5m CGSO=2n CGDO=500p)
.model DFAST D(Is=1n Rs=0.05 Tt=20n Bv=100)
.tran 5n 200u startup
.end
```

In KiCad 10, verify BJT and MOSFET model pin order explicitly. Confirm `.model`, `.op`, `.dc`, `.ac`, `.tran`, `.step`, `.temp`, and measurement lines are exported as actual SPICE directives rather than ordinary text.