EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 24 - Stored Charge"
$EndDescr
$Comp
L Simulation_SPICE:VPULSE V1
U 1 1 842400001
P 2800 3900
F 0 "V1" H 2930 3991 50 0000 L CNN
F 1 "PULSE(1 -5 0 1n 1n 2u 4u)" H 2930 3900 50 0000 L CNN
	1    2800 3900
	1 0 0 -1
$EndComp
$Comp
L Device:D D1
U 1 1 842400002
P 5800 3000
F 0 "D1" H 5800 2783 50 0000 C CNN
F 1 "Tt=200n" H 5800 2874 50 0000 C CNN
	1    5800 3000
	-1 0 0 1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.tran 1n 8u startup
$EndSCHEMATC
