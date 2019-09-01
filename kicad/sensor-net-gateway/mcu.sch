EESchema Schematic File Version 4
LIBS:sensor-net-gateway-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
	8450 1700 8650 1700
Wire Wire Line
	8450 2350 8450 2100
Wire Wire Line
	8450 1800 8650 1800
Wire Wire Line
	8650 1900 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8450 1800
Wire Wire Line
	8650 2100 8450 2100
Connection ~ 8450 2100
Wire Wire Line
	8450 2100 8450 1900
Text Label 10200 1700 0    50   ~ 0
SWD_IO
Text Label 10200 1800 0    50   ~ 0
SWD_CLK
Text Label 10200 2100 0    50   ~ 0
~SWD_RST
Wire Wire Line
	10200 2100 9950 2100
Wire Wire Line
	9950 1800 10200 1800
Wire Wire Line
	9950 1700 10200 1700
NoConn ~ 9950 1900
$Comp
L Device:R R3
U 1 1 5C014BF1
P 5000 3100
F 0 "R3" V 4793 3100 50  0000 C CNN
F 1 "10k" V 4884 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 3100 50  0001 C CNN
F 3 "~" H 5000 3100 50  0001 C CNN
	1    5000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 3100 5150 3100
Wire Wire Line
	5450 3100 5450 3400
$Comp
L Device:C C17
U 1 1 5C018CD5
P 4450 3450
F 0 "C17" H 4565 3496 50  0000 L CNN
F 1 "0.1µF" H 4565 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4488 3300 50  0001 C CNN
F 3 "~" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2950 4450 3100
Wire Wire Line
	4450 3100 4850 3100
Connection ~ 4450 3100
Wire Wire Line
	4450 3100 4450 3250
Wire Wire Line
	5350 3400 5350 3250
Wire Wire Line
	5350 3250 4450 3250
Connection ~ 4450 3250
Wire Wire Line
	4450 3250 4450 3300
Wire Wire Line
	4450 3900 4800 3900
$Comp
L Device:C C18
U 1 1 5C01C78B
P 6900 4950
F 0 "C18" H 7015 4996 50  0000 L CNN
F 1 "0.1µF" H 7015 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6938 4800 50  0001 C CNN
F 3 "~" H 6900 4950 50  0001 C CNN
	1    6900 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5C01C7DF
P 7350 4950
F 0 "C19" H 7465 4996 50  0000 L CNN
F 1 "10µF" H 7465 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7388 4800 50  0001 C CNN
F 3 "~" H 7350 4950 50  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5300 7350 5200
Wire Wire Line
	6600 4600 6900 4600
Wire Wire Line
	6900 4600 6900 4800
Wire Wire Line
	6900 4600 7350 4600
Wire Wire Line
	7350 4600 7350 4800
Connection ~ 6900 4600
Wire Wire Line
	7600 4600 7350 4600
Connection ~ 7350 4600
Wire Wire Line
	7350 5200 6900 5200
Wire Wire Line
	6900 5200 6900 5100
Connection ~ 7350 5200
Wire Wire Line
	7350 5200 7350 5100
Wire Wire Line
	6900 5200 6050 5200
Wire Wire Line
	6050 5200 6050 5100
Connection ~ 6900 5200
$Comp
L Device:C C16
U 1 1 5C027DEA
P 4050 4450
F 0 "C16" H 4165 4496 50  0000 L CNN
F 1 "0.1µF" H 4165 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 4300 50  0001 C CNN
F 3 "~" H 4050 4450 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5C027E4E
P 3650 4450
F 0 "C15" H 3765 4496 50  0000 L CNN
F 1 "1µF" H 3765 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3688 4300 50  0001 C CNN
F 3 "~" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4300 3650 4300
Wire Wire Line
	3650 4300 4050 4300
Connection ~ 3650 4300
Wire Wire Line
	4050 4300 4800 4300
Connection ~ 4050 4300
Wire Wire Line
	3650 4600 3650 4650
Wire Wire Line
	3650 4650 3850 4650
Wire Wire Line
	3850 4650 3850 4750
Wire Wire Line
	3850 4650 4050 4650
Wire Wire Line
	4050 4650 4050 4600
Connection ~ 3850 4650
$Comp
L Device:C C14
U 1 1 5C02F66C
P 3050 4450
F 0 "C14" H 3165 4496 50  0000 L CNN
F 1 "0.1µF" H 3165 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 4300 50  0001 C CNN
F 3 "~" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C02F74A
P 2550 4450
F 0 "SW1" V 2596 4402 50  0000 R CNN
F 1 "SW_Push" V 2505 4402 50  0000 R CNN
F 2 "TEConnectivity:1825910-6" H 2550 4650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2550 4650 50  0001 C CNN
F 4 "450-1650-ND" V 2550 4450 50  0001 C CNN "DigiKey_PartNumber"
F 5 "TE Connectivity ALCOSWITCH Switches" V 2550 4450 50  0001 C CNN "Manufacturer"
F 6 "1825910-6" V 2550 4450 50  0001 C CNN "Manufacturer_PartNumber"
	1    2550 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4200 3050 4200
Wire Wire Line
	2550 4200 2550 4250
Wire Wire Line
	3050 4300 3050 4200
Connection ~ 3050 4200
Wire Wire Line
	3050 4200 2550 4200
Wire Wire Line
	2550 4650 3050 4650
Connection ~ 3650 4650
Wire Wire Line
	3050 4600 3050 4650
Connection ~ 3050 4650
Wire Wire Line
	3050 4650 3650 4650
Wire Wire Line
	3050 4000 3050 4200
Text Label 6600 3900 0    50   ~ 0
SWD_CLK
Text Label 6600 4000 0    50   ~ 0
SWD_IO
Wire Wire Line
	4450 3600 4450 3900
Text Label 3050 4000 1    50   ~ 0
~SWD_RST
Wire Wire Line
	4150 3900 4450 3900
Connection ~ 4450 3900
Text HLabel 5550 3400 1    50   Input ~ 0
I2C.SDA
Text HLabel 5650 3400 1    50   Input ~ 0
I2C.SCL
Text HLabel 5750 3400 1    50   Input ~ 0
PB5
Text HLabel 5850 3400 1    50   Input ~ 0
PB4
Text HLabel 5950 3400 1    50   Input ~ 0
PB3
Text HLabel 6050 3400 1    50   Input ~ 0
PA15
Text HLabel 6600 4100 2    50   Input ~ 0
UART.RTS
Text HLabel 6600 4200 2    50   Input ~ 0
UART.CTS
Text HLabel 6600 4300 2    50   Input ~ 0
UART.RX
Text HLabel 6600 4400 2    50   Input ~ 0
UART.TX
Text HLabel 6600 4500 2    50   Input ~ 0
PA8
Text HLabel 7600 4600 2    50   Input ~ 0
VCC
Text HLabel 7350 5300 3    50   Input ~ 0
GND
Text HLabel 3850 4750 3    50   Input ~ 0
GND
Text HLabel 3500 4300 0    50   Input ~ 0
VCC
Text HLabel 4150 3900 0    50   Input ~ 0
VCC
Text HLabel 4450 2950 1    50   Input ~ 0
GND
Text HLabel 5950 5100 3    50   Input ~ 0
PB1
Text HLabel 5850 5100 3    50   Input ~ 0
SPI.MISO
Text HLabel 5750 5100 3    50   Input ~ 0
SPI.MOSI
Text HLabel 5650 5100 3    50   Input ~ 0
PA6
Text HLabel 5550 5100 3    50   Input ~ 0
SPI.SCK
Text HLabel 5450 5100 3    50   Input ~ 0
SPI.~CS
Text HLabel 5350 5100 3    50   Input ~ 0
PA3
Text HLabel 4800 4600 0    50   Input ~ 0
PA2
Text HLabel 4800 4100 0    50   Input ~ 0
PC15
Text HLabel 4800 4000 0    50   Input ~ 0
PC14
Text HLabel 8450 1700 0    50   Input ~ 0
VCC
Text HLabel 8450 2350 3    50   Input ~ 0
GND
$Comp
L STMicroelectronics:STM32L021K4T6 STM1
U 1 1 5D6357D1
P 5700 4250
F 0 "STM1" H 6200 3550 60  0000 L CNN
F 1 "STM32L021K4T6" H 5350 4250 60  0000 L CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 5700 2350 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/86/a6/5f/95/33/50/4e/d6/DM00206858.pdf/files/DM00206858.pdf/jcr:content/translations/en.DM00206858.pdf" H 5700 2450 60  0001 C CNN
F 4 "497-17903-ND" H 5700 2750 50  0001 C CNN "DigiKey_PartNumber"
F 5 "STMicroelectronics" H 5700 2650 50  0001 C CNN "Manufacturer"
F 6 "STM32L021K4T6" H 5700 2550 50  0001 C CNN "Manufacturer_PartNumber"
	1    5700 4250
	1    0    0    -1  
$EndComp
$Comp
L ARM:CORTEX-DEBUG CD1
U 1 1 5D635A07
P 9300 1900
F 0 "CD1" H 9300 2487 60  0000 C CNN
F 1 "CORTEX-DEBUG" H 9300 2381 60  0000 C CNN
F 2 "CNCTech:CORTEX-DEBUG" H 9300 1900 60  0001 C CNN
F 3 "http://cnctech.us/pdfs/3220-XX-0100-00.pdf" H 9300 1900 60  0001 C CNN
F 4 "1175-1627-ND" H 9300 1900 50  0001 C CNN "DigiKey_PartNumber"
F 5 "CNC Tech" H 9300 1900 50  0001 C CNN "Manufacturer"
F 6 "3220-10-0100-00" H 9300 1900 50  0001 C CNN "Manufacturer_PartNumber"
	1    9300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D64E547
P 10300 4150
AR Path="/5D64E547" Ref="C?"  Part="1" 
AR Path="/5D630625/5D64E547" Ref="C20"  Part="1" 
F 0 "C20" H 10415 4196 50  0000 L CNN
F 1 "0.1µF" H 10415 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 4000 50  0001 C CNN
F 3 "~" H 10300 4150 50  0001 C CNN
	1    10300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4000 10300 3650
Wire Wire Line
	10300 3650 10100 3650
Wire Wire Line
	8900 3850 8900 4300
Text Label 10100 3850 0    50   ~ 0
OSC
Text Label 8900 3650 2    50   ~ 0
OSC_EN
$Comp
L MicrochipTechnology:DSC6011HE2A-032.0000 O1
U 1 1 5D650118
P 9500 3750
F 0 "O1" H 9500 4115 50  0000 C CNN
F 1 "DSC6011HE2A-032.0000" H 9500 4024 50  0000 C CNN
F 2 "MicrochipTechnology:DSC6011HE2A-032.0000" H 9750 3400 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en587489" H 9500 3000 50  0001 C CNN
F 4 "DSC6011HE2A-032.0000-ND" H 9500 3100 50  0001 C CNN "DigiKey_PartNumber"
F 5 "Microchip Technology" H 9500 3200 50  0001 C CNN "Manufacturer"
F 6 "DSC6011HE2A-032.0000" H 9500 3300 50  0001 C CNN "Manufacturer_PartNumber"
	1    9500 3750
	1    0    0    -1  
$EndComp
Text Label 4800 4400 2    50   ~ 0
OSC
Wire Wire Line
	8900 4300 9600 4300
Text HLabel 9600 4400 3    50   Input ~ 0
GND
Wire Wire Line
	9600 4400 9600 4300
Connection ~ 9600 4300
Wire Wire Line
	9600 4300 10300 4300
Text Label 4800 4500 2    50   ~ 0
OSC_EN
Text Notes 8350 1050 0    100  ~ 20
SWD
Text Notes 8450 3200 0    100  ~ 20
HSE Oscillator
Text Notes 5350 2650 0    100  ~ 20
MCU
Text HLabel 10300 3650 2    50   Input ~ 0
VCC
Text HLabel 7300 1900 2    50   Input ~ 0
GND
Text HLabel 7300 2100 2    50   Input ~ 0
VCC
Text Label 6900 2000 0    50   ~ 0
~SWD_RST
Text Label 6900 1800 0    50   ~ 0
SWD_CLK
Text Label 6900 1700 0    50   ~ 0
SWD_IO
Wire Wire Line
	7300 2100 6900 2100
Wire Wire Line
	6900 1900 7300 1900
$Comp
L Harwin:M50-3130545 M2
U 1 1 5D6D5DEE
P 6600 1900
F 0 "M2" H 6494 1435 50  0000 C CNN
F 1 "M50-3130545" H 6494 1526 50  0000 C CNN
F 2 "Harwin:M50-3130545" H 6600 1000 50  0001 C CNN
F 3 "https://cdn.harwin.com/pdfs/M50-313.pdf" H 6600 1100 50  0001 C CNN
F 4 "952-3585-ND" H 6600 1400 50  0001 C CNN "DigiKey_PartNumber"
F 5 "Harwin Inc." H 6600 1300 50  0001 C CNN "Manufacturer"
F 6 "M50-3130545" H 6600 1200 50  0001 C CNN "Manufacturer_PartNumber"
	1    6600 1900
	-1   0    0    1   
$EndComp
Text Notes 6300 1050 0    100  ~ 20
SWD (custom, optional)
$EndSCHEMATC
