EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 20 - Diode OR-ing"
$EndDescr
$Comp
L Device:D_Schottky DA
U 1 1 802000001
P 4700 2500
F 0 "DA" H 4700 2283 50 0000 C CNN
F 1 "Schottky" H 4700 2374 50 0000 C CNN
	1    4700 2500
	-1 0 0 1
$EndComp
$Comp
L Device:D_Schottky DB
U 1 1 802000002
P 4700 3600
F 0 "DB" H 4700 3383 50 0000 C CNN
F 1 "Schottky" H 4700 3474 50 0000 C CNN
	1    4700 3600
	-1 0 0 1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.dc VB 4 6 10m
$EndSCHEMATC
