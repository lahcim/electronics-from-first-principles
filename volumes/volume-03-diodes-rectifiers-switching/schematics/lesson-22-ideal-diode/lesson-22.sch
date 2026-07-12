EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Transistor_FET
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 22 - Ideal Diode MOSFET"
$EndDescr
$Comp
L Transistor_FET:Q_PMOS_GSD Q1
U 1 1 822200001
P 5200 3000
F 0 "Q1" V 5542 3000 50 0000 C CNN
F 1 "PMOS ideal-diode path" V 5451 3000 50 0000 C CNN
	1    5200 3000
	0 -1 -1 0
$EndComp
$Comp
L Device:R RLOAD
U 1 1 822200002
P 7200 3900
F 0 "RLOAD" H 7270 3946 50 0000 L CNN
F 1 "2.4" H 7270 3855 50 0000 L CNN
	1    7200 3900
	1 0 0 -1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.tran 1u 20m startup
Text Notes 7800 3100 0 50 ~ 0
Behavioral controller is in reference netlist.
$EndSCHEMATC
