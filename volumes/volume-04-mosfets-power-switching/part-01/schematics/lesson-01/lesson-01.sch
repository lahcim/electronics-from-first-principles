EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Transistor_FET
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 4 Lesson 1 - MOSFET First Principles"
$EndDescr
$Comp
L Transistor_FET:Q_NMOS_GSD Q1
U 1 1 110100001
P 5600 3200
F 0 "Q1" H 5805 3246 50 0000 L CNN
F 1 "NMOS" H 5805 3155 50 0000 L CNN
	1    5600 3200
	1 0 0 -1
$EndComp
Text Notes 7600 2800 0 60 ~ 0
.dc VGS 0 10 10m
$EndSCHEMATC
