EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 40 - Final Capstone"
$EndDescr
$Comp
L Simulation_SPICE:VSIN V1
U 1 1 100400001
P 2400 3900
F 0 "V1" H 2530 3991 50 0000 L CNN
F 1 "SIN(0 19.8 50)" H 2530 3900 50 0000 L CNN
	1    2400 3900
	1 0 0 -1
$EndComp
$Comp
L Device:C CRES
U 1 1 100400002
P 5600 3900
F 0 "CRES" H 5715 3946 50 0000 L CNN
F 1 "3300u" H 5715 3855 50 0000 L CNN
	1    5600 3900
	1 0 0 -1
$EndComp
$Comp
L Device:D_TVS DTVS
U 1 1 100400003
P 7000 3900
F 0 "DTVS" V 6954 3980 50 0000 L CNN
F 1 "22V TVS" V 7045 3980 50 0000 L CNN
	1    7000 3900
	0 1 1 0
$EndComp
$Comp
L Device:D_Photo DPHOTO
U 1 1 100400004
P 8500 3900
F 0 "DPHOTO" V 8454 3980 50 0000 L CNN
F 1 "Photodiode" V 8545 3980 50 0000 L CNN
	1    8500 3900
	0 1 1 0
$EndComp
Text Notes 7600 2500 0 60 ~ 0
Reference netlist implements rectifier section.
Text Notes 7600 2850 0 60 ~ 0
.tran 20u 500m startup
$EndSCHEMATC
