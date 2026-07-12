EESchema Schematic File Version 4
LIBS:power
LIBS:device
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Volume 3 Lesson 36 - Photodiode Model"
$EndDescr
$Comp
L Device:D_Photo D1
U 1 1 963600001
P 5200 3600
F 0 "D1" V 5154 3680 50 0000 L CNN
F 1 "Photodiode" V 5245 3680 50 0000 L CNN
	1    5200 3600
	0 1 1 0
$EndComp
$Comp
L Device:C CD
U 1 1 963600002
P 6500 3600
F 0 "CD" H 6615 3646 50 0000 L CNN
F 1 "20p" H 6615 3555 50 0000 L CNN
	1    6500 3600
	1 0 0 -1
$EndComp
Text Notes 7800 2800 0 60 ~ 0
.tran 10n 200u startup
$EndSCHEMATC
