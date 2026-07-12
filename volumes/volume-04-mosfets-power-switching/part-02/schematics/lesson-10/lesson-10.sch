EESchema Schematic File Version 4
LIBS:Transistor_FET
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 10 - Switching Losses"
$EndDescr
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 121000001
P 5900 3200
F 0 "Q1" H 6105 3246 50 0000 L CNN
F 1 "NMOS" H 6105 3155 50 0000 L CNN
	1    5900 3200
	1 0 0 -1
$EndComp
$Comp
L Device:R RLOAD
U 1 1 121000002
P 6000 1900
F 0 "RLOAD" H 6070 1946 50 0000 L CNN
F 1 "6" H 6070 1855 50 0000 L CNN
	1    6000 1900
	1 0 0 -1
$EndComp
Text Notes 7600 2700 0 60 ~ 0
.meas transient switching energy
Text Notes 7600 3050 0 60 ~ 0
.tran 100p 15u startup
$EndSCHEMATC
