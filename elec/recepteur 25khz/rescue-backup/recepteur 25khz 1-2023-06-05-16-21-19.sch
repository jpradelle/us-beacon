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
Sheet 1 12
Title ""
Date "27 apr 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4350 1200 750  400 
U 551726D6
F0 "receiver_25_1-1" 50
F1 "receiver_25_1.sch" 50
F2 "6V" I L 4350 1350 60 
F3 "GND" I L 4350 1550 60 
F4 "5V" I L 4350 1450 60 
F5 "12V" I L 4350 1250 60 
F6 "Trigger" I R 5100 1400 60 
$EndSheet
$Sheet
S 4350 1900 750  400 
U 55172BC0
F0 "receiver_25_1-2" 50
F1 "receiver_25_2.sch" 50
F2 "6V" I L 4350 2050 60 
F3 "GND" I L 4350 2250 60 
F4 "5V" I L 4350 2150 60 
F5 "12V" I L 4350 1950 60 
F6 "Trigger" I R 5100 2100 60 
$EndSheet
$Sheet
S 850  1200 550  500 
U 55174B19
F0 "receiver_power_1" 50
F1 "receiver_power_1.sch" 50
F2 "GND" O R 1400 1650 60 
F3 "5V" O R 1400 1450 60 
F4 "6V" O R 1400 1350 60 
F5 "12V" O R 1400 1250 60 
F6 "3.3V" O R 1400 1550 60 
$EndSheet
$Sheet
S 4000 3650 1550 2000
U 55176B58
F0 "rf" 50
F1 "rf.sch" 50
F2 "trigger_25_1-1" I L 4000 3700 60 
F3 "trigger_25_1-2" I L 4000 3800 60 
F4 "trigger_25_2-1" I L 4000 3900 60 
F5 "trigger_25_2-2" I L 4000 4000 60 
F6 "trigger_25_3-1" I L 4000 4100 60 
F7 "trigger_25_3-2" I L 4000 4200 60 
F8 "trigger_25_3-3" I L 4000 4300 60 
F9 "trigger_32_1-1" I L 4000 4550 60 
F10 "trigger_32_1-2" I L 4000 4650 60 
F11 "trigger_32_2-1" I L 4000 4750 60 
F12 "trigger_32_2-2" I L 4000 4850 60 
F13 "trigger_32_3-1" I L 4000 4950 60 
F14 "trigger_32_3-2" I L 4000 5050 60 
F15 "trigger_32_3-3" I L 4000 5150 60 
F16 "5V" I L 4000 5350 60 
F17 "3.3V" I L 4000 5450 60 
F18 "GND" I L 4000 5550 60 
$EndSheet
$Comp
L CONN_6 P4
U 1 1 55184019
P 4650 600
F 0 "P4" V 4600 600 60  0000 C CNN
F 1 "CONN_6" V 4700 600 60  0000 C CNN
F 2 "" H 4650 600 60  0000 C CNN
F 3 "" H 4650 600 60  0000 C CNN
	1    4650 600 
	0    -1   -1   0   
$EndComp
$Sheet
S 9600 1650 750  400 
U 55195A3B
F0 "receiver_25_2-1" 50
F1 "receiver_25_2-1.sch" 50
F2 "6V" I L 9600 1800 60 
F3 "GND" I L 9600 2000 60 
F4 "5V" I L 9600 1900 60 
F5 "12V" I L 9600 1700 60 
F6 "Trigger" I R 10350 1850 60 
$EndSheet
$Sheet
S 9600 2350 750  400 
U 5519AC24
F0 "receiver_25_2-2" 50
F1 "receiver_25_2-2.sch" 50
F2 "6V" I L 9600 2500 60 
F3 "GND" I L 9600 2700 60 
F4 "5V" I L 9600 2600 60 
F5 "12V" I L 9600 2400 60 
F6 "Trigger" I R 10350 2550 60 
$EndSheet
$Comp
L CONN_6 P5
U 1 1 5519B5F6
P 9900 950
F 0 "P5" V 9850 950 60  0000 C CNN
F 1 "CONN_6" V 9950 950 60  0000 C CNN
F 2 "" H 9900 950 60  0000 C CNN
F 3 "" H 9900 950 60  0000 C CNN
	1    9900 950 
	0    -1   -1   0   
$EndComp
$Sheet
S 6600 1450 600  400 
U 5519A62B
F0 "receiver_power_2" 50
F1 "receiver_power_2.sch" 50
F2 "6V" O R 7200 1600 60 
F3 "12V" O R 7200 1500 60 
F4 "GND" O R 7200 1800 60 
F5 "5V" O R 7200 1700 60 
$EndSheet
$Comp
L CONN_6 P8
U 1 1 5519AB63
P 7900 1100
F 0 "P8" V 7850 1100 60  0000 C CNN
F 1 "CONN_6" V 7950 1100 60  0000 C CNN
F 2 "" H 7900 1100 60  0000 C CNN
F 3 "" H 7900 1100 60  0000 C CNN
	1    7900 1100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6 P10
U 1 1 551A19C9
P 7900 2350
F 0 "P10" V 7850 2350 60  0000 C CNN
F 1 "CONN_6" V 7950 2350 60  0000 C CNN
F 2 "" H 7900 2350 60  0000 C CNN
F 3 "" H 7900 2350 60  0000 C CNN
	1    7900 2350
	0    -1   1    0   
$EndComp
$Sheet
S 9600 3950 750  400 
U 551AFB56
F0 "receiver_25_3-1" 50
F1 "receiver_25_3-1.sch" 50
F2 "6V" I L 9600 4100 60 
F3 "GND" I L 9600 4300 60 
F4 "5V" I L 9600 4200 60 
F5 "12V" I L 9600 4000 60 
F6 "Trigger" I R 10350 4150 60 
$EndSheet
$Comp
L CONN_7 P11
U 1 1 551B3A29
P 10000 3200
F 0 "P11" V 9970 3200 60  0000 C CNN
F 1 "CONN_7" V 10070 3200 60  0000 C CNN
F 2 "" H 10000 3200 60  0000 C CNN
F 3 "" H 10000 3200 60  0000 C CNN
	1    10000 3200
	0    -1   -1   0   
$EndComp
$Sheet
S 9600 4550 750  400 
U 551C0F76
F0 "receiver_25_3-2" 50
F1 "receiver_25_3-2.sch" 50
F2 "6V" I L 9600 4700 60 
F3 "GND" I L 9600 4900 60 
F4 "5V" I L 9600 4800 60 
F5 "12V" I L 9600 4600 60 
F6 "Trigger" I R 10350 4750 60 
$EndSheet
$Sheet
S 9600 5250 750  400 
U 551C3EAD
F0 "receiver_25_3-3" 50
F1 "receiver_25_3-3.sch" 50
F2 "6V" I L 9600 5400 60 
F3 "GND" I L 9600 5600 60 
F4 "5V" I L 9600 5500 60 
F5 "12V" I L 9600 5300 60 
F6 "Trigger" I R 10350 5450 60 
$EndSheet
$Sheet
S 6600 4050 600  400 
U 551CD6E9
F0 "receiver_power_3" 50
F1 "receiver_power_3.sch" 50
F2 "6V" O R 7200 4200 60 
F3 "12V" O R 7200 4100 60 
F4 "GND" O R 7200 4400 60 
F5 "5V" O R 7200 4300 60 
$EndSheet
$Comp
L CONN_7 P14
U 1 1 551CE092
P 7950 3700
F 0 "P14" V 7920 3700 60  0000 C CNN
F 1 "CONN_7" V 8020 3700 60  0000 C CNN
F 2 "" H 7950 3700 60  0000 C CNN
F 3 "" H 7950 3700 60  0000 C CNN
	1    7950 3700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_7 P15
U 1 1 551CE098
P 7950 4950
F 0 "P15" V 7920 4950 60  0000 C CNN
F 1 "CONN_7" V 8020 4950 60  0000 C CNN
F 2 "" H 7950 4950 60  0000 C CNN
F 3 "" H 7950 4950 60  0000 C CNN
	1    7950 4950
	0    -1   1    0   
$EndComp
$Comp
L CONN_5 P9
U 1 1 551D2F68
P 8700 1700
F 0 "P9" V 8650 1700 50  0000 C CNN
F 1 "CONN_5" V 8750 1700 50  0000 C CNN
F 2 "" H 8700 1700 60  0000 C CNN
F 3 "" H 8700 1700 60  0000 C CNN
	1    8700 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_7 P16
U 1 1 551D5122
P 8750 4400
F 0 "P16" V 8720 4400 60  0000 C CNN
F 1 "CONN_7" V 8820 4400 60  0000 C CNN
F 2 "" H 8750 4400 60  0000 C CNN
F 3 "" H 8750 4400 60  0000 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P1
U 1 1 552FBA7F
P 2150 800
F 0 "P1" V 2100 800 60  0000 C CNN
F 1 "CONN_6" V 2200 800 60  0000 C CNN
F 2 "" H 2150 800 60  0000 C CNN
F 3 "" H 2150 800 60  0000 C CNN
	1    2150 800 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_6 P17
U 1 1 552FBC43
P 2150 2150
F 0 "P17" V 2100 2150 60  0000 C CNN
F 1 "CONN_6" V 2200 2150 60  0000 C CNN
F 2 "" H 2150 2150 60  0000 C CNN
F 3 "" H 2150 2150 60  0000 C CNN
	1    2150 2150
	0    -1   1    0   
$EndComp
$Comp
L CONN_7 P18
U 1 1 55302B58
P 3000 1400
F 0 "P18" V 2970 1400 60  0000 C CNN
F 1 "CONN_7" V 3070 1400 60  0000 C CNN
F 2 "" H 3000 1400 60  0000 C CNN
F 3 "" H 3000 1400 60  0000 C CNN
	1    3000 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_7 P20
U 1 1 553C3DED
P 1950 3600
F 0 "P20" V 1920 3600 60  0000 C CNN
F 1 "CONN_7" V 2020 3600 60  0000 C CNN
F 2 "" H 1950 3600 60  0000 C CNN
F 3 "" H 1950 3600 60  0000 C CNN
	1    1950 3600
	-1   0    0    -1  
$EndComp
$Comp
L CONN_5 P19
U 1 1 553C3DF3
P 1900 4650
F 0 "P19" V 1850 4650 50  0000 C CNN
F 1 "CONN_5" V 1950 4650 50  0000 C CNN
F 2 "" H 1900 4650 60  0000 C CNN
F 3 "" H 1900 4650 60  0000 C CNN
	1    1900 4650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_7 P21
U 1 1 553C3DF9
P 1950 5550
F 0 "P21" V 1920 5550 60  0000 C CNN
F 1 "CONN_7" V 2020 5550 60  0000 C CNN
F 2 "" H 1950 5550 60  0000 C CNN
F 3 "" H 1950 5550 60  0000 C CNN
	1    1950 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 950  3850 1950
Wire Wire Line
	3850 1250 4350 1250
Wire Wire Line
	3900 1000 3900 2050
Wire Wire Line
	3900 1350 4350 1350
Wire Wire Line
	3950 1050 3950 2150
Wire Wire Line
	3950 1450 4350 1450
Wire Wire Line
	4000 1550 4350 1550
Wire Wire Line
	3850 1950 4350 1950
Wire Wire Line
	3900 2050 4350 2050
Wire Wire Line
	3950 2150 4350 2150
Wire Wire Line
	4000 2250 4350 2250
Wire Wire Line
	1400 1250 1900 1250
Wire Wire Line
	1900 1150 1900 1800
Wire Wire Line
	1400 1350 2000 1350
Wire Wire Line
	2000 1150 2000 1800
Wire Wire Line
	2100 1150 2100 1800
Wire Wire Line
	2200 1150 2200 1800
Wire Wire Line
	4400 950  3850 950 
Connection ~ 3850 1250
Wire Wire Line
	4500 950  4500 1000
Wire Wire Line
	4500 1000 3900 1000
Connection ~ 3900 1350
Wire Wire Line
	4600 950  4600 1050
Wire Wire Line
	4600 1050 3950 1050
Connection ~ 3950 1450
Wire Wire Line
	4700 950  4700 1100
Wire Wire Line
	4700 1100 4000 1100
Connection ~ 4000 1550
Wire Wire Line
	4000 1100 4000 2250
Wire Wire Line
	4800 950  4800 1100
Wire Wire Line
	4800 1100 5150 1100
Wire Wire Line
	5150 1100 5150 1400
Wire Wire Line
	5150 1400 5100 1400
Wire Wire Line
	4900 950  4900 1050
Wire Wire Line
	4900 1050 5200 1050
Wire Wire Line
	5200 1050 5200 2100
Wire Wire Line
	5200 2100 5100 2100
Wire Wire Line
	9200 2700 9600 2700
Wire Wire Line
	9200 1450 9200 2700
Wire Wire Line
	9200 2000 9600 2000
Wire Wire Line
	9600 1900 9150 1900
Wire Wire Line
	9150 1400 9150 2600
Wire Wire Line
	9150 2600 9600 2600
Wire Wire Line
	9100 2500 9600 2500
Wire Wire Line
	9100 1350 9100 2500
Wire Wire Line
	9100 1800 9600 1800
Wire Wire Line
	9600 1700 9050 1700
Wire Wire Line
	9050 1300 9050 2400
Wire Wire Line
	9050 2400 9600 2400
Wire Wire Line
	10350 1850 10400 1850
Wire Wire Line
	10400 1850 10400 1550
Wire Wire Line
	10400 1550 10050 1550
Wire Wire Line
	10050 1550 10050 1300
Wire Wire Line
	10150 1300 10150 1500
Wire Wire Line
	10150 1500 10450 1500
Wire Wire Line
	10450 1500 10450 2550
Wire Wire Line
	10450 2550 10350 2550
Wire Wire Line
	9650 1300 9050 1300
Connection ~ 9050 1700
Wire Wire Line
	9750 1300 9750 1350
Wire Wire Line
	9750 1350 9100 1350
Connection ~ 9100 1800
Wire Wire Line
	9850 1300 9850 1400
Wire Wire Line
	9850 1400 9150 1400
Connection ~ 9150 1900
Wire Wire Line
	9950 1300 9950 1450
Wire Wire Line
	9950 1450 9200 1450
Connection ~ 9200 2000
Wire Wire Line
	7200 1500 7650 1500
Wire Wire Line
	7650 1450 7650 2000
Wire Wire Line
	7200 1600 7750 1600
Wire Wire Line
	7750 1450 7750 2000
Wire Wire Line
	7200 1700 7850 1700
Wire Wire Line
	7850 1450 7850 2000
Wire Wire Line
	7200 1800 7950 1800
Wire Wire Line
	7950 1450 7950 2000
Wire Wire Line
	8050 1450 8050 1500
Wire Wire Line
	8050 1500 8300 1500
Wire Wire Line
	8150 1450 8150 1600
Wire Wire Line
	8150 1600 8300 1600
Connection ~ 7650 1500
Connection ~ 7750 1600
Connection ~ 7850 1700
Connection ~ 7950 1800
Wire Wire Line
	8050 2000 8050 1700
Wire Wire Line
	8050 1700 8300 1700
Wire Wire Line
	8150 2000 8150 1800
Wire Wire Line
	8150 1800 8300 1800
Wire Wire Line
	9700 3550 9050 3550
Wire Wire Line
	9050 3550 9050 5300
Wire Wire Line
	9050 4000 9600 4000
Wire Wire Line
	9800 3550 9800 3600
Wire Wire Line
	9800 3600 9100 3600
Wire Wire Line
	9100 3600 9100 5400
Wire Wire Line
	9100 4100 9600 4100
Wire Wire Line
	9900 3550 9900 3650
Wire Wire Line
	9900 3650 9150 3650
Wire Wire Line
	9150 3650 9150 5500
Wire Wire Line
	9150 4200 9600 4200
Wire Wire Line
	10000 3550 10000 3700
Wire Wire Line
	10000 3700 9200 3700
Wire Wire Line
	9200 3700 9200 5600
Wire Wire Line
	9200 4300 9600 4300
Wire Wire Line
	10350 4150 10400 4150
Wire Wire Line
	10400 4150 10400 3850
Wire Wire Line
	10400 3850 10100 3850
Wire Wire Line
	10100 3850 10100 3550
Wire Wire Line
	10350 4750 10450 4750
Wire Wire Line
	10450 4750 10450 3800
Wire Wire Line
	10450 3800 10200 3800
Wire Wire Line
	10200 3800 10200 3550
Wire Wire Line
	9050 4600 9600 4600
Connection ~ 9050 4000
Wire Wire Line
	9100 4700 9600 4700
Connection ~ 9100 4100
Wire Wire Line
	9150 4800 9600 4800
Connection ~ 9150 4200
Wire Wire Line
	9200 4900 9600 4900
Connection ~ 9200 4300
Wire Wire Line
	10350 5450 10500 5450
Wire Wire Line
	10500 5450 10500 3750
Wire Wire Line
	10500 3750 10300 3750
Wire Wire Line
	10300 3750 10300 3550
Wire Wire Line
	9200 5600 9600 5600
Connection ~ 9200 4900
Wire Wire Line
	9150 5500 9600 5500
Connection ~ 9150 4800
Wire Wire Line
	9100 5400 9600 5400
Connection ~ 9100 4700
Wire Wire Line
	9050 5300 9600 5300
Connection ~ 9050 4600
Wire Wire Line
	7200 4100 7650 4100
Wire Wire Line
	7650 4050 7650 4600
Wire Wire Line
	7200 4200 7750 4200
Wire Wire Line
	7750 4050 7750 4600
Wire Wire Line
	7200 4300 7850 4300
Wire Wire Line
	7850 4050 7850 4600
Wire Wire Line
	7200 4400 7950 4400
Wire Wire Line
	7950 4050 7950 4600
Connection ~ 7650 4100
Connection ~ 7750 4200
Connection ~ 7850 4300
Connection ~ 7950 4400
Wire Wire Line
	8050 4050 8050 4100
Wire Wire Line
	8050 4100 8400 4100
Wire Wire Line
	8150 4050 8150 4200
Wire Wire Line
	8150 4200 8400 4200
Wire Wire Line
	8250 4050 8250 4300
Wire Wire Line
	8250 4300 8400 4300
Wire Wire Line
	8050 4600 8050 4400
Wire Wire Line
	8050 4400 8400 4400
Wire Wire Line
	8150 4600 8150 4500
Wire Wire Line
	8150 4500 8400 4500
Wire Wire Line
	8250 4600 8400 4600
Wire Wire Line
	8300 1900 7950 1900
Connection ~ 7950 1900
Wire Wire Line
	8400 4700 8350 4700
Wire Wire Line
	8350 4700 8350 4450
Wire Wire Line
	8350 4450 7950 4450
Connection ~ 7950 4450
Connection ~ 1900 1250
Connection ~ 2000 1350
Connection ~ 2100 1450
Wire Wire Line
	1400 1450 2150 1450
Wire Wire Line
	1400 1650 2500 1650
Connection ~ 2200 1650
Wire Wire Line
	1400 1550 2450 1550
Wire Wire Line
	2450 1550 2450 1200
Wire Wire Line
	2450 1200 2650 1200
Wire Wire Line
	2500 1650 2500 1300
Wire Wire Line
	2500 1300 2650 1300
Wire Wire Line
	2300 1150 2300 1400
Wire Wire Line
	2300 1400 2650 1400
Wire Wire Line
	2400 1150 2400 1500
Wire Wire Line
	2400 1500 2650 1500
Wire Wire Line
	2300 1800 2300 1600
Wire Wire Line
	2300 1600 2650 1600
Wire Wire Line
	2400 1800 2400 1700
Wire Wire Line
	2400 1700 2650 1700
Wire Wire Line
	2650 1100 2150 1100
Wire Wire Line
	2150 1100 2150 1450
Wire Wire Line
	2300 3400 2600 3400
Wire Wire Line
	2600 3400 2600 5450
Wire Wire Line
	2600 5450 4000 5450
Wire Wire Line
	2300 3500 2550 3500
Wire Wire Line
	2550 3500 2550 5850
Wire Wire Line
	2550 5550 4000 5550
Wire Wire Line
	2300 3300 2650 3300
Wire Wire Line
	2650 3300 2650 5350
Wire Wire Line
	2650 5350 4000 5350
Wire Wire Line
	2300 3600 3850 3600
Wire Wire Line
	3850 3600 3850 3700
Wire Wire Line
	3850 3700 4000 3700
Wire Wire Line
	2300 3700 3800 3700
Wire Wire Line
	3800 3700 3800 3800
Wire Wire Line
	3800 3800 4000 3800
Wire Wire Line
	2300 3800 3250 3800
Wire Wire Line
	3250 3800 3250 4550
Wire Wire Line
	3250 4550 4000 4550
Wire Wire Line
	2300 3900 3200 3900
Wire Wire Line
	3200 3900 3200 4650
Wire Wire Line
	3200 4650 4000 4650
Wire Wire Line
	2300 4450 3300 4450
Wire Wire Line
	3300 4450 3300 3900
Wire Wire Line
	3300 3900 4000 3900
Wire Wire Line
	2300 4550 3150 4550
Wire Wire Line
	3150 4550 3150 4000
Wire Wire Line
	3150 4000 4000 4000
Wire Wire Line
	2300 4650 3150 4650
Wire Wire Line
	3150 4650 3150 4750
Wire Wire Line
	3150 4750 4000 4750
Wire Wire Line
	2300 4750 3100 4750
Wire Wire Line
	3100 4750 3100 4850
Wire Wire Line
	3100 4850 4000 4850
Wire Wire Line
	2300 4850 2550 4850
Connection ~ 2550 4850
Wire Wire Line
	2300 5250 3350 5250
Wire Wire Line
	3350 5250 3350 4100
Wire Wire Line
	3350 4100 4000 4100
Wire Wire Line
	2300 5350 2500 5350
Wire Wire Line
	2500 5350 2500 4200
Wire Wire Line
	2500 4200 4000 4200
Wire Wire Line
	2300 5450 2450 5450
Wire Wire Line
	2450 5450 2450 4300
Wire Wire Line
	2450 4300 4000 4300
Wire Wire Line
	2300 5550 2400 5550
Wire Wire Line
	2400 5550 2400 4950
Wire Wire Line
	2400 4950 4000 4950
Wire Wire Line
	2300 5650 3400 5650
Wire Wire Line
	3400 5650 3400 5050
Wire Wire Line
	3400 5050 4000 5050
Wire Wire Line
	2300 5750 3450 5750
Wire Wire Line
	3450 5750 3450 5150
Wire Wire Line
	3450 5150 4000 5150
Wire Wire Line
	2550 5850 2300 5850
Connection ~ 2550 5550
$EndSCHEMATC
