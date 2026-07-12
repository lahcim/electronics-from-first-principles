EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Amplifier_Operational
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 37 - Photodiode TIA"
$EndDescr
$Comp
L Device:D_Photo D1
U 1 1 973700001
P 3600 3600
F 0 "D1" V 3554 3680 50 0000 L CNN
F 1 "Photodiode" V 3645 3680 50 0000 L CNN
	1    3600 3600
	0 1 1 0
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 973700002
P 6000 3000
F 0 "U1" H 6000 3367 50 0000 C CNN
F 1 "TIA op-amp" H 6000 3276 50 0000 C CNN
	1    6000 3000
	1 0 0 -1
$EndComp
$Comp
L Device:R RF
U 1 1 973700003
P 6000 4300
F 0 "RF" V 5793 4300 50 0000 C CNN
F 1 "68k" V 5884 4300 50 0000 C CNN
	1    6000 4300
	0 1 1 0
$EndComp
$Comp
L Device:C CF
U 1 1 973700004
P 6000 4700
F 0 "CF" V 5748 4700 50 0000 C CNN
F 1 "10p" V 5839 4700 50 0000 C CNN
	1    6000 4700
	0 1 1 0
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.tran 10n 200u startup
$EndSCHEMATC
