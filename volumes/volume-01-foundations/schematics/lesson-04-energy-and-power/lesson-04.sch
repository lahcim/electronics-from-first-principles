EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Lesson 4 - Energy and Power"
Comment1 "Open in KiCad 10 and save as .kicad_sch"
$EndDescr
$Comp
L Simulation_SPICE:VSOURCE V1
U 1 1 40000001
P 4000 3500
F 0 "V1" H 4130 3591 50 0000 L CNN
F 1 "5" H 4130 3500 50 0000 L CNN
	1    4000 3500
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 40000002
P 6000 3500
F 0 "R1" H 6070 3546 50 0000 L CNN
F 1 "1k" H 6070 3455 50 0000 L CNN
	1    6000 3500
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR01
U 1 1 40000003
P 5000 4200
F 0 "#PWR01" H 5000 3950 50 0001 C CNN
F 1 "0" H 5005 4027 50 0000 C CNN
	1    5000 4200
	1 0 0 -1
$EndComp
Wire Wire Line
	4000 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3350
Wire Wire Line
	4000 3800 4000 4200
Wire Wire Line
	4000 4200 6000 4200
Wire Wire Line
	6000 4200 6000 3650
Wire Wire Line
	5000 4200 5000 4200
Text Label 5000 3200 0 50 ~ 0
VIN
Text Notes 7000 3400 0 60 ~ 0
.tran 10m 10s
Text Notes 7000 3600 0 60 ~ 0
.meas tran E_R INTEG V(VIN)*I(R1) FROM=0 TO=10s
Text Notes 7000 3900 0 50 ~ 0
Set both lines as SPICE directives for the energy experiment.
$EndSCHEMATC
