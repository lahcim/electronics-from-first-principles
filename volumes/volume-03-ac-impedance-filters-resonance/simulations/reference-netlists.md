# Volume 3 Reference ngspice Netlists

## Sine and RMS

```spice
V1 IN 0 SIN(0 10 1k)
R1 IN 0 1k
.tran 1u 20m
.meas tran VRMS RMS V(IN) FROM=10m TO=20m
.meas tran PAVG AVG V(IN)*I(R1) FROM=10m TO=20m
.end
```

## RC low-pass AC sweep

```spice
V1 IN 0 AC 1
R1 IN OUT 1k
C1 OUT 0 100n
.ac dec 100 10 1Meg
.end
```

## RC high-pass AC sweep

```spice
V1 IN 0 AC 1
C1 IN OUT 100n
R1 OUT 0 1k
.ac dec 100 10 1Meg
.end
```

## Series RLC resonance

```spice
V1 IN 0 AC 1
R1 IN N1 10
L1 N1 N2 10m
C1 N2 0 2.533u
.ac dec 200 10 100k
.end
```

## Parallel RLC resonance

```spice
V1 IN 0 AC 1
RS IN OUT 1
RP OUT 0 10k
L1 OUT 0 10m
C1 OUT 0 2.533u
.ac dec 200 10 100k
.end
```

## RLC natural response

```spice
C1 NODE 0 1u IC=5
L1 NODE N2 10m IC=0
R1 N2 0 10
.tran 1u 20m uic
.end
```

## Cascaded passive RC stages

```spice
V1 IN 0 AC 1
R1 IN N1 1k
C1 N1 0 100n
R2 N1 OUT 1k
C2 OUT 0 100n
.ac dec 100 10 1Meg
.end
```

## Crossover starting point

```spice
V1 IN 0 AC 1
RS IN SRC 0.1
LLOW SRC WOOFER 509u
RW WOOFER 0 8
CHIGH SRC TWEETER 7.96u
RT TWEETER 0 8
.ac dec 200 20 20k
.end
```

In KiCad 10, assign `AC 1` to the source for AC analysis and verify `.ac`, `.meas`, `.step`, and initialization lines are exported as actual SPICE directives.