EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:opensabot
LIBS:recepteur 32khz-cache
EELAYER 27 0
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
	1300 1300 1300 2300
Wire Wire Line
	1300 1600 1800 1600
Wire Wire Line
	1350 1350 1350 2400
Wire Wire Line
	1350 1700 1800 1700
Wire Wire Line
	1400 1400 1400 2500
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
L CONN_6 P4
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
	1450 1450 1450 2600
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
	3900 1450 3900 2700
Wire Wire Line
	3900 2000 4300 2000
Wire Wire Line
	4300 1900 3850 1900
Wire Wire Line
	3850 1400 3850 2600
Wire Wire Line
	3850 2600 4300 2600
Wire Wire Line
	3800 2500 4300 2500
Wire Wire Line
	3800 1350 3800 2500
Wire Wire Line
	3800 1800 4300 1800
Wire Wire Line
	4300 1700 3750 1700
Wire Wire Line
	3750 1300 3750 2400
Wire Wire Line
	3750 2400 4300 2400
$Comp
L CONN_6 P5
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
S 6400 1600 750  400 
U 551AFB56
F0 "receiver_32_3-1" 50
F1 "receiver_32_3-1.sch" 50
F2 "6V" I L 6400 1750 60 
F3 "GND" I L 6400 1950 60 
F4 "5V" I L 6400 1850 60 
F5 "12V" I L 6400 1650 60 
F6 "Trigger" I R 7150 1800 60 
$EndSheet
$Comp
L CONN_7 P11
U 1 1 551B3A29
P 6800 850
F 0 "P11" V 6770 850 60  0000 C CNN
F 1 "CONN_7" V 6870 850 60  0000 C CNN
F 2 "" H 6800 850 60  0000 C CNN
F 3 "" H 6800 850 60  0000 C CNN
	1    6800 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 1200 5850 1200
Wire Wire Line
	5850 1200 5850 2950
Wire Wire Line
	5850 1650 6400 1650
Wire Wire Line
	6600 1200 6600 1250
Wire Wire Line
	6600 1250 5900 1250
Wire Wire Line
	5900 1250 5900 3050
Wire Wire Line
	5900 1750 6400 1750
Wire Wire Line
	6700 1200 6700 1300
Wire Wire Line
	6700 1300 5950 1300
Wire Wire Line
	5950 1300 5950 3150
Wire Wire Line
	5950 1850 6400 1850
Wire Wire Line
	6800 1200 6800 1350
Wire Wire Line
	6800 1350 6000 1350
Wire Wire Line
	6000 1350 6000 3250
Wire Wire Line
	6000 1950 6400 1950
Wire Wire Line
	7150 1800 7200 1800
Wire Wire Line
	7200 1800 7200 1500
Wire Wire Line
	7200 1500 6900 1500
Wire Wire Line
	6900 1500 6900 1200
$Sheet
S 6400 2200 750  400 
U 551C0F76
F0 "receiver_32_3-2" 50
F1 "receiver_32_3-2.sch" 50
F2 "6V" I L 6400 2350 60 
F3 "GND" I L 6400 2550 60 
F4 "5V" I L 6400 2450 60 
F5 "12V" I L 6400 2250 60 
F6 "Trigger" I R 7150 2400 60 
$EndSheet
Wire Wire Line
	7150 2400 7250 2400
Wire Wire Line
	7250 2400 7250 1450
Wire Wire Line
	7250 1450 7000 1450
Wire Wire Line
	7000 1450 7000 1200
Wire Wire Line
	5850 2250 6400 2250
Connection ~ 5850 1650
Wire Wire Line
	5900 2350 6400 2350
Connection ~ 5900 1750
Wire Wire Line
	5950 2450 6400 2450
Connection ~ 5950 1850
Wire Wire Line
	6000 2550 6400 2550
Connection ~ 6000 1950
$Sheet
S 6400 2900 750  400 
U 551C3EAD
F0 "receiver_32_3-3" 50
F1 "receiver_32_3-3.sch" 50
F2 "6V" I L 6400 3050 60 
F3 "GND" I L 6400 3250 60 
F4 "5V" I L 6400 3150 60 
F5 "12V" I L 6400 2950 60 
F6 "Trigger" I R 7150 3100 60 
$EndSheet
Wire Wire Line
	7150 3100 7300 3100
Wire Wire Line
	7300 3100 7300 1400
Wire Wire Line
	7300 1400 7100 1400
Wire Wire Line
	7100 1400 7100 1200
Wire Wire Line
	6000 3250 6400 3250
Connection ~ 6000 2550
Wire Wire Line
	5950 3150 6400 3150
Connection ~ 5950 2450
Wire Wire Line
	5900 3050 6400 3050
Connection ~ 5900 2350
Wire Wire Line
	5850 2950 6400 2950
Connection ~ 5850 2250
$EndSCHEMATC
