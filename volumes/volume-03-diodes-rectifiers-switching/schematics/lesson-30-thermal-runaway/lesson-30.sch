EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 30 - Thermal Runaway"
$EndDescr
$Comp
L Device:R RLEAK
U 1 1 903000001
P 5200 3600
F 0 "RLEAK" H 5270 3646 50 0000 L CNN
F 1 "temperature-dependent" H 5270 3555 50 0000 L CNN
	1    5200 3600
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
.tran 10m 200s startup
Text Notes 7600 3100 0 50 ~ 0
Reference netlist includes thermal RC approximation.
$EndSCHEMATC
