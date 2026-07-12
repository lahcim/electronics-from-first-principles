EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 6 - Transformer Rectifier Supply"
$EndDescr
$Comp
L Simulation_SPICE:VSIN V1
U 1 1 660600001
P 2700 3900
F 0 "V1" H 2830 3991 50 0000 L CNN
F 1 "SIN(0 16.97 60)" H 2830 3900 50 0000 L CNN
	1    2700 3900
	1 0 0 -1
$EndComp
$Comp
L Device:R RS
U 1 1 660600002
P 4700 3000
F 0 "RS" V 4493 3000 50 0000 C CNN
F 1 "1.5" V 4584 3000 50 0000 C CNN
	1    4700 3000
	0 1 1 0
$EndComp
$Comp
L Device:C C1
U 1 1 660600003
P 7000 3900
F 0 "C1" H 7115 3946 50 0000 L CNN
F 1 "2200u" H 7115 3855 50 0000 L CNN
	1    7000 3900
	1 0 0 -1
$EndComp
$Comp
L power:0 #PWR06601
U 1 1 660600004
P 5000 4800
F 0 "#PWR06601" H 5000 4550 50 0001 C CNN
F 1 "0" H 5005 4627 50 0000 C CNN
	1    5000 4800
	1 0 0 -1
$EndComp
Wire Wire Line
	2700 3600 2700 3000
Wire Wire Line
	2700 3000 4550 3000
Wire Wire Line
	4850 3000 7000 3000
Wire Wire Line
	7000 3000 7000 3750
Wire Wire Line
	7000 4050 7000 4600
Wire Wire Line
	7000 4600 2700 4600
Wire Wire Line
	2700 4600 2700 4200
Wire Wire Line
	5000 4600 5000 4800
Text Notes 7900 2800 0 60 ~ 0
Complete bridge and load are in reference netlist.
Text Notes 7900 3100 0 60 ~ 0
.tran 20u 500m startup
$EndSCHEMATC
