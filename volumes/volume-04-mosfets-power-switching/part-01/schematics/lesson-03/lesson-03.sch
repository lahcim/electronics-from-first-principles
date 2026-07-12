EESchema Schematic File Version 4
LIBS:Transistor_FET
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 3 - N Channel vs P Channel"
$EndDescr
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 110300001
P 4300 3200
F 0 "Q1" H 4505 3246 50 0000 L CNN
F 1 "NMOS" H 4505 3155 50 0000 L CNN
	1    4300 3200
	1 0 0 -1
$EndComp
$Comp
L Transistor_FET:Q_PMOS_GSD Q2
U 1 1 110300002
P 6500 3200
F 0 "Q2" H 6705 3246 50 0000 L CNN
F 1 "PMOS" H 6705 3155 50 0000 L CNN
	1    6500 3200
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
Compare high-side paths
$EndSCHEMATC
