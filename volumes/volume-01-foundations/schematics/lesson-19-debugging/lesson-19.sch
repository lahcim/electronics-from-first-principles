EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 19 - Debugging Deliberately Broken Circuits"
Comment1 "Correct baseline; create copies before injecting faults"
Comment2 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 190000001
P 3200 3700
F 0 "V1" H 3330 3791 50 0000 L CNN
F 1 "5" H 3330 3700 50 0000 L CNN
	1    3200 3700
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 190000002
P 6000 3200
F 0 "R1" H 6070 3246 50 0000 L CNN
F 1 "1k" H 6070 3155 50 0000 L CNN
	1    6000 3200
	1 0 0 -1
$EndComp
$Comp
L Device:R R2
U 1 1 190000003
P 6000 4200
F 0 "R2" H 6070 4246 50 0000 L CNN
F 1 "1k" H 6070 4155 50 0000 L CNN
	1    6000 4200
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR0191
U 1 1 190000004
P 4800 4900
F 0 "#PWR0191" H 4800 4650 50 0001 C CNN
F 1 "0" H 4805 4727 50 0000 C CNN
	1    4800 4900
	1 0 0 -1
$EndComp
Wire Wire Line
	3200 3400 3200 2800
Wire Wire Line
	3200 2800 6000 2800
Wire Wire Line
	6000 2800 6000 3050
Wire Wire Line
	6000 3350 6000 4050
Wire Wire Line
	6000 4350 6000 4700
Wire Wire Line
	6000 4700 3200 4700
Wire Wire Line
	3200 4700 3200 4000
Wire Wire Line
	4800 4700 4800 4900
Text Label 4100 2800 0 50 ~ 0
VIN
Text Label 6300 3700 0 50 ~ 0
VMID
Text Notes 7400 3150 0 50 ~ 0
Fault exercises: remove node 0; change 1k to 1m; disconnect a wire;
Text Notes 7400 3400 0 50 ~ 0
reverse V1; use ordinary text instead of a SPICE directive; inspect netlist.
$EndSCHEMATC
