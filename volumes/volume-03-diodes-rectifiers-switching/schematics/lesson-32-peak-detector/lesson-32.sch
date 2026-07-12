EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Simulation_SPICE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 32 - Peak Detector"
$EndDescr
$Comp
L Device:D D1
U 1 1 923200001
P 4700 3000
F 0 "D1" H 4700 2783 50 0000 C CNN
F 1 "Detector" H 4700 2874 50 0000 C CNN
	1    4700 3000
	-1 0 0 1
$EndComp
$Comp
L Device:C C1
U 1 1 923200002
P 6500 3900
F 0 "C1" H 6615 3946 50 0000 L CNN
F 1 "220n" H 6615 3855 50 0000 L CNN
	1    6500 3900
	1 0 0 -1
$EndComp
Text Notes 8000 2800 0 60 ~ 0
.tran 1u 100m startup
$EndSCHEMATC
