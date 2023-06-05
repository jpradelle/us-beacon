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
Sheet 8 12
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
L R R43
U 1 1 5519A728
P 3400 1750
F 0 "R43" V 3480 1750 40  0000 C CNN
F 1 "10k" V 3407 1751 40  0000 C CNN
F 2 "~" V 3330 1750 30  0000 C CNN
F 3 "~" H 3400 1750 30  0000 C CNN
	1    3400 1750
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 5519A72E
P 3400 2350
F 0 "R44" V 3480 2350 40  0000 C CNN
F 1 "10k" V 3407 2351 40  0000 C CNN
F 2 "~" V 3330 2350 30  0000 C CNN
F 3 "~" H 3400 2350 30  0000 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
$Comp
L RECOM_DC-DC U7
U 1 1 5519A740
P 2550 1300
F 0 "U7" H 2700 1104 60  0000 C CNN
F 1 "5V" H 2550 1500 60  0000 C CNN
F 2 "~" H 2550 1300 60  0000 C CNN
F 3 "~" H 2550 1300 60  0000 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 5519A746
P 1200 1500
F 0 "P6" V 1150 1500 40  0000 C CNN
F 1 "CONN_2" V 1250 1500 40  0000 C CNN
F 2 "" H 1200 1500 60  0000 C CNN
F 3 "" H 1200 1500 60  0000 C CNN
	1    1200 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2000 3400 2100
Wire Wire Line
	3400 2050 3600 2050
Connection ~ 3400 2050
Wire Wire Line
	2150 1250 2150 2100
Connection ~ 2150 1400
Wire Wire Line
	2550 1600 2550 1550
Wire Wire Line
	1950 1600 1950 2650
Wire Wire Line
	1950 2650 4100 2650
Wire Wire Line
	2950 2000 3100 2000
Wire Wire Line
	3100 2000 3100 1450
Wire Wire Line
	3100 1450 3600 1450
Wire Wire Line
	2950 1250 4050 1250
$Comp
L NCP1117DT12RKG U8
U 1 1 5519A767
P 2550 2050
F 0 "U8" H 2700 1854 40  0000 C CNN
F 1 "NCP1117DT12RKG" H 2550 2250 40  0000 C CNN
F 2 "~" H 2550 2050 60  0000 C CNN
F 3 "~" H 2550 2050 60  0000 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P7
U 1 1 5519A76D
P 1200 1950
F 0 "P7" V 1150 1950 40  0000 C CNN
F 1 "CONN_2" V 1250 1950 40  0000 C CNN
F 2 "" H 1200 1950 60  0000 C CNN
F 3 "" H 1200 1950 60  0000 C CNN
	1    1200 1950
	-1   0    0    1   
$EndComp
Text HLabel 3600 2050 2    60   Output ~ 0
6V
Text HLabel 3600 1450 2    60   Output ~ 0
12V
Text HLabel 4100 2650 2    60   Output ~ 0
GND
Wire Wire Line
	1550 2050 1950 2050
Connection ~ 1950 2050
Wire Wire Line
	1950 1600 2550 1600
Wire Wire Line
	1550 1850 1550 1600
Text HLabel 4050 1250 2    60   Output ~ 0
5V
Wire Wire Line
	3400 2600 3400 2650
Connection ~ 3400 2650
Wire Wire Line
	3400 1500 3400 1450
Connection ~ 3400 1450
Connection ~ 3050 2650
Wire Wire Line
	2550 2300 2550 2650
Connection ~ 2550 2650
$Comp
L C C79
U 1 1 551E0A45
P 3050 2300
F 0 "C79" H 3050 2400 40  0000 L CNN
F 1 "10µ" H 3056 2215 40  0000 L CNN
F 2 "~" H 3088 2150 30  0000 C CNN
F 3 "~" H 3050 2300 60  0000 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2100 3050 2000
Connection ~ 3050 2000
Wire Wire Line
	3050 2500 3050 2650
$Comp
L C C78
U 1 1 551E0BA9
P 2150 2300
F 0 "C78" H 2150 2400 40  0000 L CNN
F 1 "10µ" H 2156 2215 40  0000 L CNN
F 2 "~" H 2188 2150 30  0000 C CNN
F 3 "~" H 2150 2300 60  0000 C CNN
	1    2150 2300
	1    0    0    -1  
$EndComp
Connection ~ 2150 2000
Wire Wire Line
	2150 2500 2150 2650
Connection ~ 2150 2650
$Comp
L SWITCH U15
U 1 1 552BE1BA
P 1800 1000
F 0 "U15" H 1800 1100 60  0000 C CNN
F 1 "SWITCH" H 1800 1000 60  0000 C CNN
F 2 "~" H 1800 1000 60  0000 C CNN
F 3 "~" H 1800 1000 60  0000 C CNN
	1    1800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1400 1650 1250
Wire Wire Line
	1800 1250 1800 1400
NoConn ~ 1950 1250
Wire Wire Line
	1550 1400 1650 1400
Wire Wire Line
	1800 1400 2150 1400
$Comp
L LED D36
U 1 1 552BEC59
P 4000 1750
F 0 "D36" H 4000 1850 50  0000 C CNN
F 1 "LED" H 4000 1650 50  0000 C CNN
F 2 "~" H 4000 1750 60  0000 C CNN
F 3 "~" H 4000 1750 60  0000 C CNN
	1    4000 1750
	0    1    1    0   
$EndComp
$Comp
L R R84
U 1 1 552BEC68
P 4000 2350
F 0 "R84" V 4080 2350 40  0000 C CNN
F 1 "10k" V 4007 2351 40  0000 C CNN
F 2 "~" V 3930 2350 30  0000 C CNN
F 3 "~" H 4000 2350 30  0000 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2600 4000 2650
Connection ~ 4000 2650
Wire Wire Line
	4000 1250 4000 1550
Connection ~ 4000 1250
Wire Wire Line
	4000 1950 4000 2100
$EndSCHEMATC
