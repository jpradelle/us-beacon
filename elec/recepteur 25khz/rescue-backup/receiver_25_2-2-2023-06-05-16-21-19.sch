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
Sheet 7 12
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
L ULTRASON US4
U 1 1 5519AC6A
P 1550 1650
F 0 "US4" H 1550 1700 60  0000 C CNN
F 1 "ULTRASON" H 1550 1850 60  0000 C CNN
F 2 "" H 1550 1650 60  0000 C CNN
F 3 "" H 1550 1700 60  0000 C CNN
F 4 "25 KHz" H 1550 1600 60  0000 C CNN "Frequency"
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 5519AC70
P 2300 1650
F 0 "R33" V 2380 1650 40  0000 C CNN
F 1 "1k" V 2307 1651 40  0000 C CNN
F 2 "~" V 2230 1650 30  0000 C CNN
F 3 "~" H 2300 1650 30  0000 C CNN
	1    2300 1650
	0    -1   -1   0   
$EndComp
$Comp
L C C34
U 1 1 5519AC76
P 2850 1650
F 0 "C34" H 2850 1750 40  0000 L CNN
F 1 "10n" H 2856 1565 40  0000 L CNN
F 2 "~" H 2888 1500 30  0000 C CNN
F 3 "~" H 2850 1650 60  0000 C CNN
	1    2850 1650
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U3
U 1 1 5519AC7C
P 3650 1750
F 0 "U3" H 3700 1950 60  0000 C CNN
F 1 "TL074" H 3800 1550 50  0000 C CNN
F 2 "" H 3650 1750 60  0000 C CNN
F 3 "" H 3650 1750 60  0000 C CNN
	1    3650 1750
	1    0    0    1   
$EndComp
$Comp
L C C35
U 1 1 5519AC82
P 3550 1050
F 0 "C35" H 3550 1150 40  0000 L CNN
F 1 "470p" H 3556 965 40  0000 L CNN
F 2 "~" H 3588 900 30  0000 C CNN
F 3 "~" H 3550 1050 60  0000 C CNN
	1    3550 1050
	0    -1   -1   0   
$EndComp
$Comp
L R R35
U 1 1 5519AC88
P 3550 800
F 0 "R35" V 3630 800 40  0000 C CNN
F 1 "10k" V 3557 801 40  0000 C CNN
F 2 "~" V 3480 800 30  0000 C CNN
F 3 "~" H 3550 800 30  0000 C CNN
	1    3550 800 
	0    -1   -1   0   
$EndComp
$Comp
L R R37
U 1 1 5519AC8E
P 4550 1750
F 0 "R37" V 4630 1750 40  0000 C CNN
F 1 "1k" V 4557 1751 40  0000 C CNN
F 2 "~" V 4480 1750 30  0000 C CNN
F 3 "~" H 4550 1750 30  0000 C CNN
	1    4550 1750
	0    -1   -1   0   
$EndComp
$Comp
L C C38
U 1 1 5519AC94
P 5100 1750
F 0 "C38" H 5100 1850 40  0000 L CNN
F 1 "10n" H 5106 1665 40  0000 L CNN
F 2 "~" H 5138 1600 30  0000 C CNN
F 3 "~" H 5100 1750 60  0000 C CNN
	1    5100 1750
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U3
U 2 1 5519AC9A
P 5900 1850
F 0 "U3" H 5950 2050 60  0000 C CNN
F 1 "TL074" H 6050 1650 50  0000 C CNN
F 2 "" H 5900 1850 60  0000 C CNN
F 3 "" H 5900 1850 60  0000 C CNN
	2    5900 1850
	1    0    0    1   
$EndComp
$Comp
L C C41
U 1 1 5519ACA0
P 5800 1150
F 0 "C41" H 5800 1250 40  0000 L CNN
F 1 "470p" H 5806 1065 40  0000 L CNN
F 2 "~" H 5838 1000 30  0000 C CNN
F 3 "~" H 5800 1150 60  0000 C CNN
	1    5800 1150
	0    -1   -1   0   
$EndComp
$Comp
L R R40
U 1 1 5519ACA6
P 5800 900
F 0 "R40" V 5880 900 40  0000 C CNN
F 1 "10k" V 5807 901 40  0000 C CNN
F 2 "~" V 5730 900 30  0000 C CNN
F 3 "~" H 5800 900 30  0000 C CNN
	1    5800 900 
	0    -1   -1   0   
$EndComp
$Comp
L TL074 U3
U 3 1 5519ACAC
P 3650 3150
F 0 "U3" H 3700 3350 60  0000 C CNN
F 1 "TL074" H 3800 2950 50  0000 C CNN
F 2 "" H 3650 3150 60  0000 C CNN
F 3 "" H 3650 3150 60  0000 C CNN
	3    3650 3150
	1    0    0    1   
$EndComp
$Comp
L DIODESCH D13
U 1 1 5519ACB2
P 4450 3150
F 0 "D13" H 4450 3250 40  0000 C CNN
F 1 "DIODESCH" H 4450 3050 40  0000 C CNN
F 2 "~" H 4450 3150 60  0000 C CNN
F 3 "~" H 4450 3150 60  0000 C CNN
	1    4450 3150
	1    0    0    -1  
$EndComp
$Comp
L C C36
U 1 1 5519ACB8
P 4900 3450
F 0 "C36" H 4900 3550 40  0000 L CNN
F 1 "47n" H 4906 3365 40  0000 L CNN
F 2 "~" H 4938 3300 30  0000 C CNN
F 3 "~" H 4900 3450 60  0000 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
$Comp
L R R38
U 1 1 5519ACBE
P 5150 3450
F 0 "R38" V 5230 3450 40  0000 C CNN
F 1 "47k" V 5157 3451 40  0000 C CNN
F 2 "~" V 5080 3450 30  0000 C CNN
F 3 "~" H 5150 3450 30  0000 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L C C39
U 1 1 5519ACC4
P 5450 3150
F 0 "C39" H 5450 3250 40  0000 L CNN
F 1 "100n" H 5456 3065 40  0000 L CNN
F 2 "~" H 5488 3000 30  0000 C CNN
F 3 "~" H 5450 3150 60  0000 C CNN
	1    5450 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R41
U 1 1 5519ACCA
P 6000 3150
F 0 "R41" V 6080 3150 40  0000 C CNN
F 1 "47k" V 6007 3151 40  0000 C CNN
F 2 "~" V 5930 3150 30  0000 C CNN
F 3 "~" H 6000 3150 30  0000 C CNN
	1    6000 3150
	0    -1   -1   0   
$EndComp
$Comp
L C C42
U 1 1 5519ACD0
P 6350 3450
F 0 "C42" H 6350 3550 40  0000 L CNN
F 1 "1n" H 6356 3365 40  0000 L CNN
F 2 "~" H 6388 3300 30  0000 C CNN
F 3 "~" H 6350 3450 60  0000 C CNN
	1    6350 3450
	1    0    0    -1  
$EndComp
$Comp
L TL074 U3
U 4 1 5519ACD6
P 3650 4600
F 0 "U3" H 3700 4800 60  0000 C CNN
F 1 "TL074" H 3800 4400 50  0000 C CNN
F 2 "" H 3650 4600 60  0000 C CNN
F 3 "" H 3650 4600 60  0000 C CNN
	4    3650 4600
	1    0    0    1   
$EndComp
$Comp
L R R34
U 1 1 5519ACDC
P 2800 4500
F 0 "R34" V 2880 4500 40  0000 C CNN
F 1 "1k" V 2807 4501 40  0000 C CNN
F 2 "~" V 2730 4500 30  0000 C CNN
F 3 "~" H 2800 4500 30  0000 C CNN
	1    2800 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R36
U 1 1 5519ACE2
P 3550 3950
F 0 "R36" V 3630 3950 40  0000 C CNN
F 1 "10k" V 3557 3951 40  0000 C CNN
F 2 "~" V 3480 3950 30  0000 C CNN
F 3 "~" H 3550 3950 30  0000 C CNN
	1    3550 3950
	0    -1   -1   0   
$EndComp
$Comp
L DIODESCH D14
U 1 1 5519ACE8
P 4450 4600
F 0 "D14" H 4450 4700 40  0000 C CNN
F 1 "DIODESCH" H 4450 4500 40  0000 C CNN
F 2 "~" H 4450 4600 60  0000 C CNN
F 3 "~" H 4450 4600 60  0000 C CNN
	1    4450 4600
	1    0    0    -1  
$EndComp
$Comp
L C C37
U 1 1 5519ACEE
P 4900 4900
F 0 "C37" H 4900 5000 40  0000 L CNN
F 1 "47n" H 4906 4815 40  0000 L CNN
F 2 "~" H 4938 4750 30  0000 C CNN
F 3 "~" H 4900 4900 60  0000 C CNN
	1    4900 4900
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 5519ACF4
P 5150 4900
F 0 "R39" V 5230 4900 40  0000 C CNN
F 1 "47k" V 5157 4901 40  0000 C CNN
F 2 "~" V 5080 4900 30  0000 C CNN
F 3 "~" H 5150 4900 30  0000 C CNN
	1    5150 4900
	1    0    0    -1  
$EndComp
$Comp
L C C40
U 1 1 5519ACFA
P 5450 4600
F 0 "C40" H 5450 4700 40  0000 L CNN
F 1 "100n" H 5456 4515 40  0000 L CNN
F 2 "~" H 5488 4450 30  0000 C CNN
F 3 "~" H 5450 4600 60  0000 C CNN
	1    5450 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R42
U 1 1 5519AD00
P 6000 4600
F 0 "R42" V 6080 4600 40  0000 C CNN
F 1 "47k" V 6007 4601 40  0000 C CNN
F 2 "~" V 5930 4600 30  0000 C CNN
F 3 "~" H 6000 4600 30  0000 C CNN
	1    6000 4600
	0    -1   -1   0   
$EndComp
$Comp
L C C43
U 1 1 5519AD06
P 6350 4900
F 0 "C43" H 6350 5000 40  0000 L CNN
F 1 "1n" H 6356 4815 40  0000 L CNN
F 2 "~" H 6388 4750 30  0000 C CNN
F 3 "~" H 6350 4900 60  0000 C CNN
	1    6350 4900
	1    0    0    -1  
$EndComp
$Comp
L ATTINY45-P IC4
U 1 1 5519AD0C
P 9100 1950
F 0 "IC4" H 8050 2350 60  0000 C CNN
F 1 "ATTINY45-P" H 9950 1550 60  0000 C CNN
F 2 "DIP8" H 8050 1550 60  0001 C CNN
F 3 "" H 9100 1950 60  0000 C CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
$Comp
L C C44
U 1 1 5519AD12
P 10500 1950
F 0 "C44" H 10500 2050 40  0000 L CNN
F 1 "100n" H 10506 1865 40  0000 L CNN
F 2 "~" H 10538 1800 30  0000 C CNN
F 3 "~" H 10500 1950 60  0000 C CNN
	1    10500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 2050 1650
Wire Wire Line
	2550 1650 2650 1650
Wire Wire Line
	3050 1650 3150 1650
Connection ~ 3100 1650
Wire Wire Line
	4150 1750 4300 1750
Wire Wire Line
	3550 1300 3550 1350
Wire Wire Line
	3550 2200 3550 2150
Wire Wire Line
	4200 1050 3750 1050
Connection ~ 4200 1050
Wire Wire Line
	3350 1050 3100 1050
Connection ~ 3100 1050
Wire Wire Line
	4200 800  4200 1750
Wire Wire Line
	3800 800  4200 800 
Wire Wire Line
	3300 800  3100 800 
Wire Wire Line
	3100 800  3100 1650
Wire Wire Line
	4800 1750 4900 1750
Wire Wire Line
	5300 1750 5400 1750
Connection ~ 5350 1750
Wire Wire Line
	6450 1850 6400 1850
Wire Wire Line
	5400 1950 5300 1950
Wire Wire Line
	5800 1400 5800 1450
Wire Wire Line
	5800 2300 5800 2250
Wire Wire Line
	6450 1150 6000 1150
Connection ~ 6450 1150
Wire Wire Line
	5600 1150 5350 1150
Connection ~ 5350 1150
Wire Wire Line
	6450 900  6450 2400
Wire Wire Line
	6050 900  6450 900 
Wire Wire Line
	5550 900  5350 900 
Wire Wire Line
	5350 900  5350 1750
Connection ~ 4200 1750
Wire Wire Line
	3550 2700 3550 2750
Wire Wire Line
	3550 3600 3550 3550
Wire Wire Line
	4150 3150 4250 3150
Wire Wire Line
	4650 3150 5250 3150
Wire Wire Line
	4700 3150 4700 2500
Wire Wire Line
	4700 2500 3150 2500
Wire Wire Line
	3150 2500 3150 3050
Wire Wire Line
	6450 2400 3050 2400
Wire Wire Line
	3050 2400 3050 3250
Wire Wire Line
	2550 3250 3150 3250
Connection ~ 6450 1850
Connection ~ 4700 3150
Wire Wire Line
	4900 3250 4900 3150
Connection ~ 4900 3150
Wire Wire Line
	5150 3200 5150 3150
Connection ~ 5150 3150
Wire Wire Line
	5650 3150 5750 3150
Wire Wire Line
	6350 3250 6350 3150
Wire Wire Line
	6250 3150 7100 3150
Wire Wire Line
	4900 3650 4900 3750
Wire Wire Line
	4900 3750 6350 3750
Wire Wire Line
	5150 3750 5150 3700
Wire Wire Line
	6350 3750 6350 3650
Connection ~ 5150 3750
Wire Wire Line
	5550 3850 5550 3750
Connection ~ 5550 3750
Wire Wire Line
	3550 4150 3550 4200
Wire Wire Line
	3550 5050 3550 5000
Wire Wire Line
	4150 4600 4250 4600
Wire Wire Line
	4200 4600 4200 3950
Wire Wire Line
	4200 3950 3800 3950
Wire Wire Line
	3300 3950 3100 3950
Wire Wire Line
	3100 3950 3100 4500
Wire Wire Line
	3050 4500 3150 4500
Connection ~ 3100 4500
Wire Wire Line
	2550 3250 2550 4500
Connection ~ 3050 3250
Connection ~ 4200 4600
Wire Wire Line
	3050 4700 3150 4700
Wire Wire Line
	4900 4700 4900 4600
Connection ~ 4900 4600
Wire Wire Line
	5150 4600 5150 4650
Connection ~ 5150 4600
Wire Wire Line
	5650 4600 5750 4600
Wire Wire Line
	6350 4700 6350 4600
Wire Wire Line
	6250 4600 7300 4600
Wire Wire Line
	4900 5100 4900 5200
Wire Wire Line
	4900 5200 6350 5200
Wire Wire Line
	5150 5200 5150 5150
Wire Wire Line
	6350 5200 6350 5100
Connection ~ 5150 5200
Wire Wire Line
	5550 5300 5550 5200
Connection ~ 5550 5200
Wire Wire Line
	4650 4600 5250 4600
Wire Wire Line
	10450 1700 10550 1700
Wire Wire Line
	10450 2200 10550 2200
Wire Wire Line
	7100 3150 7100 2100
Wire Wire Line
	7100 2100 7750 2100
Connection ~ 6350 3150
Wire Wire Line
	7300 4600 7300 2000
Wire Wire Line
	7300 2000 7750 2000
Connection ~ 6350 4600
Wire Wire Line
	10500 1750 10500 1700
Connection ~ 10500 1700
Wire Wire Line
	10500 2150 10500 2200
Connection ~ 10500 2200
$Comp
L DIODESCH D15
U 1 1 5519AD79
P 5700 3450
F 0 "D15" H 5700 3550 40  0000 C CNN
F 1 "DIODESCH" H 5700 3350 40  0000 C CNN
F 2 "~" H 5700 3450 60  0000 C CNN
F 3 "~" H 5700 3450 60  0000 C CNN
	1    5700 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 3150 5700 3250
Connection ~ 5700 3150
Wire Wire Line
	5700 3650 5700 3750
Connection ~ 5700 3750
$Comp
L DIODESCH D16
U 1 1 5519AD83
P 5700 4900
F 0 "D16" H 5700 5000 40  0000 C CNN
F 1 "DIODESCH" H 5700 4800 40  0000 C CNN
F 2 "~" H 5700 4900 60  0000 C CNN
F 3 "~" H 5700 4900 60  0000 C CNN
	1    5700 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 4600 5700 4700
Connection ~ 5700 4600
Wire Wire Line
	5700 5100 5700 5200
Connection ~ 5700 5200
Text HLabel 1050 1650 0    60   Input ~ 0
6V
Wire Wire Line
	1050 1650 1150 1650
Text HLabel 3050 1850 0    60   Input ~ 0
6V
Text HLabel 5300 1950 0    60   Input ~ 0
6V
Text HLabel 3050 4700 0    60   Input ~ 0
6V
Wire Wire Line
	3050 1850 3150 1850
Text HLabel 5550 5300 3    60   Input ~ 0
GND
Text HLabel 3550 5050 3    60   Input ~ 0
GND
Text HLabel 3550 3600 3    60   Input ~ 0
GND
Text HLabel 5550 3850 3    60   Input ~ 0
GND
Text HLabel 3550 2200 3    60   Input ~ 0
GND
Text HLabel 5800 2300 3    60   Input ~ 0
GND
Text HLabel 10550 2200 2    60   Input ~ 0
GND
Text HLabel 10550 1700 2    60   Input ~ 0
5V
Text HLabel 3550 1300 1    60   Input ~ 0
12V
Text HLabel 5800 1400 1    60   Input ~ 0
12V
Text HLabel 3550 2700 1    60   Input ~ 0
12V
Text HLabel 3550 4150 1    60   Input ~ 0
12V
Text HLabel 7650 1700 0    60   Input ~ 0
Trigger
Wire Wire Line
	7650 1700 7750 1700
$Comp
L R R80
U 1 1 5525AE4D
P 7400 1800
F 0 "R80" V 7480 1800 40  0000 C CNN
F 1 "10k" V 7407 1801 40  0000 C CNN
F 2 "~" V 7330 1800 30  0000 C CNN
F 3 "~" H 7400 1800 30  0000 C CNN
	1    7400 1800
	0    1    1    0   
$EndComp
$Comp
L LED D32
U 1 1 5525AE53
P 6850 1800
F 0 "D32" H 6850 1900 50  0000 C CNN
F 1 "LED" H 6850 1700 50  0000 C CNN
F 2 "~" H 6850 1800 60  0000 C CNN
F 3 "~" H 6850 1800 60  0000 C CNN
	1    6850 1800
	-1   0    0    1   
$EndComp
Text HLabel 6600 1850 3    60   Input ~ 0
GND
Wire Wire Line
	7750 1800 7650 1800
Wire Wire Line
	7150 1800 7050 1800
Wire Wire Line
	6650 1800 6600 1800
Wire Wire Line
	6600 1800 6600 1850
$EndSCHEMATC
