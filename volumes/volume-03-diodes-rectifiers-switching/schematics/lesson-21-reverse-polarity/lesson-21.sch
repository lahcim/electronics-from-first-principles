EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 21 - Reverse Polarity Protection"
$EndDescr
$Comp
L Device:D_Schottky D1
U 1 1 812100001
P 4700 3000
F 0 "D1" H 4700 2783 50 0000 C CNN
F 1 "Series protection" H 4700 2874 50 0000 C CNN
	1    4700 3000
	-1 0 0 1
$EndComp
$Comp
L Device:R RLOAD
U 1 1 812100002
P 6800 3900
F 0 "RLOAD" H 6870 3946 50 0000 L CNN
F 1 "4" H 6870 3855 50 0000 L CNN
	1    6800 3900
	1 0 0 -1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.dc V1 -15 15 50m
$EndSCHEMATC
