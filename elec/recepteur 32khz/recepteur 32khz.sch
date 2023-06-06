EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date "1 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1800 1550 750  400 
U 551726D6
F0 "receiver_32_1-1" 50
F1 "receiver_32_1.sch" 50
F2 "6V" I L 1800 1700 60 
F3 "GND" I L 1800 1900 60 
F4 "5V" I L 1800 1800 60 
F5 "12V" I L 1800 1600 60 
F6 "Trigger" I R 2550 1750 60 
$EndSheet
$Sheet
S 1800 2250 750  400 
U 55172BC0
F0 "receiver_32_1-2" 50
F1 "receiver_32_2.sch" 50
F2 "6V" I L 1800 2400 60 
F3 "GND" I L 1800 2600 60 
F4 "5V" I L 1800 2500 60 
F5 "12V" I L 1800 2300 60 
F6 "Trigger" I R 2550 2450 60 
$EndSheet
Wire Wire Line
	1300 1300 1300 1600
Wire Wire Line
	1300 1600 1800 1600
Wire Wire Line
	1350 1350 1350 1700
Wire Wire Line
	1350 1700 1800 1700
Wire Wire Line
	1400 1400 1400 1800
Wire Wire Line
	1400 1800 1800 1800
Wire Wire Line
	1450 1900 1800 1900
Wire Wire Line
	1300 2300 1800 2300
Wire Wire Line
	1350 2400 1800 2400
Wire Wire Line
	1400 2500 1800 2500
Wire Wire Line
	1450 2600 1800 2600
$Comp
L recepteur-32khz-rescue:CONN_6 P4
U 1 1 55184019
P 2100 950
F 0 "P4" V 2050 950 60  0000 C CNN
F 1 "CONN_6" V 2150 950 60  0000 C CNN
F 2 "" H 2100 950 60  0000 C CNN
F 3 "" H 2100 950 60  0000 C CNN
	1    2100 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1300 1300 1300
Connection ~ 1300 1600
Wire Wire Line
	1950 1300 1950 1350
Wire Wire Line
	1950 1350 1350 1350
Connection ~ 1350 1700
Wire Wire Line
	2050 1300 2050 1400
Wire Wire Line
	2050 1400 1400 1400
Connection ~ 1400 1800
Wire Wire Line
	2150 1300 2150 1450
Wire Wire Line
	2150 1450 1450 1450
Connection ~ 1450 1900
Wire Wire Line
	1450 1450 1450 1900
Wire Wire Line
	2250 1300 2250 1450
Wire Wire Line
	2250 1450 2600 1450
Wire Wire Line
	2600 1450 2600 1750
Wire Wire Line
	2600 1750 2550 1750
Wire Wire Line
	2350 1300 2350 1400
Wire Wire Line
	2350 1400 2650 1400
Wire Wire Line
	2650 1400 2650 2450
Wire Wire Line
	2650 2450 2550 2450
$Sheet
S 4300 1650 750  400 
U 55195A3B
F0 "receiver_32_2-1" 50
F1 "receiver_32_2-1.sch" 50
F2 "6V" I L 4300 1800 60 
F3 "GND" I L 4300 2000 60 
F4 "5V" I L 4300 1900 60 
F5 "12V" I L 4300 1700 60 
F6 "Trigger" I R 5050 1850 60 
$EndSheet
$Sheet
S 4300 2350 750  400 
U 5519AC24
F0 "receiver_32_2-2" 50
F1 "receiver_32_2-2.sch" 50
F2 "6V" I L 4300 2500 60 
F3 "GND" I L 4300 2700 60 
F4 "5V" I L 4300 2600 60 
F5 "12V" I L 4300 2400 60 
F6 "Trigger" I R 5050 2550 60 
$EndSheet
Wire Wire Line
	3900 2700 4300 2700
Wire Wire Line
	3900 1450 3900 2000
Wire Wire Line
	3900 2000 4300 2000
Wire Wire Line
	4300 1900 3850 1900
Wire Wire Line
	3850 1400 3850 1900
Wire Wire Line
	3850 2600 4300 2600
Wire Wire Line
	3800 2500 4300 2500
Wire Wire Line
	3800 1350 3800 1800
Wire Wire Line
	3800 1800 4300 1800
Wire Wire Line
	4300 1700 3750 1700
Wire Wire Line
	3750 1300 3750 1700
Wire Wire Line
	3750 2400 4300 2400
$Comp
L recepteur-32khz-rescue:CONN_6 P5
U 1 1 5519B5F6
P 4600 950
F 0 "P5" V 4550 950 60  0000 C CNN
F 1 "CONN_6" V 4650 950 60  0000 C CNN
F 2 "" H 4600 950 60  0000 C CNN
F 3 "" H 4600 950 60  0000 C CNN
	1    4600 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1850 5100 1850
Wire Wire Line
	5100 1850 5100 1550
Wire Wire Line
	5100 1550 4750 1550
Wire Wire Line
	4750 1550 4750 1300
Wire Wire Line
	4850 1300 4850 1500
Wire Wire Line
	4850 1500 5150 1500
Wire Wire Line
	5150 1500 5150 2550
Wire Wire Line
	5150 2550 5050 2550
Wire Wire Line
	4350 1300 3750 1300
Connection ~ 3750 1700
Wire Wire Line
	4450 1300 4450 1350
Wire Wire Line
	4450 1350 3800 1350
Connection ~ 3800 1800
Wire Wire Line
	4550 1300 4550 1400
Wire Wire Line
	4550 1400 3850 1400
Connection ~ 3850 1900
Wire Wire Line
	4650 1300 4650 1450
Wire Wire Line
	4650 1450 3900 1450
Connection ~ 3900 2000
$Sheet
S 6700 1500 750  400 
U 551AFB56
F0 "receiver_32_3-1" 50
F1 "receiver_32_3-1.sch" 50
F2 "6V" I L 6700 1650 60 
F3 "GND" I L 6700 1850 60 
F4 "5V" I L 6700 1750 60 
F5 "12V" I L 6700 1550 60 
F6 "Trigger" I R 7450 1700 60 
$EndSheet
$Comp
L recepteur-32khz-rescue:CONN_7 P11
U 1 1 551B3A29
P 7100 750
F 0 "P11" V 7070 750 60  0000 C CNN
F 1 "CONN_7" V 7170 750 60  0000 C CNN
F 2 "" H 7100 750 60  0000 C CNN
F 3 "" H 7100 750 60  0000 C CNN
	1    7100 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 1100 6150 1100
Wire Wire Line
	6150 1100 6150 1550
Wire Wire Line
	6150 1550 6700 1550
Wire Wire Line
	6900 1100 6900 1150
Wire Wire Line
	6900 1150 6200 1150
Wire Wire Line
	6200 1150 6200 1650
Wire Wire Line
	6200 1650 6700 1650
Wire Wire Line
	7000 1100 7000 1200
Wire Wire Line
	7000 1200 6250 1200
Wire Wire Line
	6250 1200 6250 1750
Wire Wire Line
	6250 1750 6700 1750
Wire Wire Line
	7100 1100 7100 1250
Wire Wire Line
	7100 1250 6300 1250
Wire Wire Line
	6300 1250 6300 1850
Wire Wire Line
	6300 1850 6700 1850
Wire Wire Line
	7450 1700 7500 1700
Wire Wire Line
	7500 1700 7500 1400
Wire Wire Line
	7500 1400 7200 1400
Wire Wire Line
	7200 1400 7200 1100
$Sheet
S 6700 2100 750  400 
U 551C0F76
F0 "receiver_32_3-2" 50
F1 "receiver_32_3-2.sch" 50
F2 "6V" I L 6700 2250 60 
F3 "GND" I L 6700 2450 60 
F4 "5V" I L 6700 2350 60 
F5 "12V" I L 6700 2150 60 
F6 "Trigger" I R 7450 2300 60 
$EndSheet
Wire Wire Line
	7450 2300 7550 2300
Wire Wire Line
	7550 2300 7550 1350
Wire Wire Line
	7550 1350 7300 1350
Wire Wire Line
	7300 1350 7300 1100
Wire Wire Line
	6150 2150 6700 2150
Connection ~ 6150 1550
Wire Wire Line
	6200 2250 6700 2250
Connection ~ 6200 1650
Wire Wire Line
	6250 2350 6700 2350
Connection ~ 6250 1750
Wire Wire Line
	6300 2450 6700 2450
Connection ~ 6300 1850
$Sheet
S 6700 2800 750  400 
U 551C3EAD
F0 "receiver_32_3-3" 50
F1 "receiver_32_3-3.sch" 50
F2 "6V" I L 6700 2950 60 
F3 "GND" I L 6700 3150 60 
F4 "5V" I L 6700 3050 60 
F5 "12V" I L 6700 2850 60 
F6 "Trigger" I R 7450 3000 60 
$EndSheet
Wire Wire Line
	7450 3000 7600 3000
Wire Wire Line
	7600 3000 7600 1300
Wire Wire Line
	7600 1300 7400 1300
Wire Wire Line
	7400 1300 7400 1100
Wire Wire Line
	6300 3150 6700 3150
Connection ~ 6300 2450
Wire Wire Line
	6250 3050 6700 3050
Connection ~ 6250 2350
Wire Wire Line
	6200 2950 6700 2950
Connection ~ 6200 2250
Wire Wire Line
	6150 2850 6700 2850
Connection ~ 6150 2150
Wire Wire Line
	1300 1600 1300 2300
Wire Wire Line
	1350 1700 1350 2400
Wire Wire Line
	1400 1800 1400 2500
Wire Wire Line
	1450 1900 1450 2600
Wire Wire Line
	3750 1700 3750 2400
Wire Wire Line
	3800 1800 3800 2500
Wire Wire Line
	3850 1900 3850 2600
Wire Wire Line
	3900 2000 3900 2700
Wire Wire Line
	6150 1550 6150 2150
Wire Wire Line
	6200 1650 6200 2250
Wire Wire Line
	6250 1750 6250 2350
Wire Wire Line
	6300 1850 6300 2450
Wire Wire Line
	6300 2450 6300 3150
Wire Wire Line
	6250 2350 6250 3050
Wire Wire Line
	6200 2250 6200 2950
Wire Wire Line
	6150 2150 6150 2850
Text Notes 1250 2850 0    50   ~ 0
Beacon 1 - 32.8kHz receiver
Text Notes 3700 2950 0    50   ~ 0
Beacon 2 - 32.8kHz receiver
Text Notes 6100 3400 0    50   ~ 0
Beacon 3 - 32.8kHz receiver
Wire Notes Line
	1200 2900 1200 750 
Wire Notes Line
	1200 750  2750 750 
Wire Notes Line
	2750 750  2750 2900
Wire Notes Line
	2750 2900 1200 2900
Wire Notes Line
	3650 3000 3650 700 
Wire Notes Line
	3650 700  5350 700 
Wire Notes Line
	5350 700  5350 3000
Wire Notes Line
	5350 3000 3650 3000
Wire Notes Line
	6050 3450 6050 550 
Wire Notes Line
	6050 550  7800 550 
Wire Notes Line
	7800 550  7800 3450
Wire Notes Line
	7800 3450 6050 3450
$EndSCHEMATC
