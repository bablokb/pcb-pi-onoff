EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pi OnOff Hat"
Date "2021-06-08"
Rev "0.9"
Comp "Bernhard Bablok"
Comment1 "https://github.com/bablokb/pcb-pi-onoff"
Comment2 ""
Comment3 "from https://www.studiopieters.nl"
Comment4 "Based on Raspberry Pi Zero W - Hat Template"
$EndDescr
$Comp
L power:+5V #PWR0101
U 1 1 5F70BB94
P 2500 800
F 0 "#PWR0101" H 2500 650 50  0001 C CNN
F 1 "+5V" H 2500 940 50  0000 C CNN
F 2 "" H 2500 800 50  0000 C CNN
F 3 "" H 2500 800 50  0000 C CNN
	1    2500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 800  2500 950 
Wire Wire Line
	2500 950  2300 950 
Wire Wire Line
	2500 1050 2300 1050
Connection ~ 2500 950 
$Comp
L power:GND #PWR0102
U 1 1 5F70BB9E
P 2400 3000
F 0 "#PWR0102" H 2400 2750 50  0001 C CNN
F 1 "GND" H 2400 2850 50  0000 C CNN
F 2 "" H 2400 3000 50  0000 C CNN
F 3 "" H 2400 3000 50  0000 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1150 2400 1550
Wire Wire Line
	2400 2550 2300 2550
Wire Wire Line
	2400 2350 2300 2350
Connection ~ 2400 2550
Wire Wire Line
	2400 1850 2300 1850
Connection ~ 2400 2350
Wire Wire Line
	2400 1550 2300 1550
Connection ~ 2400 1850
$Comp
L power:GND #PWR0103
U 1 1 5F70BBAC
P 1700 3000
F 0 "#PWR0103" H 1700 2750 50  0001 C CNN
F 1 "GND" H 1700 2850 50  0000 C CNN
F 2 "" H 1700 3000 50  0000 C CNN
F 3 "" H 1700 3000 50  0000 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 1800 2850
Wire Wire Line
	1700 1350 1700 2150
Wire Wire Line
	1700 2150 1800 2150
Connection ~ 1700 2850
Connection ~ 1600 950 
Wire Wire Line
	1600 1750 1800 1750
Wire Wire Line
	1600 950  1800 950 
Wire Wire Line
	1600 800  1600 950 
$Comp
L power:+3.3V #PWR0104
U 1 1 5F70BBBA
P 1600 800
F 0 "#PWR0104" H 1600 650 50  0001 C CNN
F 1 "+3.3V" H 1600 940 50  0000 C CNN
F 2 "" H 1600 800 50  0000 C CNN
F 3 "" H 1600 800 50  0000 C CNN
	1    1600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1350 1800 1350
Connection ~ 1700 2150
Wire Wire Line
	1800 1050 650  1050
Wire Wire Line
	650  1150 1800 1150
Wire Wire Line
	650  1450 1800 1450
Text Label 650  1050 0    50   ~ 0
GPIO2(SDA1)
Text Label 650  1150 0    50   ~ 0
GPIO3(SCL1)
Text Label 650  1450 0    50   ~ 0
GPIO17
Text Label 650  1250 0    50   ~ 0
GPIO4
Wire Wire Line
	2400 1150 2300 1150
Connection ~ 2400 1550
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5F70BBFA
P 2000 1850
F 0 "J1" H 2050 2967 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2050 2876 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H -2850 900 50  0001 C CNN
F 3 "" H -2850 900 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 950  2500 1050
Wire Wire Line
	2400 2550 2400 3000
Wire Wire Line
	2400 2350 2400 2550
Wire Wire Line
	2400 1850 2400 2350
Wire Wire Line
	1700 2850 1700 3000
Wire Wire Line
	1600 950  1600 1750
Wire Wire Line
	1700 2150 1700 2850
Wire Wire Line
	2400 1550 2400 1850
$Comp
L Device:R R7
U 1 1 60C58781
P 7150 2150
F 0 "R7" H 7220 2196 50  0000 L CNN
F 1 "1k" H 7220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 2150 50  0001 C CNN
F 3 "~" H 7150 2150 50  0001 C CNN
F 4 "C17513" H 7150 2150 50  0001 C CNN "LCSC"
	1    7150 2150
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC12:PIC12F1840-IP U2
U 1 1 60C58787
P 7850 4500
F 0 "U2" H 8100 5200 50  0000 C CNN
F 1 "PIC12F1840" H 8150 5050 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 8450 5150 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 60C5878D
P 5250 4300
F 0 "J3" H 5150 4700 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5100 4600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5250 4300 50  0001 C CNN
F 3 "~" H 5250 4300 50  0001 C CNN
	1    5250 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60C58793
P 9500 4600
F 0 "J6" H 9650 4400 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9750 4300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9500 4600 50  0001 C CNN
F 3 "~" H 9500 4600 50  0001 C CNN
	1    9500 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60C58799
P 6250 4900
F 0 "R4" H 6320 4946 50  0000 L CNN
F 1 "1k" H 6320 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6180 4900 50  0001 C CNN
F 3 "~" H 6250 4900 50  0001 C CNN
F 4 "C17513" H 6250 4900 50  0001 C CNN "LCSC"
	1    6250 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60C5879F
P 6600 1550
F 0 "R5" H 6670 1596 50  0000 L CNN
F 1 "10k" H 6670 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 1550 50  0001 C CNN
F 3 "~" H 6600 1550 50  0001 C CNN
F 4 "C17414" H 6600 1550 50  0001 C CNN "LCSC"
	1    6600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60C587A5
P 7850 5300
F 0 "#PWR011" H 7850 5050 50  0001 C CNN
F 1 "GND" H 7855 5127 50  0000 C CNN
F 2 "" H 7850 5300 50  0001 C CNN
F 3 "" H 7850 5300 50  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60C587AB
P 5850 4300
F 0 "#PWR05" H 5850 4050 50  0001 C CNN
F 1 "GND" V 5855 4172 50  0000 R CNN
F 2 "" H 5850 4300 50  0001 C CNN
F 3 "" H 5850 4300 50  0001 C CNN
	1    5850 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VP #PWR07
U 1 1 60C587B1
P 6400 4200
F 0 "#PWR07" H 6400 4050 50  0001 C CNN
F 1 "+5VP" H 6415 4373 50  0000 C CNN
F 2 "" H 6400 4200 50  0001 C CNN
F 3 "" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4600 7250 4600
Wire Wire Line
	7250 4400 6250 4400
Wire Wire Line
	6250 4750 6250 4400
Connection ~ 6250 4400
Connection ~ 6650 4500
Wire Wire Line
	6650 4500 5450 4500
Wire Wire Line
	5450 4300 5850 4300
Wire Wire Line
	5450 4200 6400 4200
Wire Wire Line
	7100 4200 7100 3900
Wire Wire Line
	7100 3900 7350 3900
Wire Wire Line
	8600 4400 8600 3650
Wire Wire Line
	5450 3650 5450 4100
Text Notes 9800 4600 0    50   ~ 0
PIC_GPIO
NoConn ~ 5450 4600
Text Notes 5250 4750 0    50   ~ 0
ISCP
Text Label 5550 4400 0    50   ~ 0
DAT
Text Label 5550 4500 0    50   ~ 0
CLK
Text Label 5450 4100 0    50   ~ 0
MCLR
$Comp
L Device:C C3
U 1 1 60C587CA
P 7350 3750
F 0 "C3" H 7465 3796 50  0000 L CNN
F 1 "100nF" H 7465 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7388 3600 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
F 4 "C24497" H 7350 3750 50  0001 C CNN "LCSC"
	1    7350 3750
	1    0    0    -1  
$EndComp
Connection ~ 7350 3900
Wire Wire Line
	7350 3900 7850 3900
$Comp
L power:GND #PWR010
U 1 1 60C587D2
P 7350 3600
F 0 "#PWR010" H 7350 3350 50  0001 C CNN
F 1 "GND" H 7355 3427 50  0000 C CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	-1   0    0    1   
$EndComp
Text Label 5550 4200 0    50   ~ 0
Vdd
Wire Wire Line
	8450 4400 8600 4400
Wire Wire Line
	7150 2000 7150 1700
Wire Wire Line
	7150 1700 6600 1700
Wire Wire Line
	6950 1400 6600 1400
Connection ~ 6600 1400
Wire Wire Line
	7850 5100 7850 5300
$Comp
L power:GND #PWR03
U 1 1 60C587E1
P 4900 3450
F 0 "#PWR03" H 4900 3200 50  0001 C CNN
F 1 "GND" H 4905 3277 50  0000 C CNN
F 2 "" H 4900 3450 50  0001 C CNN
F 3 "" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1400 7600 1400
Text Label 5700 5200 2    50   ~ 0
GPIO4
Text Label 5100 5550 2    50   ~ 0
GPIO17
$Comp
L Device:R R3
U 1 1 60C587F3
P 5700 5550
F 0 "R3" V 5493 5550 50  0000 C CNN
F 1 "6.2k" V 5584 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5630 5550 50  0001 C CNN
F 3 "~" H 5700 5550 50  0001 C CNN
F 4 "C17767" H 5700 5550 50  0001 C CNN "LCSC"
	1    5700 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60C587F9
P 5350 5900
F 0 "R2" H 5420 5946 50  0000 L CNN
F 1 "12k" H 5420 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 5900 50  0001 C CNN
F 3 "~" H 5350 5900 50  0001 C CNN
F 4 "C17444" H 5350 5900 50  0001 C CNN "LCSC"
	1    5350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60C587FF
P 5350 6050
F 0 "#PWR04" H 5350 5800 50  0001 C CNN
F 1 "GND" H 5355 5877 50  0000 C CNN
F 2 "" H 5350 6050 50  0001 C CNN
F 3 "" H 5350 6050 50  0001 C CNN
	1    5350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5550 5350 5550
Wire Wire Line
	5350 5750 5350 5550
Connection ~ 5350 5550
Wire Wire Line
	5350 5550 5100 5550
Text Notes 4950 5100 0    50   ~ 0
Pi->PIC (gpio-poweroff)
Text Notes 4300 5450 0    50   ~ 0
PIC->Pi (gpio-shutdown)
Wire Wire Line
	5450 4400 6250 4400
Wire Wire Line
	6250 5050 6250 5200
Wire Wire Line
	5700 5200 6250 5200
Wire Wire Line
	6650 4500 7250 4500
Wire Wire Line
	6650 5550 5850 5550
Text Notes 9750 4550 2    50   ~ 0
RA4
Text Notes 9750 4650 2    50   ~ 0
RA2
Connection ~ 6400 4200
Wire Wire Line
	5450 3650 5750 3650
$Comp
L power:+5P #PWR08
U 1 1 60C58816
P 5950 2850
F 0 "#PWR08" H 5950 2700 50  0001 C CNN
F 1 "+5P" H 5950 2990 50  0000 C CNN
F 2 "" H 5950 2850 50  0000 C CNN
F 3 "" H 5950 2850 50  0000 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60C5881C
P 5750 3650
F 0 "#FLG03" H 5750 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 3823 50  0000 C CNN
F 2 "" H 5750 3650 50  0001 C CNN
F 3 "~" H 5750 3650 50  0001 C CNN
	1    5750 3650
	-1   0    0    1   
$EndComp
Connection ~ 5750 3650
Wire Wire Line
	5750 3650 8600 3650
Wire Wire Line
	6650 4500 6650 5550
Wire Wire Line
	6100 3100 6350 3100
Connection ~ 6350 3100
Wire Wire Line
	6400 4200 6750 4200
Wire Wire Line
	6750 4200 7100 4200
Connection ~ 6750 4200
$Comp
L Device:R R8
U 1 1 60C5882C
P 7900 1100
F 0 "R8" V 7750 1050 50  0000 L CNN
F 1 "1k" V 8000 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7830 1100 50  0001 C CNN
F 3 "~" H 7900 1100 50  0001 C CNN
F 4 "C17513" H 7900 1100 50  0001 C CNN "LCSC"
	1    7900 1100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 60C58832
P 8200 1100
F 0 "D2" H 8193 845 50  0000 C CNN
F 1 "LED grün" H 8193 936 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8200 1100 50  0001 C CNN
F 3 "~" H 8200 1100 50  0001 C CNN
F 4 "C2297" H 8200 1100 50  0001 C CNN "LCSC"
	1    8200 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60C58838
P 8450 1100
F 0 "#PWR012" H 8450 850 50  0001 C CNN
F 1 "GND" H 8455 927 50  0000 C CNN
F 2 "" H 8450 1100 50  0001 C CNN
F 3 "" H 8450 1100 50  0001 C CNN
	1    8450 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 800  7600 1100
Wire Wire Line
	8350 1100 8450 1100
Wire Wire Line
	7750 1100 7600 1100
Connection ~ 7600 1100
Wire Wire Line
	7600 1100 7600 1400
$Comp
L Device:R R6
U 1 1 60C58843
P 6650 2850
F 0 "R6" V 6500 2800 50  0000 L CNN
F 1 "1k" V 6750 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6580 2850 50  0001 C CNN
F 3 "~" H 6650 2850 50  0001 C CNN
F 4 "C17513" H 6650 2850 50  0001 C CNN "LCSC"
	1    6650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60C58849
P 6950 2850
F 0 "D1" H 6943 2595 50  0000 C CNN
F 1 "LED Red" H 6943 2686 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6950 2850 50  0001 C CNN
F 3 "~" H 6950 2850 50  0001 C CNN
F 4 "C84256" H 6950 2850 50  0001 C CNN "LCSC"
	1    6950 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60C5884F
P 7200 2850
F 0 "#PWR09" H 7200 2600 50  0001 C CNN
F 1 "GND" H 7205 2677 50  0000 C CNN
F 2 "" H 7200 2850 50  0001 C CNN
F 3 "" H 7200 2850 50  0001 C CNN
	1    7200 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 2850 7200 2850
Wire Wire Line
	6500 2850 6350 2850
Connection ~ 6350 2850
Wire Wire Line
	6350 2850 6350 3100
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60C58859
P 6950 3300
F 0 "J5" H 6800 3200 50  0000 L CNN
F 1 "RUN/~PGM~" H 6550 3300 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6950 3300 50  0001 C CNN
F 3 "~" H 6950 3300 50  0001 C CNN
	1    6950 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 3100 6750 3200
Wire Wire Line
	6750 3300 6750 3800
Wire Wire Line
	6350 3100 6750 3100
$Comp
L Switch:SW_Push SW1
U 1 1 60C58863
P 9550 3950
F 0 "SW1" H 9550 4235 50  0000 C CNN
F 1 "SW_Push" H 9550 4144 50  0000 C CNN
F 2 "user:SW_PUSH_SLIM_1x4" H 9550 4150 50  0001 C CNN
F 3 "~" H 9550 4150 50  0001 C CNN
	1    9550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3950 9200 3950
$Comp
L power:GND #PWR016
U 1 1 60C5886A
P 10050 3950
F 0 "#PWR016" H 10050 3700 50  0001 C CNN
F 1 "GND" H 10055 3777 50  0000 C CNN
F 2 "" H 10050 3950 50  0001 C CNN
F 3 "" H 10050 3950 50  0001 C CNN
	1    10050 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 3950 10050 3950
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 60C58871
P 9600 4300
F 0 "J7" V 9600 4500 50  0000 R CNN
F 1 "Conn_SW1" V 9600 4900 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9600 4300 50  0001 C CNN
F 3 "~" H 9600 4300 50  0001 C CNN
	1    9600 4300
	0    1    -1   0   
$EndComp
Wire Wire Line
	9750 3950 9750 4100
Wire Wire Line
	9750 4100 9600 4100
Connection ~ 9750 3950
Wire Wire Line
	9350 3950 9350 4100
Wire Wire Line
	9350 4100 9500 4100
Connection ~ 9350 3950
Wire Wire Line
	9150 4600 9300 4600
Wire Wire Line
	9200 3950 9200 4500
Connection ~ 9200 4500
Wire Wire Line
	9200 4500 9300 4500
$Comp
L Timer_RTC:DS3231M U3
U 1 1 60C588E4
P 10050 1750
F 0 "U3" H 10200 2200 50  0000 C CNN
F 1 "DS3231M" H 10300 2100 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 10050 1150 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 10320 1800 50  0001 C CNN
	1    10050 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 60C588EA
P 9750 2900
F 0 "J8" H 9850 3250 50  0000 C CNN
F 1 "Conn_01x02_Bat" H 9850 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9750 2900 50  0001 C CNN
F 3 "~" H 9750 2900 50  0001 C CNN
	1    9750 2900
	1    0    0    -1  
$EndComp
Text Label 9300 1650 2    50   ~ 0
GPIO2(SDA1)
Text Label 9300 1550 2    50   ~ 0
GPIO3(SCL1)
Text Label 10750 1850 0    50   ~ 0
~INT
$Comp
L power:GND #PWR015
U 1 1 60C588F6
P 10050 2150
F 0 "#PWR015" H 10050 1900 50  0001 C CNN
F 1 "GND" H 10055 1977 50  0000 C CNN
F 2 "" H 10050 2150 50  0001 C CNN
F 3 "" H 10050 2150 50  0001 C CNN
	1    10050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60C588FC
P 9950 900
F 0 "R9" H 9880 854 50  0000 R CNN
F 1 "10k" H 9880 945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9880 900 50  0001 C CNN
F 3 "~" H 9950 900 50  0001 C CNN
F 4 "C17414" H 9950 900 50  0001 C CNN "LCSC"
	1    9950 900 
	-1   0    0    1   
$EndComp
$Comp
L power:+5P #PWR014
U 1 1 60C58902
P 9750 750
F 0 "#PWR014" H 9750 600 50  0001 C CNN
F 1 "+5P" H 9750 890 50  0000 C CNN
F 2 "" H 9750 750 50  0000 C CNN
F 3 "" H 9750 750 50  0000 C CNN
	1    9750 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 750  9950 750 
Wire Wire Line
	10550 1850 10750 1850
Wire Wire Line
	9550 1550 9300 1550
Wire Wire Line
	9550 1650 9300 1650
Text Label 10300 2900 0    50   ~ 0
VBAT
Text Label 10150 1050 0    50   ~ 0
VBAT
Wire Wire Line
	10050 1350 10050 1200
Wire Wire Line
	10050 1050 10150 1050
Wire Wire Line
	10300 2900 9950 2900
Text Label 9800 950  2    50   ~ 0
VCC
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60C58915
P 9500 1250
F 0 "#FLG04" H 9500 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 1423 50  0000 C CNN
F 2 "" H 9500 1250 50  0001 C CNN
F 3 "~" H 9500 1250 50  0001 C CNN
	1    9500 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 1250 9500 1350
Wire Wire Line
	9500 1350 9950 1350
Connection ~ 9950 1350
$Comp
L power:PWR_FLAG #FLG05
U 1 1 60C5891E
P 10650 1200
F 0 "#FLG05" H 10650 1275 50  0001 C CNN
F 1 "PWR_FLAG" V 10550 1350 50  0000 C CNN
F 2 "" H 10650 1200 50  0001 C CNN
F 3 "~" H 10650 1200 50  0001 C CNN
	1    10650 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	10650 1200 10050 1200
$Comp
L Device:C C4
U 1 1 60C58926
P 9400 900
F 0 "C4" V 9148 900 50  0000 C CNN
F 1 "100nF" V 9239 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9438 750 50  0001 C CNN
F 3 "~" H 9400 900 50  0001 C CNN
F 4 "C24497" H 9400 900 50  0001 C CNN "LCSC"
	1    9400 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 1050 9950 1100
Wire Wire Line
	9800 950  9800 1100
Wire Wire Line
	9800 1100 9950 1100
Connection ~ 9950 1100
Wire Wire Line
	9950 1100 9950 1350
Wire Wire Line
	9550 900  9550 1100
Wire Wire Line
	9550 1100 9800 1100
Connection ~ 9800 1100
$Comp
L power:GND #PWR013
U 1 1 60C58934
P 9250 900
F 0 "#PWR013" H 9250 650 50  0001 C CNN
F 1 "GND" H 9255 727 50  0000 C CNN
F 2 "" H 9250 900 50  0001 C CNN
F 3 "" H 9250 900 50  0001 C CNN
	1    9250 900 
	0    1    1    0   
$EndComp
Text Label 9000 4000 2    50   ~ 0
~INT
Wire Wire Line
	10550 1550 10750 1550
Text Label 9550 1950 2    50   ~ 0
~RST
Wire Wire Line
	7150 2300 8800 2300
Wire Wire Line
	8800 2300 8800 4600
Text Notes 7800 2250 0    50   ~ 0
<- from PIC
Text Notes 6500 750  0    50   ~ 0
<- to Pi (+5V)
$Comp
L Connector:USB_B_Micro J4
U 1 1 60C03DD4
P 5450 3050
F 0 "J4" H 5507 3517 50  0000 C CNN
F 1 "USB_B_Micro" H 5507 3426 50  0000 C CNN
F 2 "user:USB_Micro-B_JLCPCB_40942" H 5600 3000 50  0001 C CNN
F 3 "~" H 5600 3000 50  0001 C CNN
F 4 "C40942" H 5450 3050 50  0001 C CNN "LCSC"
	1    5450 3050
	1    0    0    -1  
$EndComp
NoConn ~ 5750 3050
NoConn ~ 5750 3150
NoConn ~ 5750 3250
Wire Wire Line
	4900 3450 5350 3450
Connection ~ 5350 3450
Wire Wire Line
	5350 3450 5450 3450
Wire Wire Line
	5750 2850 5950 2850
Wire Wire Line
	6100 2850 6100 3100
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60C62320
P 2900 800
F 0 "#FLG02" H 2900 875 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 973 50  0000 C CNN
F 2 "" H 2900 800 50  0001 C CNN
F 3 "~" H 2900 800 50  0001 C CNN
	1    2900 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 950  2900 950 
Wire Wire Line
	2900 950  2900 800 
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60C6A49C
P 1150 800
F 0 "#FLG01" H 1150 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 973 50  0000 C CNN
F 2 "" H 1150 800 50  0001 C CNN
F 3 "~" H 1150 800 50  0001 C CNN
	1    1150 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 800  1150 950 
Wire Wire Line
	1150 950  1600 950 
$Comp
L power:+5V #PWR06
U 1 1 60C7295A
P 6200 800
F 0 "#PWR06" H 6200 650 50  0001 C CNN
F 1 "+5V" V 6200 1050 50  0000 C CNN
F 2 "" H 6200 800 50  0000 C CNN
F 3 "" H 6200 800 50  0000 C CNN
	1    6200 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 800  6200 800 
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 60C7C187
P 7150 1500
F 0 "Q1" V 7492 1500 50  0000 C CNN
F 1 "AO3401A" V 7401 1500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7350 1425 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 7150 1500 50  0001 L CNN
F 4 "C15127" H 7150 1500 50  0001 C CNN "LCSC"
	1    7150 1500
	0    1    -1   0   
$EndComp
Connection ~ 7150 1700
Text Notes 9750 4750 2    50   ~ 0
RA5
Wire Wire Line
	8450 4600 8800 4600
Wire Wire Line
	9300 4700 8800 4700
Wire Wire Line
	8800 4700 8800 4600
Connection ~ 8800 4600
Wire Wire Line
	5450 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3400
Connection ~ 5450 3450
NoConn ~ 9550 1950
NoConn ~ 10750 1550
$Comp
L power:GND #PWR017
U 1 1 60CB78AA
P 10200 3000
F 0 "#PWR017" H 10200 2750 50  0001 C CNN
F 1 "GND" V 10200 2800 50  0000 C CNN
F 2 "" H 10200 3000 50  0001 C CNN
F 3 "" H 10200 3000 50  0001 C CNN
	1    10200 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9950 3000 10200 3000
Connection ~ 10050 1200
Wire Wire Line
	10050 1200 10050 1050
$Comp
L Interface_Optical:TSOP45xx U1
U 1 1 60CCA451
P 2850 6550
F 0 "U1" H 2838 6975 50  0000 C CNN
F 1 "TSOP4838" H 2838 6884 50  0000 C CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 2800 6175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82460/tsop45.pdf" H 3500 6850 50  0001 C CNN
	1    2850 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60CCB815
P 3700 6750
F 0 "#PWR01" H 3700 6500 50  0001 C CNN
F 1 "GND" V 3700 6500 50  0000 C CNN
F 2 "" H 3700 6750 50  0000 C CNN
F 3 "" H 3700 6750 50  0000 C CNN
	1    3700 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 60CCD0C3
P 3550 6500
F 0 "C1" H 3665 6546 50  0000 L CNN
F 1 "100nF" H 3665 6455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 6350 50  0001 C CNN
F 3 "~" H 3550 6500 50  0001 C CNN
F 4 "C24497" H 3550 6500 50  0001 C CNN "LCSC"
	1    3550 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60CCE2E5
P 3950 6350
F 0 "R1" V 3800 6300 50  0000 L CNN
F 1 "100" V 3950 6300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 6350 50  0001 C CNN
F 3 "~" H 3950 6350 50  0001 C CNN
F 4 "C17408" H 3950 6350 50  0001 C CNN "LCSC"
	1    3950 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 6350 3550 6350
Connection ~ 3550 6350
Wire Wire Line
	3550 6350 3800 6350
Wire Wire Line
	3550 6650 3550 6750
Connection ~ 3550 6750
Wire Wire Line
	3550 6750 3700 6750
Wire Wire Line
	3250 6750 3550 6750
Text Label 7100 4600 2    50   ~ 0
RA2
Text Label 9150 4600 2    50   ~ 0
RA2
Wire Wire Line
	9000 4000 9000 4500
Wire Wire Line
	8450 4500 9000 4500
Connection ~ 9000 4500
Wire Wire Line
	9000 4500 9200 4500
Text Label 3250 6550 0    50   ~ 0
RA2
Wire Wire Line
	6350 1400 6350 2850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60D38E46
P 6750 3800
F 0 "#FLG0101" H 6750 3875 50  0001 C CNN
F 1 "PWR_FLAG" V 6750 4100 50  0000 C CNN
F 2 "" H 6750 3800 50  0001 C CNN
F 3 "~" H 6750 3800 50  0001 C CNN
	1    6750 3800
	0    -1   -1   0   
$EndComp
Connection ~ 6750 3800
Wire Wire Line
	6750 3800 6750 4200
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60D39CCD
P 3550 6150
F 0 "#FLG0102" H 3550 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 6350 50  0000 C CNN
F 2 "" H 3550 6150 50  0001 C CNN
F 3 "~" H 3550 6150 50  0001 C CNN
	1    3550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6150 3550 6350
$Comp
L power:+5P #PWR0105
U 1 1 60D4283E
P 4100 6350
F 0 "#PWR0105" H 4100 6200 50  0001 C CNN
F 1 "+5P" V 4100 6600 50  0000 C CNN
F 2 "" H 4100 6350 50  0000 C CNN
F 3 "" H 4100 6350 50  0000 C CNN
	1    4100 6350
	0    1    1    0   
$EndComp
Connection ~ 5950 2850
Wire Wire Line
	5950 2850 6100 2850
Wire Wire Line
	6350 1400 6600 1400
NoConn ~ 2300 1450
NoConn ~ 2300 1250
NoConn ~ 2300 1350
NoConn ~ 2300 1650
NoConn ~ 2300 1750
NoConn ~ 2300 1950
NoConn ~ 2300 2150
NoConn ~ 2300 2250
NoConn ~ 2300 2450
NoConn ~ 2300 2750
NoConn ~ 2300 2850
NoConn ~ 1800 2650
NoConn ~ 1800 2550
NoConn ~ 1800 2450
NoConn ~ 1800 2350
NoConn ~ 1800 2250
NoConn ~ 1800 1650
NoConn ~ 1800 1550
Wire Wire Line
	650  1250 1800 1250
NoConn ~ 2300 2650
NoConn ~ 1800 2750
$Comp
L Device:C C2
U 1 1 60BFD4C6
P 6100 3250
F 0 "C2" H 6215 3296 50  0000 L CNN
F 1 "47µF" H 6215 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6138 3100 50  0001 C CNN
F 3 "~" H 6100 3250 50  0001 C CNN
F 4 "C96123" H 6100 3250 50  0001 C CNN "LCSC"
	1    6100 3250
	1    0    0    -1  
$EndComp
Connection ~ 6100 3100
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 60BFEDEF
P 800 4100
F 0 "J2" H 1100 4550 50  0000 C CNN
F 1 "Conn_01x04_I2C" H 1100 4400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 800 4100 50  0001 C CNN
F 3 "~" H 800 4100 50  0001 C CNN
	1    800  4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60BFFA58
P 1250 3950
F 0 "#PWR0106" H 1250 3700 50  0001 C CNN
F 1 "GND" V 1250 3700 50  0000 C CNN
F 2 "" H 1250 3950 50  0001 C CNN
F 3 "" H 1250 3950 50  0001 C CNN
	1    1250 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 60C00252
P 1250 4100
F 0 "#PWR0107" H 1250 3950 50  0001 C CNN
F 1 "+3.3V" V 1250 4350 50  0000 C CNN
F 2 "" H 1250 4100 50  0000 C CNN
F 3 "" H 1250 4100 50  0000 C CNN
	1    1250 4100
	0    1    1    0   
$EndComp
Text Label 1400 4250 0    50   ~ 0
GPIO3(SCL1)
Text Label 1400 4350 0    50   ~ 0
GPIO2(SDA1)
Wire Wire Line
	1000 4000 1250 4000
Wire Wire Line
	1000 4100 1250 4100
Wire Wire Line
	1000 4200 1250 4200
Wire Wire Line
	1250 4200 1250 4250
Wire Wire Line
	1000 4300 1250 4300
Wire Wire Line
	1250 4300 1250 4350
Wire Wire Line
	1250 4000 1250 3950
Wire Wire Line
	1250 4250 1400 4250
Wire Wire Line
	1250 4350 1400 4350
Wire Notes Line
	650  3550 650  4500
Wire Notes Line
	650  4500 1950 4500
Wire Notes Line
	1950 4500 1950 3550
Wire Notes Line
	1950 3550 650  3550
Text Notes 1500 4500 0    50   ~ 0
I2C-extern
Wire Wire Line
	650  1850 1800 1850
Text Label 650  1850 0    50   ~ 0
GPIO10(SPI-TX)
Wire Wire Line
	650  1950 1800 1950
Text Label 650  1950 0    50   ~ 0
GPIO9(SPI-RX)
Wire Wire Line
	650  2050 1800 2050
Text Label 650  2050 0    50   ~ 0
GPIO11(SPI-CLK)
Wire Wire Line
	3450 2050 2300 2050
Text Label 3450 2050 2    50   ~ 0
GPIO8(SPI-CE0)
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 60C64E02
P 2500 4100
F 0 "J9" H 2750 4550 50  0000 C CNN
F 1 "Conn_01x06_SPI" H 2800 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2500 4100 50  0001 C CNN
F 3 "~" H 2500 4100 50  0001 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
Text Label 3050 3900 0    50   ~ 0
GPIO9(SPI-RX)
Text Label 3050 4000 0    50   ~ 0
GPIO8(SPI-CE0)
Text Label 3050 4100 0    50   ~ 0
GPIO10(SPI-TX)
Text Label 3050 4200 0    50   ~ 0
GPIO11(SPI-CLK)
$Comp
L power:GND #PWR02
U 1 1 60C65E52
P 3050 4300
F 0 "#PWR02" H 3050 4050 50  0001 C CNN
F 1 "GND" V 3050 4050 50  0000 C CNN
F 2 "" H 3050 4300 50  0001 C CNN
F 3 "" H 3050 4300 50  0001 C CNN
	1    3050 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 60C6639C
P 3050 4400
F 0 "#PWR018" H 3050 4250 50  0001 C CNN
F 1 "+3.3V" V 3050 4650 50  0000 C CNN
F 2 "" H 3050 4400 50  0000 C CNN
F 3 "" H 3050 4400 50  0000 C CNN
	1    3050 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3900 3050 3900
Wire Wire Line
	2700 4000 3050 4000
Wire Wire Line
	2700 4100 3050 4100
Wire Wire Line
	2700 4200 3050 4200
Wire Wire Line
	2700 4300 3050 4300
Wire Wire Line
	2700 4400 3050 4400
Wire Notes Line
	2400 3550 2400 4500
Wire Notes Line
	2400 4500 3900 4500
Wire Notes Line
	3900 4500 3900 3550
Wire Notes Line
	3900 3550 2400 3550
Text Notes 3450 4500 0    50   ~ 0
SPI-extern
$EndSCHEMATC
