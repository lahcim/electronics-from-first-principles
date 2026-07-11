EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 17 - Temperature and Resistor Ratings"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 170000001
P 3600 3700
F 0 "V1" H 3730 3791 50 0000 L CNN
F 1 "24" H 3730 3700 50 0000 L CNN
	1    3600 3700
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 170000002
P 6500 3700
F 0 "R1" H 6570 3746 50 0000 L CNN
F 1 "2.2k" H 6570 3655 50 0000 L CNN
	1    6500 3700
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR0171
U 1 1 170000003
P 5000 4600
F 0 "#PWR0171" H 5000 4350 50 0001 C CNN
F 1 "0" H 5005 4427 50 0000 C CNN
	1    5000 4600
	1 0 0 -1
$EndComp
Wire Wire Line
	3600 3400 3600 3000
Wire Wire Line
	3600 3000 6500 3000
Wire Wire Line
	6500 3000 6500 3550
Wire Wire Line
	6500 3850 6500 4400
Wire Wire Line
	6500 4400 3600 4400
Wire Wire Line
	3600 4400 3600 4000
Wire Wire Line
	5000 4400 5000 4600
Text Label 4700 3000 0 50 ~ 0
VIN
Text Notes 7600 3400 0 60 ~ 0
.temp -40 25 85 125
Text Notes 7600 3700 0 50 ~ 0
Mark as a SPICE directive; ideal R may need a TCR model.
$EndSCHEMATC
