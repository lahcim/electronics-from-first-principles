EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 23 - Varactor Resonator"
$EndDescr
$Comp
L Device:L L1
U 1 1 832300001
P 4700 3000
F 0 "L1" V 4890 3000 50 0000 C CNN
F 1 "10u" V 4799 3000 50 0000 C CNN
	1    4700 3000
	0 -1 -1 0
$EndComp
$Comp
L Device:D DVAR
U 1 1 832300002
P 6500 3900
F 0 "DVAR" V 6454 3980 50 0000 L CNN
F 1 "Varactor" V 6545 3980 50 0000 L CNN
	1    6500 3900
	0 1 1 0
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.ac dec 200 100k 20Meg
$EndSCHEMATC
