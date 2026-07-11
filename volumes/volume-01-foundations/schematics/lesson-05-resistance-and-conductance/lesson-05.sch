EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 5 - Resistance and Conductance"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VDC V1
U 1 1 50000001
P 4000 3600
F 0 "V1" H 4130 3691 50 0000 L CNN
F 1 "0" H 4130 3600 50 0000 L CNN
	1    4000 3600
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 50000002
P 5500 3600
F 0 "R1" H 5570 3646 50 0000 L CNN
F 1 "1k" H 5570 3555 50 0000 L CNN
	1    5500 3600
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR01
U 1 1 50000003
P 4750 4100
F 0 "#PWR01" H 4750 3850 50 0001 C CNN
F 1 "0" H 4755 3927 50 0000 C CNN
	1    4750 4100
	1 0 0 -1
$EndComp
Wire Wire Line
	4000 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3450
Wire Wire Line
	4000 3900 4000 4100
Wire Wire Line
	4000 4100 5500 4100
Wire Wire Line
	5500 4100 5500 3750
Connection ~ 4750 4100
Wire Wire Line
	4750 4100 4750 4100
Text Label 5000 3300 0 50 ~ 0
VIN
$EndSCHEMATC
