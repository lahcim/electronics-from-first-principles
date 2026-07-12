EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 27 - Diode Technologies"
$EndDescr
$Comp
L Device:D D1
U 1 1 872700001
P 4500 3000
F 0 "D1" H 4500 2783 50 0000 C CNN
F 1 "Schottky" H 4500 2874 50 0000 C CNN
	1    4500 3000
	-1 0 0 1
$EndComp
$Comp
L Device:D D2
U 1 1 872700002
P 6500 3000
F 0 "D2" H 6500 2783 50 0000 C CNN
F 1 "Fast/SiC" H 6500 2874 50 0000 C CNN
	1    6500 3000
	-1 0 0 1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.tran 10n 20u startup
$EndSCHEMATC
