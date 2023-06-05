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
LIBS:recepteur 25khz 1-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title ""
Date "27 apr 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R75
U 1 1 551CD840
P 3750 1850
F 0 "R75" V 3830 1850 40  0000 C CNN
F 1 "10k" V 3757 1851 40  0000 C CNN
F 2 "~" V 3680 1850 30  0000 C CNN
F 3 "~" H 3750 1850 30  0000 C CNN
	1    3750 1850
	1    0    0    -1  
$EndComp
$Comp
L R R76
U 1 1 551CD846
P 3750 2450
F 0 "R76" V 3830 2450 40  0000 C CNN
F 1 "10k" V 3757 2451 40  0000 C CNN
F 2 "~" V 3680 2450 30  0000 C CNN
F 3 "~" H 3750 2450 30  0000 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
$Comp
L RECOM_DC-DC U12
U 1 1 551CD84C
P 2900 1400
F 0 "U12" H 3050 1204 60  0000 C CNN
F 1 "5V" H 2900 1600 60  0000 C CNN
F 2 "~" H 2900 1400 60  0000 C CNN
F 3 "~" H 2900 1400 60  0000 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P12
U 1 1 551CD852
P 1550 1600
F 0 "P12" V 1500 1600 40  0000 C CNN
F 1 "CONN_2" V 1600 1600 40  0000 C CNN
F 2 "" H 1550 1600 60  0000 C CNN
F 3 "" H 1550 1600 60  0000 C CNN
	1    1550 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2100 3750 2200
Wire Wire Line
	3750 2150 3950 2150
Connection ~ 3750 2150
Wire Wire Line
	2500 1350 2500 2200
Connection ~ 2500 1500
Wire Wire Line
	2900 1700 2900 1650
Wire Wire Line
	2300 1700 2300 2750
Wire Wire Line
	3300 2100 3450 2100
Wire Wire Line
	3450 2100 3450 1550
Wire Wire Line
	3450 1550 3950 1550
$Comp
L NCP1117DT12RKG U13
U 1 1 551CD869
P 2900 2150
F 0 "U13" H 3050 1954 40  0000 C CNN
F 1 "NCP1117DT12RKG" H 2900 2350 40  0000 C CNN
F 2 "~" H 2900 2150 60  0000 C CNN
F 3 "~" H 2900 2150 60  0000 C CNN
	1    2900 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P13
U 1 1 551CD86F
P 1550 2050
F 0 "P13" V 1500 2050 40  0000 C CNN
F 1 "CONN_2" V 1600 2050 40  0000 C CNN
F 2 "" H 1550 2050 60  0000 C CNN
F 3 "" H 1550 2050 60  0000 C CNN
	1    1550 2050
	-1   0    0    1   
$EndComp
Text HLabel 3950 2150 2    60   Output ~ 0
6V
Text HLabel 3950 1550 2    60   Output ~ 0
12V
Wire Wire Line
	1900 2150 2300 2150
Connection ~ 2300 2150
Wire Wire Line
	2300 1700 2900 1700
Wire Wire Line
	1900 1950 1900 1700
Wire Wire Line
	3750 2700 3750 2750
Connection ~ 3750 2750
Wire Wire Line
	3750 1600 3750 1550
Connection ~ 3750 1550
$Comp
L C C82
U 1 1 552BDCBC
P 2500 2400
F 0 "C82" H 2500 2500 40  0000 L CNN
F 1 "10µ" H 2506 2315 40  0000 L CNN
F 2 "~" H 2538 2250 30  0000 C CNN
F 3 "~" H 2500 2400 60  0000 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
$Comp
L C C83
U 1 1 552BDCC2
P 3300 2400
F 0 "C83" H 3300 2500 40  0000 L CNN
F 1 "10µ" H 3306 2315 40  0000 L CNN
F 2 "~" H 3338 2250 30  0000 C CNN
F 3 "~" H 3300 2400 60  0000 C CNN
	1    3300 2400
	1    0    0    -1  
$EndComp
Connection ~ 2500 2100
Wire Wire Line
	3300 2200 3300 2100
Wire Wire Line
	3300 2600 3300 2750
Connection ~ 3300 2750
Wire Wire Line
	2500 2600 2500 2750
Connection ~ 2500 2750
Wire Wire Line
	2900 2400 2900 2750
Connection ~ 2900 2750
$Comp
L SWITCH U16
U 1 1 552BE413
P 2150 1100
F 0 "U16" H 2150 1200 60  0000 C CNN
F 1 "SWITCH" H 2150 1100 60  0000 C CNN
F 2 "~" H 2150 1100 60  0000 C CNN
F 3 "~" H 2150 1100 60  0000 C CNN
	1    2150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1500 2000 1350
Wire Wire Line
	2150 1350 2150 1500
NoConn ~ 2300 1350
Wire Wire Line
	1900 1500 2000 1500
Wire Wire Line
	2150 1500 2500 1500
Text HLabel 4450 2750 2    60   Output ~ 0
GND
Text HLabel 4400 1350 2    60   Output ~ 0
5V
$Comp
L LED D37
U 1 1 552D0651
P 4350 1850
F 0 "D37" H 4350 1950 50  0000 C CNN
F 1 "LED" H 4350 1750 50  0000 C CNN
F 2 "~" H 4350 1850 60  0000 C CNN
F 3 "~" H 4350 1850 60  0000 C CNN
	1    4350 1850
	0    1    1    0   
$EndComp
$Comp
L R R85
U 1 1 552D0657
P 4350 2450
F 0 "R85" V 4430 2450 40  0000 C CNN
F 1 "10k" V 4357 2451 40  0000 C CNN
F 2 "~" V 4280 2450 30  0000 C CNN
F 3 "~" H 4350 2450 30  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2700 4350 2750
Connection ~ 4350 2750
Wire Wire Line
	4350 1350 4350 1650
Connection ~ 4350 1350
Wire Wire Line
	4350 2050 4350 2200
Wire Wire Line
	3300 1350 4400 1350
Wire Wire Line
	2300 2750 4450 2750
$EndSCHEMATC
