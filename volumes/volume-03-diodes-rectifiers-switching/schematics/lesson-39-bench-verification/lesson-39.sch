EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 39 - Bench Verification"
$EndDescr
$Comp
L Simulation_SPICE:VSIN V1
U 1 1 993900001
P 2600 3900
F 0 "V1" H 2730 3991 50 0000 L CNN
F 1 "SIN(0 16.97 60)" H 2730 3900 50 0000 L CNN
	1    2600 3900
	1 0 0 -1
$EndComp
$Comp
L Device:C C1
U 1 1 993900002
P 6500 3900
F 0 "C1" H 6615 3946 50 0000 L CNN
F 1 "2200u" H 6615 3855 50 0000 L CNN
	1    6500 3900
	1 0 0 -1
$EndComp
Text Notes 7800 2600 0 60 ~ 0
Complete bridge and measurement directives are in reference netlist.
Text Notes 7800 3000 0 60 ~ 0
.tran 20u 500m startup
$EndSCHEMATC
