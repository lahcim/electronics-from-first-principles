EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 18 - Reading a Datasheet and Selecting a Resistor"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 180000001
P 3200 3700
F 0 "V1" H 3330 3791 50 0000 L CNN
F 1 "5" H 3330 3700 50 0000 L CNN
	1    3200 3700
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 180000002
P 5200 3000
F 0 "R1" V 4993 3000 50 0000 C CNN
F 1 "390" V 5084 3000 50 0000 C CNN
	1    5200 3000
	0 1 1 0
$EndComp
$Comp
L Simulation_SPICE:VSOURCE VLED
U 1 1 180000003
P 7000 3700
F 0 "VLED" H 7130 3791 50 0000 L CNN
F 1 "2" H 7130 3700 50 0000 L CNN
	1    7000 3700
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR0181
U 1 1 180000004
P 5000 4600
F 0 "#PWR0181" H 5000 4350 50 0001 C CNN
F 1 "0" H 5005 4427 50 0000 C CNN
	1    5000 4600
	1 0 0 -1
$EndComp
Wire Wire Line
	3200 3400 3200 3000
Wire Wire Line
	3200 3000 5050 3000
Wire Wire Line
	5350 3000 7000 3000
Wire Wire Line
	7000 3000 7000 3400
Wire Wire Line
	7000 4000 7000 4400
Wire Wire Line
	7000 4400 3200 4400
Wire Wire Line
	3200 4400 3200 4000
Wire Wire Line
	5000 4400 5000 4600
Text Label 4000 3000 0 50 ~ 0
VIN
Text Label 5900 3000 0 50 ~ 0
VDROP
Text Notes 8000 3400 0 60 ~ 0
.param RLED=390
Text Notes 8000 3650 0 60 ~ 0
.step param RLED list 330 360 390 430 470
Text Notes 8000 4000 0 50 ~ 0
Mark as SPICE directives after changing R1 to {RLED}.
$EndSCHEMATC
