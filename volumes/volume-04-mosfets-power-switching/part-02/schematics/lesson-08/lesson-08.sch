EESchema Schematic File Version 4
LIBS:Transistor_FET
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 8 - Gate Resistors"
$EndDescr
$Comp
L Device:R RG
U 1 1 120800001
P 4700 3200
F 0 "RG" V 4493 3200 50 0000 C CNN
F 1 "10" V 4584 3200 50 0000 C CNN
	1    4700 3200
	0 1 1 0
$EndComp
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 120800002
P 6500 3200
F 0 "Q1" H 6705 3246 50 0000 L CNN
F 1 "NMOS" H 6705 3155 50 0000 L CNN
	1    6500 3200
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
.tran 100p 3u startup
$EndSCHEMATC
