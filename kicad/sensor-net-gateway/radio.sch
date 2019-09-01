EESchema Schematic File Version 4
LIBS:sensor-net-gateway-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5150 3350 5300 3350
Wire Wire Line
	5300 4050 5150 4050
Wire Wire Line
	5150 4050 5150 3350
Wire Wire Line
	6400 3350 6600 3350
Wire Wire Line
	6400 3450 6600 3450
Wire Wire Line
	6400 3550 6600 3550
Wire Wire Line
	6400 3750 6600 3750
Wire Wire Line
	6400 3850 6600 3850
Wire Wire Line
	4900 3950 5300 3950
Wire Wire Line
	4900 3850 5300 3850
Wire Wire Line
	4900 3750 5300 3750
Wire Wire Line
	4900 3650 5300 3650
Wire Wire Line
	4900 3550 5300 3550
Wire Wire Line
	4900 3450 5300 3450
$Comp
L Device:C C13
U 1 1 5D656D5E
P 7050 3800
F 0 "C13" H 7165 3846 50  0000 L CNN
F 1 "0.1µF" H 7165 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7088 3650 50  0001 C CNN
F 3 "~" H 7050 3800 50  0001 C CNN
	1    7050 3800
	1    0    0    -1  
$EndComp
Text Notes 4400 3050 0    79   ~ 16
Radio Module
Text HLabel 6600 3350 2    50   Input ~ 0
DIO2
Text HLabel 6600 3450 2    50   Input ~ 0
DIO1
Text HLabel 6600 3550 2    50   Input ~ 0
DIO0
Text HLabel 6600 3750 2    50   Input ~ 0
DIO4
Text HLabel 6600 3850 2    50   Input ~ 0
DIO3
Text HLabel 4900 3450 0    50   Input ~ 0
SPI_MISO
Text HLabel 4900 3550 0    50   Input ~ 0
SPI_MOSI
Text HLabel 4900 3650 0    50   Input ~ 0
SPI_CLK
Text HLabel 4900 3750 0    50   Input ~ 0
~SPI_CS
Text HLabel 4900 3850 0    50   Input ~ 0
RESET
Text HLabel 4900 3950 0    50   Input ~ 0
DIO5
Text HLabel 6400 4050 2    50   Input ~ 0
ANT
$Comp
L HopeRF:RFM98 RFM1
U 1 1 5D62B833
P 5850 3700
F 0 "RFM1" H 5850 4297 60  0000 C CNN
F 1 "RFM98" H 5850 4191 60  0000 C CNN
F 2 "HopeRF:RFM98" H 5850 2450 60  0001 C CNN
F 3 "https://github.com/SeeedDocument/RFM95-98_LoRa_Module/blob/master/RFM95_96_97_98_DataSheet.pdf" H 5850 2550 60  0001 C CNN
F 4 "1597-1491-ND" H 5850 2850 50  0001 C CNN "DigiKey_PartNumber"
F 5 "Seeed Technology Co., Ltd" H 5850 2750 50  0001 C CNN "Manufacturer"
F 6 "109990165" H 5850 2650 50  0001 C CNN "Manufacturer_PartNumber"
	1    5850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3950 7050 3950
Text HLabel 7150 3650 2    50   Input ~ 0
3V3
Wire Wire Line
	7150 3650 7050 3650
Wire Wire Line
	7050 3650 6400 3650
Connection ~ 7050 3650
Text HLabel 6150 4400 3    50   Input ~ 0
GND
Wire Wire Line
	7050 4400 7050 3950
Connection ~ 7050 3950
Wire Wire Line
	5150 4400 5150 4050
Wire Wire Line
	5150 4400 7050 4400
Connection ~ 5150 4050
$EndSCHEMATC
