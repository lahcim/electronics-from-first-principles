# Volume 7 Reference ngspice Netlists

## Schmitt-trigger relaxation oscillator

```spice
VCC VCC 0 5
ECORE OUT 0 NPLUS NMINUS 1Meg
R1 OUT NPLUS 100k
R2 NPLUS 0 100k
RCH OUT NMINUS 100k
C1 NMINUS 0 10n IC=10m
.tran 1u 20m uic
.end
```

## RC phase-shift oscillator skeleton

```spice
VCC VCC 0 12
Q1 C B E QNPN
RC VCC C 4.7k
RE E 0 1k
RBIAS VCC B 100k
C1 C N1 10n
R1 N1 0 10k
C2 N1 N2 10n
R2 N2 0 10k
C3 N2 B 10n
R3 B 0 10k
.model QNPN NPN(BF=150 VAF=100)
.tran 2u 100m startup
.end
```

## Wien-bridge oscillator skeleton

```spice
VCC VP 0 12
VEE VN 0 -12
R1 OUT NPLUS 15.9k
C1 NPLUS 0 10n
C2 OUT N2 10n
R2 N2 NPLUS 15.9k
RF OUT NMINUS 20k
RG NMINUS 0 10k
EOP OUT 0 NPLUS NMINUS 1Meg
.tran 2u 100m startup
.end
```

## Astable transistor multivibrator

```spice
VCC VCC 0 5
RC1 VCC C1 1k
RC2 VCC C2 1k
RB1 VCC B1 100k
RB2 VCC B2 100k
Q1 C1 B1 0 QNPN
Q2 C2 B2 0 QNPN
C12 C1 B2 10u
C21 C2 B1 10u
.model QNPN NPN(BF=100)
.tran 100u 5s startup
.end
```

## Colpitts oscillator skeleton

```spice
VCC VCC 0 12
Q1 C B E QNPN
RC VCC C 1k
R1 VCC B 47k
R2 B 0 10k
RE E 0 470
L1 C 0 100u
C1 C E 1n
C2 E 0 1n
.model QNPN NPN(BF=150 VAF=100)
.tran 10n 5m startup
.end
```

## Crystal impedance model

```spice
V1 IN 0 AC 1
RTEST IN X1 1
RM X1 X2 20
LM X2 X3 10m
CM X3 OUT 10f
C0 X1 OUT 3p
RLOAD OUT 0 1Meg
.ac dec 1000 1Meg 100Meg
.end
```

## Pierce oscillator skeleton

```spice
VDD VDD 0 3.3
RBIAS OUT IN 1Meg
EINV OUT 0 IN 0 -20
ROUT OUT N1 100
RM N1 N2 40
LM N2 N3 8m
CM N3 IN 12f
C0 N1 IN 3p
C1 N1 0 18p
C2 IN 0 18p
.tran 1n 10m startup
.ic V(IN)=1m
.end
```

## Simple PLL behavioral model

```spice
VREF REF 0 PULSE(0 1 0 1n 1n 50n 100n)
BPHASE ERR 0 V=sin(2*pi*(V(REF)-V(DIV)))
RLF ERR CTRL 10k
CLF CTRL 0 10n
BVCO CLK 0 V=sin(2*pi*(10Meg+1Meg*V(CTRL))*time)
* Divider represented behaviorally in later lesson implementation.
.tran 1n 100u startup
.end
```

In KiCad 10, mark `.model`, `.subckt`, `.tran`, `.ac`, `.ic`, `.step`, and behavioral-source expressions as actual SPICE content. Verify BJT, logic, crystal, and subcircuit pin mapping in the generated netlist.