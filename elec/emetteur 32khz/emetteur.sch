EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "9 apr 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L emetteur-rescue:ATTINY45-P IC1
U 1 1 550899B8
P 7600 2050
F 0 "IC1" H 6550 2450 60  0000 C CNN
F 1 "ATTINY45-P" H 8450 1650 60  0000 C CNN
F 2 "DIP8" H 6550 1650 60  0001 C CNN
F 3 "" H 7600 2050 60  0000 C CNN
	1    7600 2050
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:VCC #PWR12
U 1 1 550899FE
P 8400 750
F 0 "#PWR12" H 8400 850 30  0001 C CNN
F 1 "VCC" H 8400 850 30  0000 C CNN
F 2 "" H 8400 750 60  0000 C CNN
F 3 "" H 8400 750 60  0000 C CNN
	1    8400 750 
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:GND #PWR13
U 1 1 55089A0D
P 9000 2400
F 0 "#PWR13" H 9000 2400 30  0001 C CNN
F 1 "GND" H 9000 2330 30  0001 C CNN
F 2 "" H 9000 2400 60  0000 C CNN
F 3 "" H 9000 2400 60  0000 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3904 Q1
U 1 1 55089D2D
P 2450 1500
F 0 "Q1" H 2600 1575 40  0000 C CNN
F 1 "2N3904" H 2575 1500 40  0000 L CNN
F 2 "" H 2450 1500 60  0000 C CNN
F 3 "" H 2450 1500 60  0000 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3904 Q4
U 1 1 55089D3C
P 3250 2200
F 0 "Q4" H 3400 2275 40  0000 C CNN
F 1 "2N3904" H 3375 2200 40  0000 L CNN
F 2 "" H 3250 2200 60  0000 C CNN
F 3 "" H 3250 2200 60  0000 C CNN
	1    3250 2200
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q3
U 1 1 55089D4B
P 3250 1500
F 0 "Q3" H 3375 1550 40  0000 L CNN
F 1 "2N3906" H 3375 1475 40  0000 L CNN
F 2 "" H 3250 1500 60  0000 C CNN
F 3 "" H 3250 1500 60  0000 C CNN
	1    3250 1500
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q2
U 1 1 55089D5A
P 2450 2200
F 0 "Q2" H 2575 2250 40  0000 L CNN
F 1 "2N3906" H 2575 2175 40  0000 L CNN
F 2 "" H 2450 2200 60  0000 C CNN
F 3 "" H 2450 2200 60  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:R R1
U 1 1 55089EEE
P 2000 1500
F 0 "R1" V 2080 1500 40  0000 C CNN
F 1 "22k" V 2007 1501 40  0000 C CNN
F 2 "~" V 1930 1500 30  0000 C CNN
F 3 "~" H 2000 1500 30  0000 C CNN
	1    2000 1500
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R2
U 1 1 55089F98
P 2000 2200
F 0 "R2" V 2080 2200 40  0000 C CNN
F 1 "22k" V 2007 2201 40  0000 C CNN
F 2 "~" V 1930 2200 30  0000 C CNN
F 3 "~" H 2000 2200 30  0000 C CNN
	1    2000 2200
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R5
U 1 1 55089F9E
P 3750 2200
F 0 "R5" V 3830 2200 40  0000 C CNN
F 1 "22k" V 3757 2201 40  0000 C CNN
F 2 "~" V 3680 2200 30  0000 C CNN
F 3 "~" H 3750 2200 30  0000 C CNN
	1    3750 2200
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R4
U 1 1 55089FA4
P 3750 1500
F 0 "R4" V 3830 1500 40  0000 C CNN
F 1 "22k" V 3757 1501 40  0000 C CNN
F 2 "~" V 3680 1500 30  0000 C CNN
F 3 "~" H 3750 1500 30  0000 C CNN
	1    3750 1500
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R6
U 1 1 55089FAA
P 4650 1900
F 0 "R6" V 4730 1900 40  0000 C CNN
F 1 "1k" V 4657 1901 40  0000 C CNN
F 2 "~" V 4580 1900 30  0000 C CNN
F 3 "~" H 4650 1900 30  0000 C CNN
	1    4650 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1500 2300 1500
Wire Wire Line
	2250 2200 2300 2200
Wire Wire Line
	2550 1700 2550 1750
Wire Wire Line
	3150 1700 3150 1750
Wire Wire Line
	2550 1300 2850 1300
Wire Wire Line
	3400 1500 3500 1500
Wire Wire Line
	3400 2200 3500 2200
Wire Wire Line
	4000 1500 4000 1900
Wire Wire Line
	1750 1500 1750 1850
Wire Wire Line
	2550 2400 2850 2400
Wire Wire Line
	4200 950  1650 950 
Wire Wire Line
	1650 950  1650 1850
Wire Wire Line
	1650 1850 1750 1850
Connection ~ 1750 1850
$Comp
L emetteur-rescue:R R3
U 1 1 5508A05B
P 2850 1750
F 0 "R3" V 2930 1750 40  0000 C CNN
F 1 "1k" V 2857 1751 40  0000 C CNN
F 2 "~" V 2780 1750 30  0000 C CNN
F 3 "~" H 2850 1750 30  0000 C CNN
	1    2850 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 1750 3150 1750
Connection ~ 3150 1750
Wire Wire Line
	2600 1750 2550 1750
Connection ~ 2550 1750
Wire Wire Line
	8950 2300 9000 2300
Wire Wire Line
	9000 2250 9000 2300
$Comp
L emetteur-rescue:VCC #PWR1
U 1 1 5508A0DD
P 2850 1150
F 0 "#PWR1" H 2850 1250 30  0001 C CNN
F 1 "VCC" H 2850 1250 30  0000 C CNN
F 2 "" H 2850 1150 60  0000 C CNN
F 3 "" H 2850 1150 60  0000 C CNN
	1    2850 1150
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:GND #PWR2
U 1 1 5508A0ED
P 2850 2550
F 0 "#PWR2" H 2850 2550 30  0001 C CNN
F 1 "GND" H 2850 2480 30  0001 C CNN
F 2 "" H 2850 2550 60  0000 C CNN
F 3 "" H 2850 2550 60  0000 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2550 2850 2400
Connection ~ 2850 2400
Wire Wire Line
	2850 1150 2850 1300
Connection ~ 2850 1300
$Comp
L emetteur-rescue:CONN_2 P1
U 1 1 5508A45B
P 2850 2200
F 0 "P1" V 2800 2200 40  0000 C CNN
F 1 "CONN_2" V 2900 2200 40  0000 C CNN
F 2 "" H 2850 2200 60  0000 C CNN
F 3 "" H 2850 2200 60  0000 C CNN
	1    2850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1850 3150 1850
Connection ~ 3150 1850
Wire Wire Line
	2750 1850 2550 1850
Connection ~ 2550 1850
Wire Wire Line
	4000 1900 4200 1900
Connection ~ 4000 1900
Wire Wire Line
	4200 950  4200 1900
Connection ~ 4200 1900
Wire Wire Line
	4900 1900 6250 1900
$Comp
L emetteur-rescue:2N3904 Q5
U 1 1 550AC2C1
P 2450 3250
F 0 "Q5" H 2600 3325 40  0000 C CNN
F 1 "2N3904" H 2575 3250 40  0000 L CNN
F 2 "" H 2450 3250 60  0000 C CNN
F 3 "" H 2450 3250 60  0000 C CNN
	1    2450 3250
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3904 Q12
U 1 1 550AC2C7
P 3250 3950
F 0 "Q12" H 3400 4025 40  0000 C CNN
F 1 "2N3904" H 3375 3950 40  0000 L CNN
F 2 "" H 3250 3950 60  0000 C CNN
F 3 "" H 3250 3950 60  0000 C CNN
	1    3250 3950
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q11
U 1 1 550AC2CD
P 3250 3250
F 0 "Q11" H 3375 3300 40  0000 L CNN
F 1 "2N3906" H 3375 3225 40  0000 L CNN
F 2 "" H 3250 3250 60  0000 C CNN
F 3 "" H 3250 3250 60  0000 C CNN
	1    3250 3250
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q6
U 1 1 550AC2D3
P 2450 3950
F 0 "Q6" H 2575 4000 40  0000 L CNN
F 1 "2N3906" H 2575 3925 40  0000 L CNN
F 2 "" H 2450 3950 60  0000 C CNN
F 3 "" H 2450 3950 60  0000 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:R R7
U 1 1 550AC2D9
P 2000 3250
F 0 "R7" V 2080 3250 40  0000 C CNN
F 1 "22k" V 2007 3251 40  0000 C CNN
F 2 "~" V 1930 3250 30  0000 C CNN
F 3 "~" H 2000 3250 30  0000 C CNN
	1    2000 3250
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R8
U 1 1 550AC2DF
P 2000 3950
F 0 "R8" V 2080 3950 40  0000 C CNN
F 1 "22k" V 2007 3951 40  0000 C CNN
F 2 "~" V 1930 3950 30  0000 C CNN
F 3 "~" H 2000 3950 30  0000 C CNN
	1    2000 3950
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R17
U 1 1 550AC2E5
P 3750 3950
F 0 "R17" V 3830 3950 40  0000 C CNN
F 1 "22k" V 3757 3951 40  0000 C CNN
F 2 "~" V 3680 3950 30  0000 C CNN
F 3 "~" H 3750 3950 30  0000 C CNN
	1    3750 3950
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R16
U 1 1 550AC2EB
P 3750 3250
F 0 "R16" V 3830 3250 40  0000 C CNN
F 1 "22k" V 3757 3251 40  0000 C CNN
F 2 "~" V 3680 3250 30  0000 C CNN
F 3 "~" H 3750 3250 30  0000 C CNN
	1    3750 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3250 2300 3250
Wire Wire Line
	2250 3950 2300 3950
Wire Wire Line
	2550 3450 2550 3500
Wire Wire Line
	3150 3450 3150 3500
Wire Wire Line
	2550 3050 2850 3050
Wire Wire Line
	3400 3250 3500 3250
Wire Wire Line
	3400 3950 3500 3950
Wire Wire Line
	4000 3250 4000 3650
Wire Wire Line
	1750 3250 1750 3600
Wire Wire Line
	2550 4150 2850 4150
Wire Wire Line
	4200 2700 1650 2700
Wire Wire Line
	1650 2700 1650 3600
Wire Wire Line
	1650 3600 1750 3600
Connection ~ 1750 3600
$Comp
L emetteur-rescue:R R13
U 1 1 550AC2FF
P 2850 3500
F 0 "R13" V 2930 3500 40  0000 C CNN
F 1 "1k" V 2857 3501 40  0000 C CNN
F 2 "~" V 2780 3500 30  0000 C CNN
F 3 "~" H 2850 3500 30  0000 C CNN
	1    2850 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 3500 3150 3500
Connection ~ 3150 3500
Wire Wire Line
	2600 3500 2550 3500
Connection ~ 2550 3500
$Comp
L emetteur-rescue:VCC #PWR3
U 1 1 550AC309
P 2850 2900
F 0 "#PWR3" H 2850 3000 30  0001 C CNN
F 1 "VCC" H 2850 3000 30  0000 C CNN
F 2 "" H 2850 2900 60  0000 C CNN
F 3 "" H 2850 2900 60  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:GND #PWR4
U 1 1 550AC30F
P 2850 4300
F 0 "#PWR4" H 2850 4300 30  0001 C CNN
F 1 "GND" H 2850 4230 30  0001 C CNN
F 2 "" H 2850 4300 60  0000 C CNN
F 3 "" H 2850 4300 60  0000 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4300 2850 4150
Connection ~ 2850 4150
Wire Wire Line
	2850 2900 2850 3050
Connection ~ 2850 3050
$Comp
L emetteur-rescue:CONN_2 P3
U 1 1 550AC319
P 2850 3950
F 0 "P3" V 2800 3950 40  0000 C CNN
F 1 "CONN_2" V 2900 3950 40  0000 C CNN
F 2 "" H 2850 3950 60  0000 C CNN
F 3 "" H 2850 3950 60  0000 C CNN
	1    2850 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3600 3150 3600
Connection ~ 3150 3600
Wire Wire Line
	2750 3600 2550 3600
Connection ~ 2550 3600
Wire Wire Line
	4000 3650 4200 3650
Connection ~ 4000 3650
Wire Wire Line
	4200 2700 4200 3650
Connection ~ 4200 3650
$Comp
L emetteur-rescue:2N3904 Q7
U 1 1 550AC3E7
P 2450 4950
F 0 "Q7" H 2600 5025 40  0000 C CNN
F 1 "2N3904" H 2575 4950 40  0000 L CNN
F 2 "" H 2450 4950 60  0000 C CNN
F 3 "" H 2450 4950 60  0000 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3904 Q14
U 1 1 550AC3ED
P 3250 5650
F 0 "Q14" H 3400 5725 40  0000 C CNN
F 1 "2N3904" H 3375 5650 40  0000 L CNN
F 2 "" H 3250 5650 60  0000 C CNN
F 3 "" H 3250 5650 60  0000 C CNN
	1    3250 5650
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q13
U 1 1 550AC3F3
P 3250 4950
F 0 "Q13" H 3375 5000 40  0000 L CNN
F 1 "2N3906" H 3375 4925 40  0000 L CNN
F 2 "" H 3250 4950 60  0000 C CNN
F 3 "" H 3250 4950 60  0000 C CNN
	1    3250 4950
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q8
U 1 1 550AC3F9
P 2450 5650
F 0 "Q8" H 2575 5700 40  0000 L CNN
F 1 "2N3906" H 2575 5625 40  0000 L CNN
F 2 "" H 2450 5650 60  0000 C CNN
F 3 "" H 2450 5650 60  0000 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:R R9
U 1 1 550AC3FF
P 2000 4950
F 0 "R9" V 2080 4950 40  0000 C CNN
F 1 "22k" V 2007 4951 40  0000 C CNN
F 2 "~" V 1930 4950 30  0000 C CNN
F 3 "~" H 2000 4950 30  0000 C CNN
	1    2000 4950
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R10
U 1 1 550AC405
P 2000 5650
F 0 "R10" V 2080 5650 40  0000 C CNN
F 1 "22k" V 2007 5651 40  0000 C CNN
F 2 "~" V 1930 5650 30  0000 C CNN
F 3 "~" H 2000 5650 30  0000 C CNN
	1    2000 5650
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R19
U 1 1 550AC40B
P 3750 5650
F 0 "R19" V 3830 5650 40  0000 C CNN
F 1 "22k" V 3757 5651 40  0000 C CNN
F 2 "~" V 3680 5650 30  0000 C CNN
F 3 "~" H 3750 5650 30  0000 C CNN
	1    3750 5650
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R18
U 1 1 550AC411
P 3750 4950
F 0 "R18" V 3830 4950 40  0000 C CNN
F 1 "22k" V 3757 4951 40  0000 C CNN
F 2 "~" V 3680 4950 30  0000 C CNN
F 3 "~" H 3750 4950 30  0000 C CNN
	1    3750 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 4950 2300 4950
Wire Wire Line
	2250 5650 2300 5650
Wire Wire Line
	2550 5150 2550 5200
Wire Wire Line
	3150 5150 3150 5200
Wire Wire Line
	2550 4750 2850 4750
Wire Wire Line
	3400 4950 3500 4950
Wire Wire Line
	3400 5650 3500 5650
Wire Wire Line
	4000 4950 4000 5350
Wire Wire Line
	1750 4950 1750 5300
Wire Wire Line
	2550 5850 2850 5850
Wire Wire Line
	4200 4400 1650 4400
Wire Wire Line
	1650 4400 1650 5300
Wire Wire Line
	1650 5300 1750 5300
Connection ~ 1750 5300
$Comp
L emetteur-rescue:R R14
U 1 1 550AC425
P 2850 5200
F 0 "R14" V 2930 5200 40  0000 C CNN
F 1 "1k" V 2857 5201 40  0000 C CNN
F 2 "~" V 2780 5200 30  0000 C CNN
F 3 "~" H 2850 5200 30  0000 C CNN
	1    2850 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 5200 3150 5200
Connection ~ 3150 5200
Wire Wire Line
	2600 5200 2550 5200
Connection ~ 2550 5200
$Comp
L emetteur-rescue:VCC #PWR5
U 1 1 550AC42F
P 2850 4600
F 0 "#PWR5" H 2850 4700 30  0001 C CNN
F 1 "VCC" H 2850 4700 30  0000 C CNN
F 2 "" H 2850 4600 60  0000 C CNN
F 3 "" H 2850 4600 60  0000 C CNN
	1    2850 4600
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:GND #PWR6
U 1 1 550AC435
P 2850 6000
F 0 "#PWR6" H 2850 6000 30  0001 C CNN
F 1 "GND" H 2850 5930 30  0001 C CNN
F 2 "" H 2850 6000 60  0000 C CNN
F 3 "" H 2850 6000 60  0000 C CNN
	1    2850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6000 2850 5850
Connection ~ 2850 5850
Wire Wire Line
	2850 4600 2850 4750
Connection ~ 2850 4750
$Comp
L emetteur-rescue:CONN_2 P4
U 1 1 550AC43F
P 2850 5650
F 0 "P4" V 2800 5650 40  0000 C CNN
F 1 "CONN_2" V 2900 5650 40  0000 C CNN
F 2 "" H 2850 5650 60  0000 C CNN
F 3 "" H 2850 5650 60  0000 C CNN
	1    2850 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5300 3150 5300
Connection ~ 3150 5300
Wire Wire Line
	2750 5300 2550 5300
Connection ~ 2550 5300
Wire Wire Line
	4400 5350 4200 5350
Connection ~ 4000 5350
Wire Wire Line
	4200 4400 4200 5350
Connection ~ 4200 5350
$Comp
L emetteur-rescue:2N3904 Q9
U 1 1 550AC44D
P 2450 6650
F 0 "Q9" H 2600 6725 40  0000 C CNN
F 1 "2N3904" H 2575 6650 40  0000 L CNN
F 2 "" H 2450 6650 60  0000 C CNN
F 3 "" H 2450 6650 60  0000 C CNN
	1    2450 6650
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3904 Q16
U 1 1 550AC453
P 3250 7350
F 0 "Q16" H 3400 7425 40  0000 C CNN
F 1 "2N3904" H 3375 7350 40  0000 L CNN
F 2 "" H 3250 7350 60  0000 C CNN
F 3 "" H 3250 7350 60  0000 C CNN
	1    3250 7350
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q15
U 1 1 550AC459
P 3250 6650
F 0 "Q15" H 3375 6700 40  0000 L CNN
F 1 "2N3906" H 3375 6625 40  0000 L CNN
F 2 "" H 3250 6650 60  0000 C CNN
F 3 "" H 3250 6650 60  0000 C CNN
	1    3250 6650
	-1   0    0    -1  
$EndComp
$Comp
L emetteur-rescue:2N3906 Q10
U 1 1 550AC45F
P 2450 7350
F 0 "Q10" H 2575 7400 40  0000 L CNN
F 1 "2N3906" H 2575 7325 40  0000 L CNN
F 2 "" H 2450 7350 60  0000 C CNN
F 3 "" H 2450 7350 60  0000 C CNN
	1    2450 7350
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:R R11
U 1 1 550AC465
P 2000 6650
F 0 "R11" V 2080 6650 40  0000 C CNN
F 1 "22k" V 2007 6651 40  0000 C CNN
F 2 "~" V 1930 6650 30  0000 C CNN
F 3 "~" H 2000 6650 30  0000 C CNN
	1    2000 6650
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R12
U 1 1 550AC46B
P 2000 7350
F 0 "R12" V 2080 7350 40  0000 C CNN
F 1 "22k" V 2007 7351 40  0000 C CNN
F 2 "~" V 1930 7350 30  0000 C CNN
F 3 "~" H 2000 7350 30  0000 C CNN
	1    2000 7350
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R21
U 1 1 550AC471
P 3750 7350
F 0 "R21" V 3830 7350 40  0000 C CNN
F 1 "22k" V 3757 7351 40  0000 C CNN
F 2 "~" V 3680 7350 30  0000 C CNN
F 3 "~" H 3750 7350 30  0000 C CNN
	1    3750 7350
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:R R20
U 1 1 550AC477
P 3750 6650
F 0 "R20" V 3830 6650 40  0000 C CNN
F 1 "22k" V 3757 6651 40  0000 C CNN
F 2 "~" V 3680 6650 30  0000 C CNN
F 3 "~" H 3750 6650 30  0000 C CNN
	1    3750 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 6650 2300 6650
Wire Wire Line
	2250 7350 2300 7350
Wire Wire Line
	2550 6850 2550 6900
Wire Wire Line
	3150 6850 3150 6900
Wire Wire Line
	2550 6450 2850 6450
Wire Wire Line
	3400 6650 3500 6650
Wire Wire Line
	3400 7350 3500 7350
Wire Wire Line
	4000 6650 4000 7050
Wire Wire Line
	1750 6650 1750 7000
Wire Wire Line
	2550 7550 2850 7550
Wire Wire Line
	4200 6100 1650 6100
Wire Wire Line
	1650 6100 1650 7000
Wire Wire Line
	1650 7000 1750 7000
Connection ~ 1750 7000
$Comp
L emetteur-rescue:R R15
U 1 1 550AC48B
P 2850 6900
F 0 "R15" V 2930 6900 40  0000 C CNN
F 1 "1k" V 2857 6901 40  0000 C CNN
F 2 "~" V 2780 6900 30  0000 C CNN
F 3 "~" H 2850 6900 30  0000 C CNN
	1    2850 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 6900 3150 6900
Connection ~ 3150 6900
Wire Wire Line
	2600 6900 2550 6900
Connection ~ 2550 6900
$Comp
L emetteur-rescue:VCC #PWR7
U 1 1 550AC495
P 2850 6300
F 0 "#PWR7" H 2850 6400 30  0001 C CNN
F 1 "VCC" H 2850 6400 30  0000 C CNN
F 2 "" H 2850 6300 60  0000 C CNN
F 3 "" H 2850 6300 60  0000 C CNN
	1    2850 6300
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:GND #PWR8
U 1 1 550AC49B
P 2850 7700
F 0 "#PWR8" H 2850 7700 30  0001 C CNN
F 1 "GND" H 2850 7630 30  0001 C CNN
F 2 "" H 2850 7700 60  0000 C CNN
F 3 "" H 2850 7700 60  0000 C CNN
	1    2850 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7700 2850 7550
Connection ~ 2850 7550
Wire Wire Line
	2850 6300 2850 6450
Connection ~ 2850 6450
$Comp
L emetteur-rescue:CONN_2 P5
U 1 1 550AC4A5
P 2850 7350
F 0 "P5" V 2800 7350 40  0000 C CNN
F 1 "CONN_2" V 2900 7350 40  0000 C CNN
F 2 "" H 2850 7350 60  0000 C CNN
F 3 "" H 2850 7350 60  0000 C CNN
	1    2850 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 7000 3150 7000
Connection ~ 3150 7000
Wire Wire Line
	2750 7000 2550 7000
Connection ~ 2550 7000
Wire Wire Line
	4400 7050 4200 7050
Connection ~ 4000 7050
Wire Wire Line
	4200 6100 4200 7050
Connection ~ 4200 7050
Wire Wire Line
	4400 1900 4400 3650
Connection ~ 4400 3650
Connection ~ 4400 5350
$Comp
L emetteur-rescue:+9V #PWR10
U 1 1 550DB96A
P 6150 1300
F 0 "#PWR10" H 6150 1270 20  0001 C CNN
F 1 "+9V" H 6150 1410 30  0000 C CNN
F 2 "" H 6150 1300 60  0000 C CNN
F 3 "" H 6150 1300 60  0000 C CNN
	1    6150 1300
	-1   0    0    1   
$EndComp
$Comp
L emetteur-rescue:GND #PWR11
U 1 1 550DB983
P 6600 1500
F 0 "#PWR11" H 6600 1500 30  0001 C CNN
F 1 "GND" H 6600 1430 30  0001 C CNN
F 2 "" H 6600 1500 60  0000 C CNN
F 3 "" H 6600 1500 60  0000 C CNN
	1    6600 1500
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:CONN_2 P6
U 1 1 550DF045
P 5700 1350
F 0 "P6" V 5650 1350 40  0000 C CNN
F 1 "CONN_2" V 5750 1350 40  0000 C CNN
F 2 "" H 5700 1350 60  0000 C CNN
F 3 "" H 5700 1350 60  0000 C CNN
	1    5700 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 850  8950 1800
Wire Wire Line
	8400 750  8400 850 
Connection ~ 8400 850 
Wire Wire Line
	6050 1250 6150 1250
Wire Wire Line
	6250 1250 6250 1150
Wire Wire Line
	6400 1150 6400 1250
Wire Wire Line
	6800 1250 6800 850 
Wire Wire Line
	6050 1450 6600 1450
Wire Wire Line
	7200 1450 7200 1150
Wire Wire Line
	6600 1500 6600 1450
Connection ~ 6600 1450
Wire Wire Line
	6400 1250 6800 1250
Wire Wire Line
	6150 1300 6150 1250
Connection ~ 6150 1250
Text Label 7850 850  0    60   ~ 0
test
NoConn ~ 6250 2000
NoConn ~ 6250 2100
NoConn ~ 6250 2200
NoConn ~ 6250 2300
NoConn ~ 6550 1150
$Comp
L emetteur-rescue:SWITCH U1
U 1 1 55259D48
P 6400 900
F 0 "U1" H 6400 1000 60  0000 C CNN
F 1 "SWITCH" H 6400 900 60  0000 C CNN
F 2 "" H 6400 900 60  0000 C CNN
F 3 "" H 6400 900 60  0000 C CNN
	1    6400 900 
	1    0    0    -1  
$EndComp
$Comp
L emetteur-rescue:R R22
U 1 1 55259EDA
P 5900 1700
F 0 "R22" V 5980 1700 40  0000 C CNN
F 1 "10k" V 5907 1701 40  0000 C CNN
F 2 "~" V 5830 1700 30  0000 C CNN
F 3 "~" H 5900 1700 30  0000 C CNN
	1    5900 1700
	0    -1   -1   0   
$EndComp
$Comp
L emetteur-rescue:LED D1
U 1 1 55259EEE
P 5350 1700
F 0 "D1" H 5350 1800 50  0000 C CNN
F 1 "LED" H 5350 1600 50  0000 C CNN
F 2 "~" H 5350 1700 60  0000 C CNN
F 3 "~" H 5350 1700 60  0000 C CNN
	1    5350 1700
	-1   0    0    1   
$EndComp
$Comp
L emetteur-rescue:GND #PWR9
U 1 1 55259F05
P 5050 1700
F 0 "#PWR9" H 5050 1700 30  0001 C CNN
F 1 "GND" H 5050 1630 30  0001 C CNN
F 2 "" H 5050 1700 60  0000 C CNN
F 3 "" H 5050 1700 60  0000 C CNN
	1    5050 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1800 6250 1700
Wire Wire Line
	6250 1700 6150 1700
Wire Wire Line
	5650 1700 5550 1700
Wire Wire Line
	5150 1700 5050 1700
$Comp
L emetteur-rescue:C C1
U 1 1 5526C604
P 9000 2050
F 0 "C1" H 9000 2150 40  0000 L CNN
F 1 "100n" H 9006 1965 40  0000 L CNN
F 2 "~" H 9038 1900 30  0000 C CNN
F 3 "~" H 9000 2050 60  0000 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
Connection ~ 9000 2300
Wire Wire Line
	9000 1850 9000 1800
Wire Wire Line
	9000 1800 8950 1800
Wire Wire Line
	1750 1850 1750 2200
Wire Wire Line
	3150 1750 3150 1850
Wire Wire Line
	2550 1750 2550 1850
Wire Wire Line
	2850 2400 3150 2400
Wire Wire Line
	2850 1300 3150 1300
Wire Wire Line
	3150 1850 3150 2000
Wire Wire Line
	2550 1850 2550 2000
Wire Wire Line
	4000 1900 4000 2200
Wire Wire Line
	4200 1900 4400 1900
Wire Wire Line
	1750 3600 1750 3950
Wire Wire Line
	3150 3500 3150 3600
Wire Wire Line
	2550 3500 2550 3600
Wire Wire Line
	2850 4150 3150 4150
Wire Wire Line
	2850 3050 3150 3050
Wire Wire Line
	3150 3600 3150 3750
Wire Wire Line
	2550 3600 2550 3750
Wire Wire Line
	4000 3650 4000 3950
Wire Wire Line
	4200 3650 4400 3650
Wire Wire Line
	1750 5300 1750 5650
Wire Wire Line
	3150 5200 3150 5300
Wire Wire Line
	2550 5200 2550 5300
Wire Wire Line
	2850 5850 3150 5850
Wire Wire Line
	2850 4750 3150 4750
Wire Wire Line
	3150 5300 3150 5450
Wire Wire Line
	2550 5300 2550 5450
Wire Wire Line
	4000 5350 4000 5650
Wire Wire Line
	4200 5350 4000 5350
Wire Wire Line
	1750 7000 1750 7350
Wire Wire Line
	3150 6900 3150 7000
Wire Wire Line
	2550 6900 2550 7000
Wire Wire Line
	2850 7550 3150 7550
Wire Wire Line
	2850 6450 3150 6450
Wire Wire Line
	3150 7000 3150 7150
Wire Wire Line
	2550 7000 2550 7150
Wire Wire Line
	4000 7050 4000 7350
Wire Wire Line
	4200 7050 4000 7050
Wire Wire Line
	4400 3650 4400 5350
Wire Wire Line
	4400 5350 4400 7050
Wire Wire Line
	8400 850  8950 850 
Wire Wire Line
	6600 1450 7200 1450
Wire Wire Line
	6150 1250 6250 1250
Wire Wire Line
	9000 2300 9000 2400
$Comp
L Regulator_Switching:R-78E5.0-0.5 REGUL1
U 1 1 647F6425
P 7200 850
F 0 "REGUL1" H 7200 1092 50  0000 C CNN
F 1 "R-78E5.0-0.5" H 7200 1001 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 7250 600 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 7200 850 50  0001 C CNN
	1    7200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 850  6900 850 
Wire Wire Line
	7500 850  8400 850 
$EndSCHEMATC
