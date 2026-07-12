EESchema Schematic File Version 4
LIBS:Transistor_FET
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 9 - Turn On and Turn Off"
$EndDescr
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 120900001
P 5900 3200
F 0 "Q1" H 6105 3246 50 0000 L CNN
F 1 "NMOS" H 6105 3155 50 0000 L CNN
	1    5900 3200
	1 0 0 -1
$EndComp
$Comp
L Device:L LS
U 1 1 120900002
P 6000 4300
F 0 "LS" H 6053 4346 50 0000 L CNN
F 1 "5n" H 6053 4255 50 0000 L CNN
	1    6000 4300
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
.tran 100p 3u startup
$EndSCHEMATC
