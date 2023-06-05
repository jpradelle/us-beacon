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
Sheet 4 12
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
L R R23
U 1 1 55174B87
P 5150 2650
F 0 "R23" V 5230 2650 40  0000 C CNN
F 1 "10k" V 5157 2651 40  0000 C CNN
F 2 "~" V 5080 2650 30  0000 C CNN
F 3 "~" H 5150 2650 30  0000 C CNN
	1    5150 2650
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 55174B8D
P 5150 3250
F 0 "R24" V 5230 3250 40  0000 C CNN
F 1 "10k" V 5157 3251 40  0000 C CNN
F 2 "~" V 5080 3250 30  0000 C CNN
F 3 "~" H 5150 3250 30  0000 C CNN
	1    5150 3250
	1    0    0    -1  
$EndComp
$Comp
L RECOM_DC-DC U5
U 1 1 55174B9F
P 4300 2200
F 0 "U5" H 4450 2004 60  0000 C CNN
F 1 "5V" H 4300 2400 60  0000 C CNN
F 2 "~" H 4300 2200 60  0000 C CNN
F 3 "~" H 4300 2200 60  0000 C CNN
	1    4300 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 55174BA5
P 2950 2400
F 0 "P2" V 2900 2400 40  0000 C CNN
F 1 "CONN_2" V 3000 2400 40  0000 C CNN
F 2 "" H 2950 2400 60  0000 C CNN
F 3 "" H 2950 2400 60  0000 C CNN
	1    2950 2400
	-1   0    0    1   
$EndComp
$Comp
L NCP1117DT12RKG U6
U 1 1 55174BC8
P 4300 2950
F 0 "U6" H 4450 2754 40  0000 C CNN
F 1 "NCP1117DT12RKG" H 4300 3150 40  0000 C CNN
F 2 "~" H 4300 2950 60  0000 C CNN
F 3 "~" H 4300 2950 60  0000 C CNN
	1    4300 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 55174BCE
P 2950 2850
F 0 "P3" V 2900 2850 40  0000 C CNN
F 1 "CONN_2" V 3000 2850 40  0000 C CNN
F 2 "" H 2950 2850 60  0000 C CNN
F 3 "" H 2950 2850 60  0000 C CNN
	1    2950 2850
	-1   0    0    1   
$EndComp
Text HLabel 5350 2950 2    60   Output ~ 0
6V
Text HLabel 5350 2350 2    60   Output ~ 0
12V
$Comp
L C C80
U 1 1 552BD90D
P 3900 3250
F 0 "C80" H 3900 3350 40  0000 L CNN
F 1 "10µ" H 3906 3165 40  0000 L CNN
F 2 "~" H 3938 3100 30  0000 C CNN
F 3 "~" H 3900 3250 60  0000 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
$Comp
L C C81
U 1 1 552BD943
P 4700 3250
F 0 "C81" H 4700 3350 40  0000 L CNN
F 1 "10µ" H 4706 3165 40  0000 L CNN
F 2 "~" H 4738 3100 30  0000 C CNN
F 3 "~" H 4700 3250 60  0000 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2900 5150 3000
Wire Wire Line
	5150 2950 5350 2950
Connection ~ 5150 2950
Wire Wire Line
	3900 2150 3900 3050
Connection ~ 3900 2300
Wire Wire Line
	4300 2500 4300 2450
Wire Wire Line
	3700 2500 3700 3550
Wire Wire Line
	4700 2900 4850 2900
Wire Wire Line
	4850 2900 4850 2350
Wire Wire Line
	4850 2350 5350 2350
Wire Wire Line
	3300 2950 3700 2950
Connection ~ 3700 2950
Wire Wire Line
	3700 2500 4800 2500
Wire Wire Line
	3300 2750 3300 2500
Wire Wire Line
	5150 2400 5150 2350
Connection ~ 5150 2350
Wire Wire Line
	5150 3500 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	4300 3200 4300 3550
Connection ~ 4300 3550
Connection ~ 3900 2900
Wire Wire Line
	3900 3450 3900 3550
Connection ~ 3900 3550
Wire Wire Line
	4700 3450 4700 3550
Connection ~ 4700 3550
Wire Wire Line
	4700 3050 4700 2900
$Comp
L SWITCH U14
U 1 1 552BDF5A
P 3550 1900
F 0 "U14" H 3550 2000 60  0000 C CNN
F 1 "SWITCH" H 3550 1900 60  0000 C CNN
F 2 "~" H 3550 1900 60  0000 C CNN
F 3 "~" H 3550 1900 60  0000 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2300 3400 2300
Wire Wire Line
	3400 2300 3400 2150
Wire Wire Line
	3550 2150 3550 2300
Wire Wire Line
	3550 2300 3900 2300
NoConn ~ 3700 2150
Wire Wire Line
	3700 3550 5850 3550
Wire Wire Line
	4700 2150 5800 2150
Text HLabel 5850 3550 2    60   Output ~ 0
GND
Text HLabel 5800 2150 2    60   Output ~ 0
5V
$Comp
L LED D38
U 1 1 552FA3F8
P 5750 2650
F 0 "D38" H 5750 2750 50  0000 C CNN
F 1 "LED" H 5750 2550 50  0000 C CNN
F 2 "~" H 5750 2650 60  0000 C CNN
F 3 "~" H 5750 2650 60  0000 C CNN
	1    5750 2650
	0    1    1    0   
$EndComp
$Comp
L R R86
U 1 1 552FA3FE
P 5750 3250
F 0 "R86" V 5830 3250 40  0000 C CNN
F 1 "10k" V 5757 3251 40  0000 C CNN
F 2 "~" V 5680 3250 30  0000 C CNN
F 3 "~" H 5750 3250 30  0000 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3500 5750 3550
Connection ~ 5750 3550
Wire Wire Line
	5750 2150 5750 2450
Connection ~ 5750 2150
Wire Wire Line
	5750 2850 5750 3000
$Comp
L LP2950ACDT-3.3RG U17
U 1 1 552FCD9C
P 5150 1600
F 0 "U17" H 5300 1404 40  0000 C CNN
F 1 "LP2950ACDT-3.3RG" H 5150 1800 40  0000 C CNN
F 2 "~" H 5150 1600 60  0000 C CNN
F 3 "~" H 5150 1600 60  0000 C CNN
	1    5150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1550 4750 2150
Connection ~ 4750 2150
Wire Wire Line
	4800 2500 4800 2000
Wire Wire Line
	4800 2000 5600 2000
Wire Wire Line
	5150 2000 5150 1850
Connection ~ 4300 2500
Text HLabel 5750 1550 2    60   Output ~ 0
3.3V
Wire Wire Line
	5550 1550 5750 1550
$Comp
L C C84
U 1 1 552FCE54
P 5600 1800
F 0 "C84" H 5600 1900 40  0000 L CNN
F 1 "1µ" H 5606 1715 40  0000 L CNN
F 2 "~" H 5638 1650 30  0000 C CNN
F 3 "~" H 5600 1800 60  0000 C CNN
	1    5600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1600 5600 1550
Connection ~ 5600 1550
Connection ~ 5150 2000
$EndSCHEMATC
