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
Sheet 2 8
Title ""
Date "1 may 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ULTRASON US1
U 1 1 550EC1FD
P 1300 1450
F 0 "US1" H 1300 1500 60  0000 C CNN
F 1 "ULTRASON" H 1300 1650 60  0000 C CNN
F 2 "" H 1300 1450 60  0000 C CNN
F 3 "" H 1300 1500 60  0000 C CNN
F 4 "25 KHz" H 1300 1400 60  0000 C CNN "Frequency"
	1    1300 1450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 550EC23E
P 2050 1450
F 0 "R1" V 2130 1450 40  0000 C CNN
F 1 "1k" V 2057 1451 40  0000 C CNN
F 2 "~" V 1980 1450 30  0000 C CNN
F 3 "~" H 2050 1450 30  0000 C CNN
	1    2050 1450
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 550EC24D
P 2600 1450
F 0 "C1" H 2600 1550 40  0000 L CNN
F 1 "6.8n" H 2606 1365 40  0000 L CNN
F 2 "~" H 2638 1300 30  0000 C CNN
F 3 "~" H 2600 1450 60  0000 C CNN
	1    2600 1450
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U1
U 3 1 550EC2A6
P 3400 1550
F 0 "U1" H 3450 1750 60  0000 C CNN
F 1 "TL074" H 3550 1350 50  0000 C CNN
F 2 "" H 3400 1550 60  0000 C CNN
F 3 "" H 3400 1550 60  0000 C CNN
	3    3400 1550
	1    0    0    1   
$EndComp
$Comp
L C C2
U 1 1 550EC2D5
P 3300 850
F 0 "C2" H 3300 950 40  0000 L CNN
F 1 "220p" H 3306 765 40  0000 L CNN
F 2 "~" H 3338 700 30  0000 C CNN
F 3 "~" H 3300 850 60  0000 C CNN
	1    3300 850 
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 550EC2E4
P 3300 600
F 0 "R3" V 3380 600 40  0000 C CNN
F 1 "22k" V 3307 601 40  0000 C CNN
F 2 "~" V 3230 600 30  0000 C CNN
F 3 "~" H 3300 600 30  0000 C CNN
	1    3300 600 
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 550EC448
P 4300 1550
F 0 "R5" V 4380 1550 40  0000 C CNN
F 1 "1k" V 4307 1551 40  0000 C CNN
F 2 "~" V 4230 1550 30  0000 C CNN
F 3 "~" H 4300 1550 30  0000 C CNN
	1    4300 1550
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 550EC44E
P 4850 1550
F 0 "C5" H 4850 1650 40  0000 L CNN
F 1 "6.8n" H 4856 1465 40  0000 L CNN
F 2 "~" H 4888 1400 30  0000 C CNN
F 3 "~" H 4850 1550 60  0000 C CNN
	1    4850 1550
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U1
U 4 1 550EC454
P 5650 1650
F 0 "U1" H 5700 1850 60  0000 C CNN
F 1 "TL074" H 5800 1450 50  0000 C CNN
F 2 "" H 5650 1650 60  0000 C CNN
F 3 "" H 5650 1650 60  0000 C CNN
	4    5650 1650
	1    0    0    1   
$EndComp
$Comp
L C C8
U 1 1 550EC45A
P 5550 950
F 0 "C8" H 5550 1050 40  0000 L CNN
F 1 "220p" H 5556 865 40  0000 L CNN
F 2 "~" H 5588 800 30  0000 C CNN
F 3 "~" H 5550 950 60  0000 C CNN
	1    5550 950 
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 550EC460
P 5550 700
F 0 "R8" V 5630 700 40  0000 C CNN
F 1 "22k" V 5557 701 40  0000 C CNN
F 2 "~" V 5480 700 30  0000 C CNN
F 3 "~" H 5550 700 30  0000 C CNN
	1    5550 700 
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U1
U 1 1 550EC4F5
P 3400 2950
F 0 "U1" H 3450 3150 60  0000 C CNN
F 1 "TL074" H 3550 2750 50  0000 C CNN
F 2 "" H 3400 2950 60  0000 C CNN
F 3 "" H 3400 2950 60  0000 C CNN
	1    3400 2950
	1    0    0    1   
$EndComp
$Comp
L DIODESCH D1
U 1 1 550EC522
P 4200 2950
F 0 "D1" H 4200 3050 40  0000 C CNN
F 1 "DIODESCH" H 4200 2850 40  0000 C CNN
F 2 "~" H 4200 2950 60  0000 C CNN
F 3 "~" H 4200 2950 60  0000 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 550EC5B1
P 4650 3250
F 0 "C3" H 4650 3350 40  0000 L CNN
F 1 "47n" H 4656 3165 40  0000 L CNN
F 2 "~" H 4688 3100 30  0000 C CNN
F 3 "~" H 4650 3250 60  0000 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 550EC5C0
P 4900 3250
F 0 "R6" V 4980 3250 40  0000 C CNN
F 1 "47k" V 4907 3251 40  0000 C CNN
F 2 "~" V 4830 3250 30  0000 C CNN
F 3 "~" H 4900 3250 30  0000 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 550EC5CF
P 5200 2950
F 0 "C6" H 5200 3050 40  0000 L CNN
F 1 "100n" H 5206 2865 40  0000 L CNN
F 2 "~" H 5238 2800 30  0000 C CNN
F 3 "~" H 5200 2950 60  0000 C CNN
	1    5200 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 550EC5DE
P 5750 2950
F 0 "R9" V 5830 2950 40  0000 C CNN
F 1 "47k" V 5757 2951 40  0000 C CNN
F 2 "~" V 5680 2950 30  0000 C CNN
F 3 "~" H 5750 2950 30  0000 C CNN
	1    5750 2950
	0    -1   -1   0   
$EndComp
$Comp
L C C9
U 1 1 550EC5ED
P 6100 3250
F 0 "C9" H 6100 3350 40  0000 L CNN
F 1 "1n" H 6106 3165 40  0000 L CNN
F 2 "~" H 6138 3100 30  0000 C CNN
F 3 "~" H 6100 3250 60  0000 C CNN
	1    6100 3250
	1    0    0    -1  
$EndComp
$Comp
L TL074 U1
U 2 1 550EC840
P 3400 4400
F 0 "U1" H 3450 4600 60  0000 C CNN
F 1 "TL074" H 3550 4200 50  0000 C CNN
F 2 "" H 3400 4400 60  0000 C CNN
F 3 "" H 3400 4400 60  0000 C CNN
	2    3400 4400
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 550EC856
P 2550 4300
F 0 "R2" V 2630 4300 40  0000 C CNN
F 1 "1k" V 2557 4301 40  0000 C CNN
F 2 "~" V 2480 4300 30  0000 C CNN
F 3 "~" H 2550 4300 30  0000 C CNN
	1    2550 4300
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 550EC86F
P 3300 3750
F 0 "R4" V 3380 3750 40  0000 C CNN
F 1 "6.8k" V 3307 3751 40  0000 C CNN
F 2 "~" V 3230 3750 30  0000 C CNN
F 3 "~" H 3300 3750 30  0000 C CNN
	1    3300 3750
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D2
U 1 1 550EC87E
P 4200 4400
F 0 "D2" H 4200 4500 40  0000 C CNN
F 1 "DIODESCH" H 4200 4300 40  0000 C CNN
F 2 "~" H 4200 4400 60  0000 C CNN
F 3 "~" H 4200 4400 60  0000 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 550ECA51
P 4650 4700
F 0 "C4" H 4650 4800 40  0000 L CNN
F 1 "47n" H 4656 4615 40  0000 L CNN
F 2 "~" H 4688 4550 30  0000 C CNN
F 3 "~" H 4650 4700 60  0000 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 550ECA57
P 4900 4700
F 0 "R7" V 4980 4700 40  0000 C CNN
F 1 "47k" V 4907 4701 40  0000 C CNN
F 2 "~" V 4830 4700 30  0000 C CNN
F 3 "~" H 4900 4700 30  0000 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 550ECA5D
P 5200 4400
F 0 "C7" H 5200 4500 40  0000 L CNN
F 1 "100n" H 5206 4315 40  0000 L CNN
F 2 "~" H 5238 4250 30  0000 C CNN
F 3 "~" H 5200 4400 60  0000 C CNN
	1    5200 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 550ECA63
P 5750 4400
F 0 "R10" V 5830 4400 40  0000 C CNN
F 1 "47k" V 5757 4401 40  0000 C CNN
F 2 "~" V 5680 4400 30  0000 C CNN
F 3 "~" H 5750 4400 30  0000 C CNN
	1    5750 4400
	0    -1   -1   0   
$EndComp
$Comp
L C C10
U 1 1 550ECA69
P 6100 4700
F 0 "C10" H 6100 4800 40  0000 L CNN
F 1 "2.2n" H 6106 4615 40  0000 L CNN
F 2 "~" H 6138 4550 30  0000 C CNN
F 3 "~" H 6100 4700 60  0000 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L ATTINY45-P IC1
U 1 1 550ECC06
P 8850 1750
F 0 "IC1" H 7800 2150 60  0000 C CNN
F 1 "ATTINY45-P" H 9700 1350 60  0000 C CNN
F 2 "DIP8" H 7800 1350 60  0001 C CNN
F 3 "" H 8850 1750 60  0000 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 550FE0FE
P 10250 1750
F 0 "C11" H 10250 1850 40  0000 L CNN
F 1 "100n" H 10256 1665 40  0000 L CNN
F 2 "~" H 10288 1600 30  0000 C CNN
F 3 "~" H 10250 1750 60  0000 C CNN
	1    10250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1450 1800 1450
Wire Wire Line
	2300 1450 2400 1450
Wire Wire Line
	2800 1450 2900 1450
Connection ~ 2850 1450
Wire Wire Line
	3900 1550 4050 1550
Wire Wire Line
	3300 1100 3300 1150
Wire Wire Line
	3300 2000 3300 1950
Wire Wire Line
	3950 850  3500 850 
Connection ~ 3950 850 
Wire Wire Line
	3100 850  2850 850 
Connection ~ 2850 850 
Wire Wire Line
	3950 600  3950 1550
Wire Wire Line
	3550 600  3950 600 
Wire Wire Line
	3050 600  2850 600 
Wire Wire Line
	2850 600  2850 1450
Wire Wire Line
	4550 1550 4650 1550
Wire Wire Line
	5050 1550 5150 1550
Connection ~ 5100 1550
Wire Wire Line
	6200 1650 6150 1650
Wire Wire Line
	5150 1750 5050 1750
Wire Wire Line
	5550 1200 5550 1250
Wire Wire Line
	5550 2100 5550 2050
Wire Wire Line
	6200 950  5750 950 
Connection ~ 6200 950 
Wire Wire Line
	5350 950  5100 950 
Connection ~ 5100 950 
Wire Wire Line
	6200 700  6200 2200
Wire Wire Line
	5800 700  6200 700 
Wire Wire Line
	5300 700  5100 700 
Wire Wire Line
	5100 700  5100 1550
Connection ~ 3950 1550
Wire Wire Line
	3300 2500 3300 2550
Wire Wire Line
	3300 3400 3300 3350
Wire Wire Line
	3900 2950 4000 2950
Wire Wire Line
	4400 2950 5000 2950
Wire Wire Line
	4450 2950 4450 2300
Wire Wire Line
	4450 2300 2900 2300
Wire Wire Line
	2900 2300 2900 2850
Wire Wire Line
	6200 2200 2800 2200
Wire Wire Line
	2800 2200 2800 3050
Wire Wire Line
	2300 3050 2900 3050
Connection ~ 6200 1650
Connection ~ 4450 2950
Wire Wire Line
	4650 3050 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	4900 3000 4900 2950
Connection ~ 4900 2950
Wire Wire Line
	5400 2950 5500 2950
Wire Wire Line
	6100 3050 6100 2950
Wire Wire Line
	6000 2950 6850 2950
Wire Wire Line
	4650 3450 4650 3550
Wire Wire Line
	4650 3550 6100 3550
Wire Wire Line
	4900 3550 4900 3500
Wire Wire Line
	6100 3550 6100 3450
Connection ~ 4900 3550
Wire Wire Line
	5300 3650 5300 3550
Connection ~ 5300 3550
Wire Wire Line
	3300 3950 3300 4000
Wire Wire Line
	3300 4850 3300 4800
Wire Wire Line
	3900 4400 4000 4400
Wire Wire Line
	3950 4400 3950 3750
Wire Wire Line
	3950 3750 3550 3750
Wire Wire Line
	3050 3750 2850 3750
Wire Wire Line
	2850 3750 2850 4300
Wire Wire Line
	2800 4300 2900 4300
Connection ~ 2850 4300
Wire Wire Line
	2300 3050 2300 4300
Connection ~ 2800 3050
Connection ~ 3950 4400
Wire Wire Line
	2800 4500 2900 4500
Wire Wire Line
	4650 4500 4650 4400
Connection ~ 4650 4400
Wire Wire Line
	4900 4400 4900 4450
Connection ~ 4900 4400
Wire Wire Line
	5400 4400 5500 4400
Wire Wire Line
	6100 4500 6100 4400
Wire Wire Line
	6000 4400 7050 4400
Wire Wire Line
	4650 4900 4650 5000
Wire Wire Line
	4650 5000 6100 5000
Wire Wire Line
	4900 5000 4900 4950
Wire Wire Line
	6100 5000 6100 4900
Connection ~ 4900 5000
Wire Wire Line
	5300 5100 5300 5000
Connection ~ 5300 5000
Wire Wire Line
	4400 4400 5000 4400
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10200 2000 10300 2000
Wire Wire Line
	6850 2950 6850 1900
Wire Wire Line
	6850 1900 7500 1900
Connection ~ 6100 2950
Wire Wire Line
	7050 4400 7050 1800
Wire Wire Line
	7050 1800 7500 1800
Connection ~ 6100 4400
Wire Wire Line
	10250 1550 10250 1500
Connection ~ 10250 1500
Wire Wire Line
	10250 1950 10250 2000
Connection ~ 10250 2000
$Comp
L DIODESCH D3
U 1 1 55108B05
P 5450 3250
F 0 "D3" H 5450 3350 40  0000 C CNN
F 1 "DIODESCH" H 5450 3150 40  0000 C CNN
F 2 "~" H 5450 3250 60  0000 C CNN
F 3 "~" H 5450 3250 60  0000 C CNN
	1    5450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2950 5450 3050
Connection ~ 5450 2950
Wire Wire Line
	5450 3450 5450 3550
Connection ~ 5450 3550
$Comp
L DIODESCH D4
U 1 1 55108CC0
P 5450 4700
F 0 "D4" H 5450 4800 40  0000 C CNN
F 1 "DIODESCH" H 5450 4600 40  0000 C CNN
F 2 "~" H 5450 4700 60  0000 C CNN
F 3 "~" H 5450 4700 60  0000 C CNN
	1    5450 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 4400 5450 4500
Connection ~ 5450 4400
Wire Wire Line
	5450 4900 5450 5000
Connection ~ 5450 5000
Text HLabel 800  1450 0    60   Input ~ 0
6V
Wire Wire Line
	800  1450 900  1450
Text HLabel 2800 1650 0    60   Input ~ 0
6V
Text HLabel 5050 1750 0    60   Input ~ 0
6V
Text HLabel 2800 4500 0    60   Input ~ 0
6V
Wire Wire Line
	2800 1650 2900 1650
Text HLabel 5300 5100 3    60   Input ~ 0
GND
Text HLabel 3300 3950 1    60   Input ~ 0
GND
Text HLabel 3300 2500 1    60   Input ~ 0
GND
Text HLabel 5300 3650 3    60   Input ~ 0
GND
Text HLabel 3300 1100 1    60   Input ~ 0
GND
Text HLabel 5550 1200 1    60   Input ~ 0
GND
Text HLabel 10300 2000 2    60   Input ~ 0
GND
Text HLabel 10300 1500 2    60   Input ~ 0
5V
Text HLabel 3300 2000 3    60   Input ~ 0
12V
Text HLabel 5550 2100 3    60   Input ~ 0
12V
Text HLabel 3300 3400 3    60   Input ~ 0
12V
Text HLabel 3300 4850 3    60   Input ~ 0
12V
Text HLabel 7400 1500 0    60   Input ~ 0
Trigger
Wire Wire Line
	7400 1500 7500 1500
$Comp
L R R77
U 1 1 5525A78B
P 7150 1600
F 0 "R77" V 7230 1600 40  0000 C CNN
F 1 "10k" V 7157 1601 40  0000 C CNN
F 2 "~" V 7080 1600 30  0000 C CNN
F 3 "~" H 7150 1600 30  0000 C CNN
	1    7150 1600
	0    1    1    0   
$EndComp
$Comp
L LED D29
U 1 1 5525A79A
P 6600 1600
F 0 "D29" H 6600 1700 50  0000 C CNN
F 1 "LED" H 6600 1500 50  0000 C CNN
F 2 "~" H 6600 1600 60  0000 C CNN
F 3 "~" H 6600 1600 60  0000 C CNN
	1    6600 1600
	-1   0    0    1   
$EndComp
Text HLabel 6350 1650 3    60   Input ~ 0
GND
Wire Wire Line
	7500 1600 7400 1600
Wire Wire Line
	6900 1600 6800 1600
Wire Wire Line
	6400 1600 6350 1600
Wire Wire Line
	6350 1600 6350 1650
$EndSCHEMATC
