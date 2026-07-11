EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 2 - Charge and Current"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
Comment2 "Transient simulation with explicit SPICE directive"
$EndDescr
$Comp
L Simulation_SPICE:ISOURCE I1
U 1 1 10000001
P 4000 3500
F 0 "I1" H 4130 3591 50  0000 L CNN
F 1 "PULSE(0 1m 0 1u 1u 5m 10m)" H 4130 3500 50 0000 L CNN
	1    4000 3500
	1 0 0 -1
$EndComp
$Comp
L Device:C C1
U 1 1 10000002
P 5500 3500
F 0 "C1" H 5615 3546 50 0000 L CNN
F 1 "1u" H 5615 3455 50 0000 L CNN
	1    5500 3500
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR01
U 1 1 10000003
P 4750 4000
F 0 "#PWR01" H 4750 3750 50 0001 C CNN
F 1 "0" H 4755 3827 50 0000 C CNN
	1    4750 4000
	1 0 0 -1
$EndComp
Wire Wire Line
	4000 3200 5500 3200
Wire Wire Line
	5500 3200 5500 3350
Wire Wire Line
	4000 3800 4000 4000
Wire Wire Line
	4000 4000 4750 4000
Wire Wire Line
	4750 4000 5500 4000
Wire Wire Line
	5500 4000 5500 3650
Text Label 5000 3200 0 50 ~ 0
VCAP
Text Notes 6500 3400 0 60 ~ 0
.tran 10u 6m uic
Text Notes 6500 3600 0 50 ~ 0
Set this text as a SPICE directive in KiCad 10.
$EndSCHEMATC
