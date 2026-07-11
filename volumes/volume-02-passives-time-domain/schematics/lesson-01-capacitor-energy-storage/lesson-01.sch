EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 2 Lesson 1 - What a Capacitor Physically Stores"
Comment1 "Open in KiCad 10 and save as lesson-01.kicad_sch"
Comment2 "Transient directive must be marked as SPICE content"
$EndDescr
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 210100001
P 3200 3800
F 0 "V1" H 3330 3891 50 0000 L CNN
F 1 "PULSE(0 5 0 1u 1u 100m 200m)" H 3330 3800 50 0000 L CNN
	1    3200 3800
	1 0 0 -1
$EndComp
$Comp
L Device:R R1
U 1 1 210100002
P 5200 3000
F 0 "R1" V 4993 3000 50 0000 C CNN
F 1 "1k" V 5084 3000 50 0000 C CNN
	1    5200 3000
	0 1 1 0
$EndComp
$Comp
L Device:C C1
U 1 1 210100003
P 7000 3900
F 0 "C1" H 7115 3946 50 0000 L CNN
F 1 "1u" H 7115 3855 50 0000 L CNN
	1    7000 3900
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR02101
U 1 1 210100004
P 5000 4800
F 0 "#PWR02101" H 5000 4550 50 0001 C CNN
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
VIN
Text Label 6100 3000 0 50 ~ 0
VCAP
Text Notes 7800 3000 0 60 ~ 0
.tran 10u 8m startup
Text Notes 7800 3300 0 50 ~ 0
In KiCad 10, mark the line above as a SPICE directive,
Text Notes 7800 3500 0 50 ~ 0
not ordinary graphical text. Verify it in the generated netlist.
Text Notes 7800 3900 0 50 ~ 0
Expected: V(VCAP)=3.1606 V at approximately 1 ms.
Text Notes 7800 4100 0 50 ~ 0
Expected initial current magnitude: approximately 5 mA.
$EndSCHEMATC
