EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 1 - A Circuit Needs a Loop"
Date "2026-07-10"
Rev "1.0"
Comp "Electronics from First Principles"
Comment1 "KiCad 10 compatible legacy schematic; open and save to convert to native .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VDC V1
U 1 1 66800001
P 3500 3500
F 0 "V1" H 3630 3591 50  0000 L CNN
F 1 "5" H 3630 3500 50  0000 L CNN
F 2 "" H 3500 3500 50  0001 C CNN
F 3 "~" H 3500 3500 50  0001 C CNN
	1    3500 3500
	1    0    0    -1
$EndComp
$Comp
L Device:R R1
U 1 1 66800002
P 5000 3500
F 0 "R1" H 5070 3546 50  0000 L CNN
F 1 "1k" H 5070 3455 50  0000 L CNN
	1    5000 3500
	1    0    0    -1
$EndComp
$Comp
L Simulation_SPICE:0 #GND01
U 1 1 66800003
P 4250 3900
F 0 "#GND01" H 4250 3800 50  0001 C CNN
F 1 "0" H 4250 3989 50  0000 C CNN
	1    4250 3900
	1    0    0    -1
$EndComp
Wire Wire Line
	3500 3350 3500 3150
Wire Wire Line
	3500 3150 5000 3150
Wire Wire Line
	5000 3150 5000 3350
Wire Wire Line
	3500 3650 3500 3850
Wire Wire Line
	3500 3850 4250 3850
Wire Wire Line
	4250 3850 5000 3850
Wire Wire Line
	5000 3850 5000 3650
Wire Wire Line
	4250 3850 4250 3900
Connection ~ 4250 3850
Text Label 4000 3150 0    50   ~ 0
VIN
Text Notes 3350 2850 0    50   ~ 0
Expected: V(VIN)=5 V, I(R1)=5 mA, P(R1)=25 mW
$EndSCHEMATC
