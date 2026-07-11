EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 2 Lesson 14 - Debounce and Reset"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VPULSE VSW
U 1 1 341400001
P 3000 3800
F 0 "VSW" H 3130 3891 50 0000 L CNN
F 1 "bounce waveform" H 3130 3800 50 0000 L CNN
	1    3000 3800
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 341400002
P 5000 3000
F 0 "R1" V 4793 3000 50 0000 C CNN
F 1 "100k" V 4884 3000 50 0000 C CNN
	1    5000 3000
	0 1 1 0
$EndComp
$Comp
L Device:C C1
U 1 1 341400003
P 6900 3900
F 0 "C1" H 7015 3946 50 0000 L CNN
F 1 "220n" H 7015 3855 50 0000 L CNN
	1    6900 3900
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR03401
U 1 1 341400004
P 5000 4800
F 0 "#PWR03401" H 5000 4550 50 0001 C CNN
F 1 "0" H 5005 4627 50 0000 C CNN
	1    5000 4800
	1 0 0 -1
$EndComp
Wire Wire Line
	3000 3500 3000 3000
Wire Wire Line
	3000 3000 4850 3000
Wire Wire Line
	5150 3000 6900 3000
Wire Wire Line
	6900 3000 6900 3750
Wire Wire Line
	6900 4050 6900 4600
Wire Wire Line
	6900 4600 3000 4600
Wire Wire Line
	3000 4600 3000 4100
Wire Wire Line
	5000 4600 5000 4800
Text Notes 7900 2700 0 60 ~ 0
.tran 10u 100m startup
Text Notes 7900 3000 0 50 ~ 0
Use behavioral Schmitt thresholds: 2.0 V rising, 1.0 V falling.
$EndSCHEMATC
