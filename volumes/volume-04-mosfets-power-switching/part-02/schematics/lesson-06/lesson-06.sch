EESchema Schematic File Version 4
LIBS:Transistor_FET
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 6 - Gate Capacitance"
$EndDescr
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 120600001
P 5400 3200
F 0 "Q1" H 5605 3246 50 0000 L CNN
F 1 "NMOS" H 5605 3155 50 0000 L CNN
	1    5400 3200
	1 0 0 -1
$EndComp
$Comp
L Device:C CGD
U 1 1 120600002
P 6500 2800
F 0 "CGD" H 6615 2846 50 0000 L CNN
F 1 "120p" H 6615 2755 50 0000 L CNN
	1    6500 2800
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
.tran 100p 5u startup
$EndSCHEMATC
