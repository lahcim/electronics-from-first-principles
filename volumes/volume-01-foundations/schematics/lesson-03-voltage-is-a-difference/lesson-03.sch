EESchema Schematic File Version 4
LIBS:power
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 3 - Voltage Is a Difference"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 30000001
P 5000 2800
F 0 "V1" H 5130 2891 50 0000 L CNN
F 1 "5" H 5130 2800 50 0000 L CNN
	1    5000 2800
	1 0 0 -1
$EndComp
$Comp
L Simulation_SPICE:VSOURCE V2
U 1 1 30000002
P 5000 4100
F 0 "V2" H 5130 4191 50 0000 L CNN
F 1 "3" H 5130 4100 50 0000 L CNN
	1    5000 4100
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR01
U 1 1 30000003
P 5000 4700
F 0 "#PWR01" H 5000 4450 50 0001 C CNN
F 1 "0" H 5005 4527 50 0000 C CNN
	1    5000 4700
	1 0 0 -1
$EndComp
Wire Wire Line
	5000 3100 5000 3800
Wire Wire Line
	5000 4400 5000 4700
Wire Wire Line
	5000 2500 5000 2200
Text Label 5000 2200 0 50 ~ 0
TOP
Text Label 5000 3450 0 50 ~ 0
MID
Text Notes 6500 3000 0 60 ~ 0
No schematic SPICE directive required; use DC operating point.
$EndSCHEMATC
