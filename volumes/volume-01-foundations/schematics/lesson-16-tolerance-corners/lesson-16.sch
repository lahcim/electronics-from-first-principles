EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 16 - Tolerance and Worst Case"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 160000001
P 3200 3700
F 0 "V1" H 3330 3791 50 0000 L CNN
F 1 "5" H 3330 3700 50 0000 L CNN
	1    3200 3700
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 160000002
P 5800 3200
F 0 "R1" H 5870 3246 50 0000 L CNN
F 1 "{R1V}" H 5870 3155 50 0000 L CNN
	1    5800 3200
	1 0 0 -1
$EndComp
$Comp
L Device:R R2
U 1 1 160000003
P 5800 4200
F 0 "R2" H 5870 4246 50 0000 L CNN
F 1 "{R2V}" H 5870 4155 50 0000 L CNN
	1    5800 4200
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR0161
U 1 1 160000004
P 4700 4900
F 0 "#PWR0161" H 4700 4650 50 0001 C CNN
F 1 "0" H 4705 4727 50 0000 C CNN
	1    4700 4900
	1 0 0 -1
$EndComp
Wire Wire Line
	3200 3400 3200 2800
Wire Wire Line
	3200 2800 5800 2800
Wire Wire Line
	5800 2800 5800 3050
Wire Wire Line
	5800 3350 5800 4050
Wire Wire Line
	5800 4350 5800 4700
Wire Wire Line
	5800 4700 3200 4700
Wire Wire Line
	3200 4700 3200 4000
Wire Wire Line
	4700 4700 4700 4900
Text Label 4000 2800 0 50 ~ 0
VIN
Text Label 6100 3700 0 50 ~ 0
VOUT
Text Notes 7100 3200 0 60 ~ 0
.param R1V=10k R2V=10k
Text Notes 7100 3450 0 60 ~ 0
.step param R1V list 9.9k 10.1k
Text Notes 7100 3700 0 60 ~ 0
.step param R2V list 9.9k 10.1k
Text Notes 7100 4050 0 50 ~ 0
Mark these lines as SPICE directives in KiCad 10.
$EndSCHEMATC
