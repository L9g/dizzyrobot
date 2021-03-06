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
LIBS:Dizzy
LIBS:motor-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Earth #PWR42
U 1 1 59775888
P 11200 2150
F 0 "#PWR42" H 11200 1900 50  0001 C CNN
F 1 "Earth" H 11200 2000 50  0001 C CNN
F 2 "" H 11200 2150 50  0001 C CNN
F 3 "" H 11200 2150 50  0001 C CNN
	1    11200 2150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 59775905
P 11700 850
F 0 "C4" H 11710 920 50  0000 L CNN
F 1 "1uF" H 11710 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 11700 850 50  0001 C CNN
F 3 "" H 11700 850 50  0001 C CNN
	1    11700 850 
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR37
U 1 1 5977764D
P 7050 5000
F 0 "#PWR37" H 7050 4850 50  0001 C CNN
F 1 "+3.3V" H 7050 5140 50  0000 C CNN
F 2 "" H 7050 5000 50  0001 C CNN
F 3 "" H 7050 5000 50  0001 C CNN
	1    7050 5000
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR35
U 1 1 5977767B
P 6650 5450
F 0 "#PWR35" H 6650 5200 50  0001 C CNN
F 1 "Earth" H 6650 5300 50  0001 C CNN
F 2 "" H 6650 5450 50  0001 C CNN
F 3 "" H 6650 5450 50  0001 C CNN
	1    6650 5450
	0    -1   -1   0   
$EndComp
Text GLabel 1100 2100 2    60   Input ~ 0
RS-A
$Comp
L CONN_01X02 J3
U 1 1 59777EAC
P 900 2150
F 0 "J3" H 900 2300 50  0000 C CNN
F 1 "RS485" V 1000 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 900 2150 50  0001 C CNN
F 3 "" H 900 2150 50  0001 C CNN
	1    900  2150
	-1   0    0    1   
$EndComp
Text GLabel 1100 2200 2    60   Input ~ 0
RS-B
Text GLabel 5750 5000 0    60   Input ~ 0
RX
Text GLabel 5750 5450 0    60   Input ~ 0
TX
Text GLabel 1300 1350 2    60   Input ~ 0
SWDCLK
Text GLabel 1300 1250 2    60   Input ~ 0
SWDIO
Text GLabel 2000 1650 2    60   Input ~ 0
NRST
$Comp
L Earth #PWR43
U 1 1 59785376
P 11200 4450
F 0 "#PWR43" H 11200 4200 50  0001 C CNN
F 1 "Earth" H 11200 4300 50  0001 C CNN
F 2 "" H 11200 4450 50  0001 C CNN
F 3 "" H 11200 4450 50  0001 C CNN
	1    11200 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 59785384
P 11700 3150
F 0 "C5" H 11710 3220 50  0000 L CNN
F 1 "1uF" H 11710 3070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 11700 3150 50  0001 C CNN
F 3 "" H 11700 3150 50  0001 C CNN
	1    11700 3150
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR44
U 1 1 59785504
P 11200 7100
F 0 "#PWR44" H 11200 6850 50  0001 C CNN
F 1 "Earth" H 11200 6950 50  0001 C CNN
F 2 "" H 11200 7100 50  0001 C CNN
F 3 "" H 11200 7100 50  0001 C CNN
	1    11200 7100
	1    0    0    -1  
$EndComp
Text GLabel 7800 5400 2    60   Input ~ 0
RS-A
Text GLabel 7800 5100 2    60   Input ~ 0
RS-B
Text GLabel 5650 5300 0    60   Input ~ 0
DE
$Comp
L +3.3V #PWR1
U 1 1 59C7EA4D
P 800 1250
F 0 "#PWR1" H 800 1100 50  0001 C CNN
F 1 "+3.3V" H 800 1390 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C7
U 1 1 59CA6694
P 6850 4900
F 0 "C7" H 6860 4970 50  0000 L CNN
F 1 "0.1uF" H 6860 4820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6850 4900 50  0001 C CNN
F 3 "" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR36
U 1 1 59CA6988
P 6850 4800
F 0 "#PWR36" H 6850 4550 50  0001 C CNN
F 1 "Earth" H 6850 4650 50  0001 C CNN
F 2 "" H 6850 4800 50  0001 C CNN
F 3 "" H 6850 4800 50  0001 C CNN
	1    6850 4800
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J11
U 1 1 59CA3DE6
P 13250 1650
F 0 "J11" H 13250 1750 50  0000 C CNN
F 1 "V" V 13350 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 13250 1650 50  0001 C CNN
F 3 "" H 13250 1650 50  0001 C CNN
	1    13250 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J12
U 1 1 59CA3E65
P 13250 3950
F 0 "J12" H 13250 4050 50  0000 C CNN
F 1 "U" V 13350 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 13250 3950 50  0001 C CNN
F 3 "" H 13250 3950 50  0001 C CNN
	1    13250 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J13
U 1 1 59CA3FA6
P 13300 6550
F 0 "J13" H 13300 6650 50  0000 C CNN
F 1 "W" V 13400 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 13300 6550 50  0001 C CNN
F 3 "" H 13300 6550 50  0001 C CNN
	1    13300 6550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J6
U 1 1 59CA4EC4
P 2400 700
F 0 "J6" H 2400 800 50  0000 C CNN
F 1 "+BAT" V 2500 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2400 700 50  0001 C CNN
F 3 "" H 2400 700 50  0001 C CNN
	1    2400 700 
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J9
U 1 1 59CA5280
P 2400 950
F 0 "J9" H 2400 1050 50  0000 C CNN
F 1 "GND" V 2500 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2400 950 50  0001 C CNN
F 3 "" H 2400 950 50  0001 C CNN
	1    2400 950 
	-1   0    0    1   
$EndComp
$Comp
L D D4
U 1 1 5A0721E8
P 1050 8550
F 0 "D4" H 1050 8650 50  0000 C CNN
F 1 "D" H 1050 8450 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323F" H 1050 8550 50  0001 C CNN
F 3 "" H 1050 8550 50  0001 C CNN
	1    1050 8550
	-1   0    0    1   
$EndComp
$Comp
L C_Small C3
U 1 1 5A072348
P 1300 8750
F 0 "C3" H 1310 8820 50  0000 L CNN
F 1 "2uF" H 1310 8670 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1300 8750 50  0001 C CNN
F 3 "" H 1300 8750 50  0001 C CNN
	1    1300 8750
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR6
U 1 1 5A0724EC
P 1300 8850
F 0 "#PWR6" H 1300 8600 50  0001 C CNN
F 1 "Earth" H 1300 8700 50  0001 C CNN
F 2 "" H 1300 8850 50  0001 C CNN
F 3 "" H 1300 8850 50  0001 C CNN
	1    1300 8850
	1    0    0    -1  
$EndComp
$Comp
L LTC2876 U2
U 1 1 5A06DBF8
P 6150 4850
F 0 "U2" H 6150 4950 60  0000 C CNN
F 1 "LTC2876" H 6150 4850 60  0000 C CNN
F 2 "Dizzy:LTC2876" H 6150 4850 60  0001 C CNN
F 3 "" H 6150 4850 60  0001 C CNN
	1    6150 4850
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR34
U 1 1 5A06E0D7
P 6200 5700
F 0 "#PWR34" H 6200 5450 50  0001 C CNN
F 1 "Earth" H 6200 5550 50  0001 C CNN
F 2 "" H 6200 5700 50  0001 C CNN
F 3 "" H 6200 5700 50  0001 C CNN
	1    6200 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 J1
U 1 1 5A61F810
P 1050 1450
F 0 "J1" H 1050 1750 50  0000 C CNN
F 1 "CONN_02X05" H 1050 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm_SMD" H 1050 250 50  0001 C CNN
F 3 "" H 1050 250 50  0001 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR2
U 1 1 5A621AD5
P 800 1350
F 0 "#PWR2" H 800 1100 50  0001 C CNN
F 1 "Earth" H 800 1200 50  0001 C CNN
F 2 "" H 800 1350 50  0001 C CNN
F 3 "" H 800 1350 50  0001 C CNN
	1    800  1350
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR3
U 1 1 5A621D43
P 800 1450
F 0 "#PWR3" H 800 1200 50  0001 C CNN
F 1 "Earth" H 800 1300 50  0001 C CNN
F 2 "" H 800 1450 50  0001 C CNN
F 3 "" H 800 1450 50  0001 C CNN
	1    800  1450
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR4
U 1 1 5A622EE0
P 800 1650
F 0 "#PWR4" H 800 1400 50  0001 C CNN
F 1 "Earth" H 800 1500 50  0001 C CNN
F 2 "" H 800 1650 50  0001 C CNN
F 3 "" H 800 1650 50  0001 C CNN
	1    800  1650
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR17
U 1 1 59CA5287
P 2600 950
F 0 "#PWR17" H 2600 700 50  0001 C CNN
F 1 "Earth" H 2600 800 50  0001 C CNN
F 2 "" H 2600 950 50  0001 C CNN
F 3 "" H 2600 950 50  0001 C CNN
	1    2600 950 
	0    -1   -1   0   
$EndComp
$Comp
L LM5019 U4
U 1 1 5B0D500B
P 2300 8250
F 0 "U4" H 2300 8350 60  0000 C CNN
F 1 "LM5019" H 2300 8250 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-8-1EP_4x4mm_Pitch0.8mm" H 2300 8250 60  0001 C CNN
F 3 "" H 2300 8250 60  0001 C CNN
	1    2300 8250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 5B0D5231
P 1700 8850
F 0 "R10" H 1730 8870 50  0000 L CNN
F 1 "237K" H 1730 8810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1700 8850 50  0001 C CNN
F 3 "" H 1700 8850 50  0001 C CNN
	1    1700 8850
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR13
U 1 1 5B0D5395
P 2300 9150
F 0 "#PWR13" H 2300 8900 50  0001 C CNN
F 1 "Earth" H 2300 9000 50  0001 C CNN
F 2 "" H 2300 9150 50  0001 C CNN
F 3 "" H 2300 9150 50  0001 C CNN
	1    2300 9150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR8
U 1 1 5B0D5424
P 1800 8400
F 0 "#PWR8" H 1800 8150 50  0001 C CNN
F 1 "Earth" H 1800 8250 50  0001 C CNN
F 2 "" H 1800 8400 50  0001 C CNN
F 3 "" H 1800 8400 50  0001 C CNN
	1    1800 8400
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 5B0D5489
P 3050 8550
F 0 "C10" H 3060 8620 50  0000 L CNN
F 1 "0.01uF" H 3060 8470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3050 8550 50  0001 C CNN
F 3 "" H 3050 8550 50  0001 C CNN
	1    3050 8550
	-1   0    0    1   
$EndComp
$Comp
L L_Small L2
U 1 1 5B0D55C1
P 3350 8400
F 0 "L2" H 3380 8440 50  0000 L CNN
F 1 "220uH" H 3380 8360 50  0000 L CNN
F 2 "Inductors_SMD:L_1210" H 3350 8400 50  0001 C CNN
F 3 "" H 3350 8400 50  0001 C CNN
	1    3350 8400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C9
U 1 1 5B0D5656
P 3000 9050
F 0 "C9" H 3010 9120 50  0000 L CNN
F 1 "1uF" H 3010 8970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3000 9050 50  0001 C CNN
F 3 "" H 3000 9050 50  0001 C CNN
	1    3000 9050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R12
U 1 1 5B0D5794
P 3650 8600
F 0 "R12" H 3680 8620 50  0000 L CNN
F 1 "30k 1%" H 3680 8560 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3650 8600 50  0001 C CNN
F 3 "" H 3650 8600 50  0001 C CNN
	1    3650 8600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 5B0D5831
P 3650 9050
F 0 "R13" H 3680 9070 50  0000 L CNN
F 1 "10K 1%" H 3680 9010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3650 9050 50  0001 C CNN
F 3 "" H 3650 9050 50  0001 C CNN
	1    3650 9050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 5B0D58B0
P 4000 8600
F 0 "R14" H 4030 8620 50  0000 L CNN
F 1 "1Ohm" H 4030 8560 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4000 8600 50  0001 C CNN
F 3 "" H 4000 8600 50  0001 C CNN
	1    4000 8600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 5B0D5931
P 4000 9050
F 0 "C11" H 4010 9120 50  0000 L CNN
F 1 "4.7uF" H 4010 8970 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4000 9050 50  0001 C CNN
F 3 "" H 4000 9050 50  0001 C CNN
	1    4000 9050
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR21
U 1 1 5B0D5DD7
P 3000 9150
F 0 "#PWR21" H 3000 8900 50  0001 C CNN
F 1 "Earth" H 3000 9000 50  0001 C CNN
F 2 "" H 3000 9150 50  0001 C CNN
F 3 "" H 3000 9150 50  0001 C CNN
	1    3000 9150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR26
U 1 1 5B0D638A
P 3650 9150
F 0 "#PWR26" H 3650 8900 50  0001 C CNN
F 1 "Earth" H 3650 9000 50  0001 C CNN
F 2 "" H 3650 9150 50  0001 C CNN
F 3 "" H 3650 9150 50  0001 C CNN
	1    3650 9150
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR30
U 1 1 5B0D642E
P 4000 9150
F 0 "#PWR30" H 4000 8900 50  0001 C CNN
F 1 "Earth" H 4000 9000 50  0001 C CNN
F 2 "" H 4000 9150 50  0001 C CNN
F 3 "" H 4000 9150 50  0001 C CNN
	1    4000 9150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 5B0DAE4E
P 1850 1400
F 0 "R11" H 1880 1420 50  0000 L CNN
F 1 "10K" H 1880 1360 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1850 1400 50  0001 C CNN
F 3 "" H 1850 1400 50  0001 C CNN
	1    1850 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR9
U 1 1 5B0DB1DB
P 1850 1300
F 0 "#PWR9" H 1850 1150 50  0001 C CNN
F 1 "+3.3V" H 1850 1440 50  0000 C CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    1850 1300
	1    0    0    -1  
$EndComp
$Comp
L STM32F031G6U6 U5
U 1 1 5B1B7D22
P 3850 2100
F 0 "U5" H 3850 2550 60  0000 C CNN
F 1 "STM32F031K6U6" H 3150 2650 60  0000 C CNN
F 2 "Dizzy:UFQFPN32-small-pad" H 3850 2100 60  0001 C CNN
F 3 "" H 3850 2100 60  0001 C CNN
	1    3850 2100
	1    0    0    -1  
$EndComp
$Comp
L D_Small D3
U 1 1 5B1B8D33
P 11200 1150
F 0 "D3" H 11150 1230 50  0000 L CNN
F 1 "D_Small" H 11050 1070 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-323F" V 11200 1150 50  0001 C CNN
F 3 "" V 11200 1150 50  0001 C CNN
	1    11200 1150
	0    1    1    0   
$EndComp
$Comp
L D_Small D5
U 1 1 5B1B8DD8
P 11200 3450
F 0 "D5" H 11150 3530 50  0000 L CNN
F 1 "D_Small" H 11050 3370 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-323F" V 11200 3450 50  0001 C CNN
F 3 "" V 11200 3450 50  0001 C CNN
	1    11200 3450
	0    1    1    0   
$EndComp
$Comp
L D_Small D6
U 1 1 5B1B8E77
P 11200 6000
F 0 "D6" H 11150 6080 50  0000 L CNN
F 1 "D_Small" H 11050 5920 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-323F" V 11200 6000 50  0001 C CNN
F 3 "" V 11200 6000 50  0001 C CNN
	1    11200 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 5000 7050 5000
Connection ~ 6850 5000
Wire Wire Line
	7350 5100 7800 5100
Wire Wire Line
	7350 5100 7350 5150
Wire Wire Line
	7350 5150 6650 5150
Wire Wire Line
	6650 5300 7350 5300
Wire Wire Line
	7350 5300 7350 5400
Wire Wire Line
	7350 5400 7800 5400
Wire Wire Line
	1200 8550 1800 8550
Wire Wire Line
	1800 8700 1550 8700
Wire Wire Line
	1550 8550 1550 8850
Connection ~ 1550 8550
Wire Wire Line
	1550 8850 1600 8850
Connection ~ 1550 8700
Wire Wire Line
	2750 8400 3250 8400
Wire Wire Line
	3050 8450 3050 8400
Connection ~ 3050 8400
Wire Wire Line
	3050 8650 2900 8650
Wire Wire Line
	2900 8650 2900 8550
Wire Wire Line
	2900 8550 2750 8550
Wire Wire Line
	3000 8700 3000 8950
Wire Wire Line
	3650 8500 3650 8400
Connection ~ 3650 8400
Wire Wire Line
	3650 8700 3650 8950
Wire Wire Line
	2750 8850 3650 8850
Connection ~ 3650 8850
Wire Wire Line
	4000 8400 4000 8500
Connection ~ 4000 8400
Wire Wire Line
	4000 8950 4000 8700
Connection ~ 1300 8550
Wire Wire Line
	1300 1650 2000 1650
Wire Wire Line
	1850 1500 1850 1650
Connection ~ 1850 1650
Wire Wire Line
	5750 5300 5650 5300
Wire Wire Line
	5750 5150 5750 5300
Connection ~ 5750 5300
$Comp
L +BATT #PWR5
U 1 1 5B1C2B24
P 900 8550
F 0 "#PWR5" H 900 8400 50  0001 C CNN
F 1 "+BATT" H 900 8690 50  0000 C CNN
F 2 "" H 900 8550 50  0001 C CNN
F 3 "" H 900 8550 50  0001 C CNN
	1    900  8550
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR45
U 1 1 5B1C2E23
P 12650 950
F 0 "#PWR45" H 12650 800 50  0001 C CNN
F 1 "+BATT" H 12650 1090 50  0000 C CNN
F 2 "" H 12650 950 50  0001 C CNN
F 3 "" H 12650 950 50  0001 C CNN
	1    12650 950 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR47
U 1 1 5B1C30B2
P 12650 3200
F 0 "#PWR47" H 12650 3050 50  0001 C CNN
F 1 "+BATT" H 12650 3340 50  0000 C CNN
F 2 "" H 12650 3200 50  0001 C CNN
F 3 "" H 12650 3200 50  0001 C CNN
	1    12650 3200
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR49
U 1 1 5B1C3147
P 12650 5800
F 0 "#PWR49" H 12650 5650 50  0001 C CNN
F 1 "+BATT" H 12650 5940 50  0000 C CNN
F 2 "" H 12650 5800 50  0001 C CNN
F 3 "" H 12650 5800 50  0001 C CNN
	1    12650 5800
	1    0    0    -1  
$EndComp
Text GLabel 4600 3250 2    60   Input ~ 0
HIN1
Text GLabel 4600 3100 2    60   Input ~ 0
HIN2
Text GLabel 4600 2950 2    60   Input ~ 0
HIN3
Text GLabel 3700 3850 3    60   Input ~ 0
LIN1
Text GLabel 3850 3850 3    60   Input ~ 0
LIN2
Text GLabel 4000 3850 3    60   Input ~ 0
LIN3
Text GLabel 4600 2800 2    60   Input ~ 0
EN
Text GLabel 4600 2650 2    60   Input ~ 0
FRST
Text GLabel 4150 1900 1    60   Input ~ 0
FLT
Text GLabel 2650 2800 0    60   Input ~ 0
NRST
Text GLabel 4600 2500 2    60   Input ~ 0
SWDIO
Text GLabel 4600 2350 2    60   Input ~ 0
SWDCLK
Text GLabel 3400 1900 1    60   Input ~ 0
RX
Text GLabel 3550 1900 1    60   Input ~ 0
TX
Text GLabel 2650 3250 0    60   Input ~ 0
DE
Text GLabel 3700 1900 1    60   Input ~ 0
MOSI
Text GLabel 3250 3850 3    60   Input ~ 0
CS
Text GLabel 3550 3850 3    60   Input ~ 0
MISO
Text GLabel 3400 3850 3    60   Input ~ 0
SCK
$Comp
L +BATT #PWR16
U 1 1 5B1CEED6
P 2600 700
F 0 "#PWR16" H 2600 550 50  0001 C CNN
F 1 "+BATT" H 2600 840 50  0000 C CNN
F 2 "" H 2600 700 50  0001 C CNN
F 3 "" H 2600 700 50  0001 C CNN
	1    2600 700 
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR15
U 1 1 5B1D4776
P 2400 2350
F 0 "#PWR15" H 2400 2200 50  0001 C CNN
F 1 "+3.3V" V 2300 2400 50  0000 C CNN
F 2 "" H 2400 2350 50  0001 C CNN
F 3 "" H 2400 2350 50  0001 C CNN
	1    2400 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 2350 2650 2350
$Comp
L +3.3V #PWR18
U 1 1 5B1D5663
P 2650 2950
F 0 "#PWR18" H 2650 2800 50  0001 C CNN
F 1 "+3.3V" V 2550 3000 50  0000 C CNN
F 2 "" H 2650 2950 50  0001 C CNN
F 3 "" H 2650 2950 50  0001 C CNN
	1    2650 2950
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR32
U 1 1 5B1D570A
P 4850 3400
F 0 "#PWR32" H 4850 3250 50  0001 C CNN
F 1 "+3.3V" V 4750 3450 50  0000 C CNN
F 2 "" H 4850 3400 50  0001 C CNN
F 3 "" H 4850 3400 50  0001 C CNN
	1    4850 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3400 4600 3400
$Comp
L C_Small C14
U 1 1 5B1D5875
P 4800 3550
F 0 "C14" H 4810 3620 50  0000 L CNN
F 1 "0.1uF" V 4700 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4800 3550 50  0001 C CNN
F 3 "" H 4800 3550 50  0001 C CNN
	1    4800 3550
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR33
U 1 1 5B1D594A
P 4900 3550
F 0 "#PWR33" H 4900 3300 50  0001 C CNN
F 1 "Earth" H 4900 3400 50  0001 C CNN
F 2 "" H 4900 3550 50  0001 C CNN
F 3 "" H 4900 3550 50  0001 C CNN
	1    4900 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3550 4650 3550
Wire Wire Line
	4650 3550 4650 3400
Connection ~ 4650 3400
Wire Wire Line
	3000 8700 2750 8700
$Comp
L Earth #PWR20
U 1 1 5B1DB449
P 2850 3850
F 0 "#PWR20" H 2850 3600 50  0001 C CNN
F 1 "Earth" H 2850 3700 50  0001 C CNN
F 2 "" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
	1    2850 3850
	1    0    0    -1  
$EndComp
$Comp
L B3U-1000P SW1
U 1 1 5B1DF8A3
P 2400 3950
F 0 "SW1" H 2350 4250 60  0000 C CNN
F 1 "B3U-1000P" H 2400 4400 60  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 2400 3950 60  0001 C CNN
F 3 "" H 2400 3950 60  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
$Comp
L B3U-1000P SW2
U 1 1 5B1DF9B1
P 2550 4150
F 0 "SW2" H 2500 4450 60  0000 C CNN
F 1 "B3U-1000P" H 2550 4600 60  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 2550 4150 60  0001 C CNN
F 3 "" H 2550 4150 60  0001 C CNN
	1    2550 4150
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR11
U 1 1 5B1DFA99
P 2100 3400
F 0 "#PWR11" H 2100 3250 50  0001 C CNN
F 1 "+3.3V" V 2000 3450 50  0000 C CNN
F 2 "" H 2100 3400 50  0001 C CNN
F 3 "" H 2100 3400 50  0001 C CNN
	1    2100 3400
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR22
U 1 1 5B1DFB52
P 3100 4400
F 0 "#PWR22" H 3100 4250 50  0001 C CNN
F 1 "+3.3V" V 3000 4450 50  0000 C CNN
F 2 "" H 3100 4400 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	-1   0    0    1   
$EndComp
$Comp
L R_Small R2
U 1 1 5B1E017D
P 4000 1800
F 0 "R2" H 4030 1820 50  0000 L CNN
F 1 "390" H 4030 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5B1E0545
P 3850 1800
F 0 "R1" H 3880 1820 50  0000 L CNN
F 1 "390" H 3880 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3850 1800 50  0001 C CNN
F 3 "" H 3850 1800 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
$Comp
L LED_Small D1
U 1 1 5B1E05D7
P 3850 1600
F 0 "D1" H 3800 1725 50  0000 L CNN
F 1 "LED_Small" H 3675 1500 50  0000 L CNN
F 2 "LEDs:LED_0603" V 3850 1600 50  0001 C CNN
F 3 "" V 3850 1600 50  0001 C CNN
	1    3850 1600
	0    1    1    0   
$EndComp
$Comp
L LED_Small D2
U 1 1 5B1E06B7
P 4000 1600
F 0 "D2" H 3950 1725 50  0000 L CNN
F 1 "LED_Small" H 3825 1500 50  0000 L CNN
F 2 "LEDs:LED_0603" V 4000 1600 50  0001 C CNN
F 3 "" V 4000 1600 50  0001 C CNN
	1    4000 1600
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR27
U 1 1 5B1E087F
P 3850 1500
F 0 "#PWR27" H 3850 1250 50  0001 C CNN
F 1 "Earth" H 3850 1350 50  0001 C CNN
F 2 "" H 3850 1500 50  0001 C CNN
F 3 "" H 3850 1500 50  0001 C CNN
	1    3850 1500
	-1   0    0    1   
$EndComp
$Comp
L Earth #PWR29
U 1 1 5B1E0BF0
P 4000 1500
F 0 "#PWR29" H 4000 1250 50  0001 C CNN
F 1 "Earth" H 4000 1350 50  0001 C CNN
F 2 "" H 4000 1500 50  0001 C CNN
F 3 "" H 4000 1500 50  0001 C CNN
	1    4000 1500
	-1   0    0    1   
$EndComp
$Comp
L Resonator Y1
U 1 1 5B1E1662
P 2000 2600
F 0 "Y1" H 2000 2825 50  0000 C CNN
F 1 "8MhZ" H 2000 2750 50  0000 C CNN
F 2 "Dizzy:Oscillator" H 1975 2600 50  0001 C CNN
F 3 "" H 1975 2600 50  0001 C CNN
	1    2000 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2450 2300 2450
Wire Wire Line
	2300 2450 2300 2500
Wire Wire Line
	2300 2500 2650 2500
Wire Wire Line
	2000 2750 2300 2750
Wire Wire Line
	2300 2750 2300 2650
Wire Wire Line
	2300 2650 2650 2650
$Comp
L Earth #PWR7
U 1 1 5B1E18E9
P 1800 2600
F 0 "#PWR7" H 1800 2350 50  0001 C CNN
F 1 "Earth" H 1800 2450 50  0001 C CNN
F 2 "" H 1800 2600 50  0001 C CNN
F 3 "" H 1800 2600 50  0001 C CNN
	1    1800 2600
	0    1    1    0   
$EndComp
$Comp
L LED_Small D7
U 1 1 5B1E3F05
P 4750 8850
F 0 "D7" H 4700 8975 50  0000 L CNN
F 1 "LED_Small" H 4575 8750 50  0000 L CNN
F 2 "LEDs:LED_0603" V 4750 8850 50  0001 C CNN
F 3 "" V 4750 8850 50  0001 C CNN
	1    4750 8850
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R15
U 1 1 5B1E40A4
P 4750 9050
F 0 "R15" H 4780 9070 50  0000 L CNN
F 1 "600" H 4780 9010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4750 9050 50  0001 C CNN
F 3 "" H 4750 9050 50  0001 C CNN
	1    4750 9050
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR31
U 1 1 5B1E4188
P 4750 9150
F 0 "#PWR31" H 4750 8900 50  0001 C CNN
F 1 "Earth" H 4750 9000 50  0001 C CNN
F 2 "" H 4750 9150 50  0001 C CNN
F 3 "" H 4750 9150 50  0001 C CNN
	1    4750 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7050 4750 8750
$Comp
L Earth #PWR23
U 1 1 5B1F7BDC
P 3250 1900
F 0 "#PWR23" H 3250 1650 50  0001 C CNN
F 1 "Earth" H 3250 1750 50  0001 C CNN
F 2 "" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0001 C CNN
	1    3250 1900
	-1   0    0    1   
$EndComp
$Comp
L Earth #PWR19
U 1 1 5B1FA24D
P 2650 3100
F 0 "#PWR19" H 2650 2850 50  0001 C CNN
F 1 "Earth" H 2650 2950 50  0001 C CNN
F 2 "" H 2650 3100 50  0001 C CNN
F 3 "" H 2650 3100 50  0001 C CNN
	1    2650 3100
	0    1    1    0   
$EndComp
$Comp
L TPS73433DRV U1
U 1 1 5B34E3F5
P 3850 6700
F 0 "U1" H 3850 6600 60  0000 C CNN
F 1 "TPS73433DRV" H 3850 6500 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-6-1EP_2x2mm_Pitch0.65mm" H 3850 6700 60  0001 C CNN
F 3 "" H 3850 6700 60  0001 C CNN
	1    3850 6700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR28
U 1 1 5B353D33
P 3850 7600
F 0 "#PWR28" H 3850 7350 50  0001 C CNN
F 1 "Earth" H 3850 7450 50  0001 C CNN
F 2 "" H 3850 7600 50  0001 C CNN
F 3 "" H 3850 7600 50  0001 C CNN
	1    3850 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7050 4300 7050
Connection ~ 4750 8400
Wire Wire Line
	4300 7350 4750 7350
Connection ~ 4750 7350
$Comp
L +3.3V #PWR24
U 1 1 5B354F7F
P 3400 7050
F 0 "#PWR24" H 3400 6900 50  0001 C CNN
F 1 "+3.3V" H 3400 7190 50  0000 C CNN
F 2 "" H 3400 7050 50  0001 C CNN
F 3 "" H 3400 7050 50  0001 C CNN
	1    3400 7050
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR25
U 1 1 5B362B44
P 3400 7350
F 0 "#PWR25" H 3400 7100 50  0001 C CNN
F 1 "Earth" H 3400 7200 50  0001 C CNN
F 2 "" H 3400 7350 50  0001 C CNN
F 3 "" H 3400 7350 50  0001 C CNN
	1    3400 7350
	0    1    1    0   
$EndComp
$Comp
L IRSM005 U7
U 1 1 5B5067EE
P 12050 850
F 0 "U7" H 12050 850 60  0000 C CNN
F 1 "IRSM005" H 12050 750 60  0000 C CNN
F 2 "Dizzy:IRSM005" H 12050 850 60  0001 C CNN
F 3 "" H 12050 850 60  0001 C CNN
	1    12050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 1100 12650 950 
Wire Wire Line
	11200 1900 11200 2150
Connection ~ 11200 2000
Connection ~ 11200 1950
$Comp
L Earth #PWR46
U 1 1 5B508DF7
P 12650 2300
F 0 "#PWR46" H 12650 2050 50  0001 C CNN
F 1 "Earth" H 12650 2150 50  0001 C CNN
F 2 "" H 12650 2300 50  0001 C CNN
F 3 "" H 12650 2300 50  0001 C CNN
	1    12650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 1650 12950 1650
Connection ~ 12950 1650
Wire Wire Line
	11600 850  11600 1100
Wire Wire Line
	11800 850  11800 1100
Wire Wire Line
	11800 1100 11750 1100
Connection ~ 11800 1100
Wire Wire Line
	11200 1450 11200 1250
Wire Wire Line
	11600 850  11200 850 
Wire Wire Line
	11200 850  11200 1050
Connection ~ 11600 850 
$Comp
L IRSM005 U8
U 1 1 5B50CF52
P 12050 3150
F 0 "U8" H 12050 3150 60  0000 C CNN
F 1 "IRSM005" H 12050 3050 60  0000 C CNN
F 2 "Dizzy:IRSM005" H 12050 3150 60  0001 C CNN
F 3 "" H 12050 3150 60  0001 C CNN
	1    12050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 3400 12650 3200
Wire Wire Line
	13050 3950 12950 3950
Connection ~ 12950 3950
Wire Wire Line
	11600 3150 11600 3400
Wire Wire Line
	11800 3150 11800 3400
Wire Wire Line
	11800 3400 11750 3400
Connection ~ 11800 3400
Wire Wire Line
	11200 3350 11200 3150
Wire Wire Line
	11200 3150 11600 3150
Wire Wire Line
	11200 3550 11200 3750
Connection ~ 11600 3150
Wire Wire Line
	11200 4200 11200 4450
Connection ~ 11200 4300
Connection ~ 11200 4250
$Comp
L IRSM005 U9
U 1 1 5B513ED7
P 12050 5750
F 0 "U9" H 12050 5750 60  0000 C CNN
F 1 "IRSM005" H 12050 5650 60  0000 C CNN
F 2 "Dizzy:IRSM005" H 12050 5750 60  0001 C CNN
F 3 "" H 12050 5750 60  0001 C CNN
	1    12050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 6550 12950 6550
Connection ~ 12950 6550
Wire Wire Line
	12650 6000 12650 5800
$Comp
L C_Small C8
U 1 1 5B5187B2
P 11700 5750
F 0 "C8" H 11710 5820 50  0000 L CNN
F 1 "1uF" H 11710 5670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 11700 5750 50  0001 C CNN
F 3 "" H 11700 5750 50  0001 C CNN
	1    11700 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 5750 11600 6000
Wire Wire Line
	11800 5750 11800 6000
Wire Wire Line
	11800 6000 11750 6000
Connection ~ 11800 6000
Wire Wire Line
	11200 5900 11200 5750
Wire Wire Line
	11200 5750 11600 5750
Wire Wire Line
	11200 6100 11200 6350
Connection ~ 11600 5750
Wire Wire Line
	11200 6800 11200 7100
Connection ~ 11200 6900
Connection ~ 11200 6850
$Comp
L Earth #PWR50
U 1 1 5B51C6EC
P 12650 7200
F 0 "#PWR50" H 12650 6950 50  0001 C CNN
F 1 "Earth" H 12650 7050 50  0001 C CNN
F 2 "" H 12650 7200 50  0001 C CNN
F 3 "" H 12650 7200 50  0001 C CNN
	1    12650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7500 1300 8650
Wire Wire Line
	1300 7500 1550 7500
$Comp
L Earth #PWR10
U 1 1 5B524D4B
P 1850 7800
F 0 "#PWR10" H 1850 7550 50  0001 C CNN
F 1 "Earth" H 1850 7650 50  0001 C CNN
F 2 "" H 1850 7800 50  0001 C CNN
F 3 "" H 1850 7800 50  0001 C CNN
	1    1850 7800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5B524EBB
P 2350 7650
F 0 "C2" H 2360 7720 50  0000 L CNN
F 1 "1uF" H 2360 7570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2350 7650 50  0001 C CNN
F 3 "" H 2350 7650 50  0001 C CNN
	1    2350 7650
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR14
U 1 1 5B525217
P 2350 7800
F 0 "#PWR14" H 2350 7550 50  0001 C CNN
F 1 "Earth" H 2350 7650 50  0001 C CNN
F 2 "" H 2350 7800 50  0001 C CNN
F 3 "" H 2350 7800 50  0001 C CNN
	1    2350 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7800 2350 7750
Text GLabel 2550 7500 2    60   Input ~ 0
12V
Wire Wire Line
	2150 7500 2550 7500
Wire Wire Line
	2350 7550 2350 7500
Connection ~ 2350 7500
Text GLabel 10900 1450 0    60   Input ~ 0
12V
Wire Wire Line
	10900 1450 11200 1450
Connection ~ 11200 1450
Text GLabel 10750 3750 0    60   Input ~ 0
12V
Wire Wire Line
	11200 3750 10750 3750
Connection ~ 11200 3750
Text GLabel 10800 6350 0    60   Input ~ 0
12V
Wire Wire Line
	11200 6350 10800 6350
Connection ~ 11200 6350
$Comp
L D_Small D8
U 1 1 5B52EBF3
P 9000 8400
F 0 "D8" H 8950 8480 50  0000 L CNN
F 1 "D_Small" H 8850 8320 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-323F" V 9000 8400 50  0001 C CNN
F 3 "" V 9000 8400 50  0001 C CNN
	1    9000 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12950 1650 12950 1600
Connection ~ 11200 2050
Wire Wire Line
	12950 3950 12950 3900
Connection ~ 11200 4350
Wire Wire Line
	12950 6550 12950 6500
Connection ~ 11200 6950
$Comp
L MCP1703A-1502/MB U3
U 1 1 5B50F547
P 1850 7500
F 0 "U3" H 2000 7250 50  0000 C CNN
F 1 "ZXTR2012Z" H 1850 7650 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-89-3" H 1900 7750 50  0001 C CNN
F 3 "" H 1850 7450 50  0001 C CNN
	1    1850 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 1100 12000 1100
Wire Wire Line
	12000 2300 12150 2300
Wire Wire Line
	12150 3400 12000 3400
Wire Wire Line
	12000 4600 12150 4600
Wire Wire Line
	12000 6000 12150 6000
Wire Wire Line
	12000 7200 12150 7200
$Comp
L Earth #PWR48
U 1 1 5B52FE10
P 12650 4600
F 0 "#PWR48" H 12650 4350 50  0001 C CNN
F 1 "Earth" H 12650 4450 50  0001 C CNN
F 2 "" H 12650 4600 50  0001 C CNN
F 3 "" H 12650 4600 50  0001 C CNN
	1    12650 4600
	1    0    0    -1  
$EndComp
Text GLabel 11200 1600 0    60   Input ~ 0
HIN1
Text GLabel 11200 1750 0    60   Input ~ 0
LIN1
Text GLabel 11200 3900 0    60   Input ~ 0
HIN2
Text GLabel 11200 4050 0    60   Input ~ 0
LIN2
Text GLabel 11200 6500 0    60   Input ~ 0
HIN3
Text GLabel 11200 6650 0    60   Input ~ 0
LIN3
$Comp
L C_Small C12
U 1 1 5B538CFA
P 2400 2100
F 0 "C12" H 2410 2170 50  0000 L CNN
F 1 "0.1uF" V 2300 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2400 2100 50  0001 C CNN
F 3 "" H 2400 2100 50  0001 C CNN
	1    2400 2100
	0    1    1    0   
$EndComp
$Comp
L Earth #PWR12
U 1 1 5B538DD7
P 2300 2100
F 0 "#PWR12" H 2300 1850 50  0001 C CNN
F 1 "Earth" H 2300 1950 50  0001 C CNN
F 2 "" H 2300 2100 50  0001 C CNN
F 3 "" H 2300 2100 50  0001 C CNN
	1    2300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2100 2600 2100
Wire Wire Line
	2600 2100 2600 2350
Connection ~ 2600 2350
Text GLabel 1100 2500 2    60   Input ~ 0
RS-A
$Comp
L CONN_01X02 J2
U 1 1 5B53A21D
P 900 2550
F 0 "J2" H 900 2700 50  0000 C CNN
F 1 "RS485" V 1000 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 900 2550 50  0001 C CNN
F 3 "" H 900 2550 50  0001 C CNN
	1    900  2550
	-1   0    0    1   
$EndComp
Text GLabel 1100 2600 2    60   Input ~ 0
RS-B
$Comp
L MA700 U6
U 1 1 5B781547
P 7950 8600
F 0 "U6" H 7950 9550 60  0000 C CNN
F 1 "MA700" H 7900 8200 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 7950 8600 60  0001 C CNN
F 3 "" H 7950 8600 60  0001 C CNN
	1    7950 8600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5B782F56
P 8650 8500
F 0 "C1" H 8660 8570 50  0000 L CNN
F 1 "0.1uF" H 8660 8420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8650 8500 50  0001 C CNN
F 3 "" H 8650 8500 50  0001 C CNN
	1    8650 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 8400 8900 8400
Connection ~ 8650 8400
$Comp
L Earth #PWR40
U 1 1 5B784055
P 8650 8600
F 0 "#PWR40" H 8650 8350 50  0001 C CNN
F 1 "Earth" H 8650 8450 50  0001 C CNN
F 2 "" H 8650 8600 50  0001 C CNN
F 3 "" H 8650 8600 50  0001 C CNN
	1    8650 8600
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR39
U 1 1 5B784A54
P 7900 9100
F 0 "#PWR39" H 7900 8850 50  0001 C CNN
F 1 "Earth" H 7900 8950 50  0001 C CNN
F 2 "" H 7900 9100 50  0001 C CNN
F 3 "" H 7900 9100 50  0001 C CNN
	1    7900 9100
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR38
U 1 1 5B7853C0
P 7450 8850
F 0 "#PWR38" H 7450 8600 50  0001 C CNN
F 1 "Earth" H 7450 8700 50  0001 C CNN
F 2 "" H 7450 8850 50  0001 C CNN
F 3 "" H 7450 8850 50  0001 C CNN
	1    7450 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 8400 4750 8400
$Comp
L +3.3V #PWR41
U 1 1 5B785E48
P 9100 8400
F 0 "#PWR41" H 9100 8250 50  0001 C CNN
F 1 "+3.3V" H 9100 8540 50  0000 C CNN
F 2 "" H 9100 8400 50  0001 C CNN
F 3 "" H 9100 8400 50  0001 C CNN
	1    9100 8400
	0    1    1    0   
$EndComp
Text GLabel 7450 8700 0    60   Input ~ 0
MISO
Text GLabel 7450 8400 0    60   Input ~ 0
CS
Text GLabel 8400 8250 2    60   Input ~ 0
SCK
Text GLabel 7450 8250 0    60   Input ~ 0
MOSI
$EndSCHEMATC
