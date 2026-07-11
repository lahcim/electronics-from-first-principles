EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 2 Lesson 2 - Capacitors in Time"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 220200001
P 3200 3800
F 0 "V1" H 3330 3891 50 0000 L CNN
F 1 "PULSE(0 5 0 1u 1u 50m 100m)" H 3330 3800 50 0000 L CNN
	1    3200 3800
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 220200002
P 5200 3000
F 0 "R1" V 4993 3000 50 0000 C CNN
F 1 "10k" V 5084 3000 50 0000 C CNN
	1    5200 3000
	0 1 1 0
$EndComp
$Comp
L Device:C C1
U 1 1 220200003
P 7000 3900
F 0 "C1" H 7115 3946 50 0000 L CNN
F 1 "1u" H 7115 3855 50 0000 L CNN
	1    7000 3900
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR02201
U 1 1 220200004
P 5000 4800
F 0 "#PWR02201" H 5000 4550 50 0001 C CNN
F 1 "0" H 5005 4627 50 0000 C CNN
	1    5000 4800
	1 0 0 -1
$EndComp
Wire Wire Line
	3200 3500 3200 3000
Wire Wire Line
	3200 3000 5050 3000
Wire Wire Line
	5350 3000 7000 3000
Wire Wire Line
	7000 3000 7000 3750
Wire Wire Line
	7000 4050 7000 4600
Wire Wire Line
	7000 4600 3200 4600
Wire Wire Line
	3200 4600 3200 4100
Wire Wire Line
	5000 4600 5000 4800
Text Label 3900 3000 0 50 ~ 0
IN
Text Label 6100 3000 0 50 ~ 0
VCAP
Text Notes 7900 3200 0 60 ~ 0
.tran 50u 120m startup
Text Notes 7900 3450 0 50 ~ 0
Mark as a SPICE directive and verify the generated netlist.
$EndSCHEMATC
