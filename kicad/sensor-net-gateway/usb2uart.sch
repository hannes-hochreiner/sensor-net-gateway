EESchema Schematic File Version 4
LIBS:sensor-net-gateway-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L sensor-net-gateway:USB_micro_ab U1
U 1 1 5D686D3B
P 3000 3650
F 0 "U1" H 3478 3703 60  0000 L CNN
F 1 "USB_micro_ab" H 3478 3597 60  0000 L CNN
F 2 "sensor-net-gateway:MOLEX_USB_MICRO_0475890001" H 3250 3200 60  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/475890001_sd.pdf" H 3350 3300 60  0001 C CNN
F 4 "WM17143CT-ND" H 3478 3635 50  0001 L CNN "DigiKey_PartNumber"
F 5 "Molex" H 3478 3590 50  0001 L CNN "Manufacturer"
F 6 "0475890001" H 3478 3544 50  0001 L CNN "Manufacturer_PartNumber"
	1    3000 3650
	-1   0    0    1   
$EndComp
$Comp
L sensor-net-gateway:FT230XQ U3
U 1 1 5D686D45
P 8350 3650
F 0 "U3" H 8750 4450 50  0000 C CNN
F 1 "FT230XQ" H 8850 4350 50  0000 C CNN
F 2 "sensor-net-gateway:QFN-16-1EP_4x4mm_P0.65mm_EP2.7x2.7mm" H 8900 2950 50  0001 C CNN
F 3 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 7800 4250 50  0001 C CNN
F 4 "768-1130-1-ND" H 8350 4618 50  0001 C CNN "DigiKey_PartNumber"
F 5 "FTDI, Future Technology Devices International Ltd" H 8350 4528 50  0001 C CNN "Manufacturer"
F 6 "FT230XQ-R" H 8350 4436 50  0001 C CNN "Manufacturer_PartNumber"
	1    8350 3650
	1    0    0    -1  
$EndComp
$Comp
L sensor-net-gateway:USBLC6-2SC6 U2
U 1 1 5D686D4F
P 4800 3650
F 0 "U2" H 4800 3250 50  0000 C CNN
F 1 "USBLC6-2SC6" H 4800 3350 50  0000 C CNN
F 2 "sensor-net-gateway:SOT-23-6" H 4800 3450 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/06/1d/48/9c/6c/20/4a/b2/CD00050750.pdf/files/CD00050750.pdf/jcr:content/translations/en.CD00050750.pdf" H 4800 3450 50  0001 C CNN
F 4 "497-5235-1-ND" H 4800 4155 50  0001 C CNN "DigiKey_PartNumber"
F 5 "STMicroelectronics" H 4800 4065 50  0001 C CNN "Manufacturer"
F 6 "USBLC6-2SC6" H 4800 3973 50  0001 C CNN "Manufacturer_PartNumber"
	1    4800 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5D686D56
P 4000 4100
F 0 "C1" H 4115 4146 50  0000 L CNN
F 1 "0.1µF" H 4115 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 3950 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4400 4000 4250
$Comp
L sensor-net-gateway:Ferrite_Bead FB1
U 1 1 5D686D67
P 8250 2300
F 0 "FB1" H 8113 2254 50  0000 R CNN
F 1 "Ferrite_Bead" H 8113 2345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" V 8180 2300 50  0001 C CNN
F 3 "https://assets.lairdtech.com/home/brandworld/files/MI0805K601R-10.pdf" V 8100 2325 50  0001 C CNN
F 4 "240-2390-1-ND" H 8387 2300 50  0001 L CNN "DigiKey_PartNumber"
F 5 "Laird-Signal Integrity Products" H 8387 2255 50  0001 L CNN "Manufacturer"
F 6 "MI0805K601R-10" H 8387 2209 50  0001 L CNN "Manufacturer_PartNumber"
	1    8250 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5D686D79
P 6800 3950
F 0 "C2" H 6915 3996 50  0000 L CNN
F 1 "47pF" H 6915 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 3800 50  0001 C CNN
F 3 "~" H 6800 3950 50  0001 C CNN
	1    6800 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D686D80
P 7000 4250
F 0 "C3" H 7115 4296 50  0000 L CNN
F 1 "47pF" H 7115 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7038 4100 50  0001 C CNN
F 3 "~" H 7000 4250 50  0001 C CNN
	1    7000 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D686D89
P 7200 3650
F 0 "R2" V 6993 3650 50  0000 C CNN
F 1 "27R" V 7084 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 3650 50  0001 C CNN
F 3 "~" H 7200 3650 50  0001 C CNN
	1    7200 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D686D90
P 7000 3550
F 0 "R1" V 6793 3550 50  0000 C CNN
F 1 "27R" V 6884 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6930 3550 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
	1    7000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3550 6800 3800
Wire Wire Line
	6800 3550 6850 3550
Wire Wire Line
	7000 4100 7000 3650
Wire Wire Line
	7000 3650 7050 3650
Wire Wire Line
	6900 4700 6900 4550
Wire Wire Line
	6900 4550 7000 4550
Wire Wire Line
	7000 4550 7000 4400
Wire Wire Line
	6800 4100 6800 4550
Wire Wire Line
	6800 4550 6900 4550
Connection ~ 6900 4550
$Comp
L Device:C C11
U 1 1 5D686DA9
P 9000 2100
F 0 "C11" V 9252 2100 50  0000 C CNN
F 1 "10nF" V 9161 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9038 1950 50  0001 C CNN
F 3 "~" H 9000 2100 50  0001 C CNN
	1    9000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 2100 9150 2100
Wire Wire Line
	8250 2100 8250 2150
$Comp
L Device:C C6
U 1 1 5D686DBE
P 7800 2700
F 0 "C6" H 7915 2746 50  0000 L CNN
F 1 "0.1µF" H 7915 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7838 2550 50  0001 C CNN
F 3 "~" H 7800 2700 50  0001 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5D686DC5
P 7350 2700
F 0 "C4" H 7232 2654 50  0000 R CNN
F 1 "4.7µF" H 7232 2745 50  0000 R CNN
F 2 "WurthElektronik:865080640004" H 7388 2550 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/865080640004.pdf" H 7350 2700 50  0001 C CNN
F 4 "732-8449-1-ND" H 7350 2700 50  0001 C CNN "DigiKey_PartNumber"
F 5 "Wurth Electronics Inc." H 7350 2700 50  0001 C CNN "Manufacturer"
F 6 "865080640004" H 7350 2700 50  0001 C CNN "Manufacturer_PartNumber"
	1    7350 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 2500 7800 2550
Wire Wire Line
	7350 2550 7350 2500
Connection ~ 7350 2500
Wire Wire Line
	7350 2500 7800 2500
Wire Wire Line
	7350 2850 7350 2900
Wire Wire Line
	7350 2900 7800 2900
Connection ~ 8250 2900
Wire Wire Line
	8250 2900 8250 2950
Wire Wire Line
	7800 2850 7800 2900
Connection ~ 7800 2900
Wire Wire Line
	7800 2900 8250 2900
Wire Wire Line
	9050 3350 9100 3350
Wire Wire Line
	9050 3450 9100 3450
Wire Wire Line
	9050 3550 9100 3550
Wire Wire Line
	9050 3250 9100 3250
Wire Wire Line
	8250 4350 8250 4500
Wire Wire Line
	8250 4500 8350 4500
Wire Wire Line
	8350 4500 8350 4600
Wire Wire Line
	8350 4350 8350 4500
Connection ~ 8350 4500
Wire Wire Line
	8350 4500 8450 4500
Wire Wire Line
	8450 4500 8450 4350
$Comp
L Device:C C5
U 1 1 5D686DF9
P 7600 4550
F 0 "C5" H 7715 4596 50  0000 L CNN
F 1 "0.1µF" H 7715 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7638 4400 50  0001 C CNN
F 3 "~" H 7600 4550 50  0001 C CNN
	1    7600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4400 7600 3850
Wire Wire Line
	7600 3850 7650 3850
Wire Wire Line
	7600 3250 7650 3250
Connection ~ 7600 3850
Wire Wire Line
	7600 4800 7600 4700
NoConn ~ 9050 3950
Text HLabel 9100 3250 2    50   Input ~ 0
UART.TX
Text HLabel 9100 3350 2    50   Input ~ 0
UART.RX
Text HLabel 9100 3450 2    50   Input ~ 0
UART.RTS
Text HLabel 9100 3550 2    50   Input ~ 0
UART.CTS
Wire Wire Line
	3600 3850 3750 3850
Wire Wire Line
	3750 3850 3750 3950
Wire Wire Line
	3750 3950 4000 3950
NoConn ~ 3600 3550
Wire Wire Line
	6550 2500 7350 2500
Wire Wire Line
	8250 2100 8850 2100
Text HLabel 8450 2650 1    50   Input ~ 0
3V0
Text Notes 2400 2650 0    100  ~ 20
USB Connector
Text Notes 4250 2650 0    100  ~ 20
ESD Protection
Text Notes 6950 1900 0    100  ~ 20
USB to UART
Wire Wire Line
	8250 2450 8250 2900
$Comp
L Device:C C21
U 1 1 5D6A5C9D
P 9050 2700
F 0 "C21" V 9300 2700 50  0000 L CNN
F 1 "0.1µF" V 9200 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9088 2550 50  0001 C CNN
F 3 "~" H 9050 2700 50  0001 C CNN
	1    9050 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 2650 8450 2700
Wire Wire Line
	8450 2700 8900 2700
Connection ~ 8450 2700
Wire Wire Line
	8450 2700 8450 2950
Wire Wire Line
	9200 2700 9250 2700
Text HLabel 9250 2100 2    50   Input ~ 0
GND
Text HLabel 9250 2700 2    50   Input ~ 0
GND
Text HLabel 8350 4600 3    50   Input ~ 0
GND
Text HLabel 7600 4800 3    50   Input ~ 0
GND
Text HLabel 6900 4700 3    50   Input ~ 0
GND
Text HLabel 4000 4400 3    50   Input ~ 0
GND
Text HLabel 6550 2500 0    50   Input ~ 0
GND
Wire Wire Line
	7600 3250 7600 3650
Wire Wire Line
	7150 3550 7650 3550
Wire Wire Line
	7600 3650 7600 3850
Wire Wire Line
	7350 3650 7650 3650
Text HLabel 8250 2100 1    50   Input ~ 0
VBUS
Text HLabel 4550 3950 3    50   Input ~ 0
VBUS
Wire Wire Line
	4000 3950 4000 3650
Wire Wire Line
	4000 3650 4050 3650
Connection ~ 4000 3950
Wire Wire Line
	4000 3950 4550 3950
Text HLabel 5550 3650 2    50   Input ~ 0
GND
Text HLabel 3600 3450 2    50   Input ~ 0
GND
Wire Wire Line
	3600 3750 3950 3750
Wire Wire Line
	3950 3750 3950 3500
Wire Wire Line
	3950 3500 4050 3500
Wire Wire Line
	3600 3650 3900 3650
Wire Wire Line
	3900 3650 3900 3800
Wire Wire Line
	3900 3800 4050 3800
Wire Wire Line
	5550 3500 6650 3500
Wire Wire Line
	6650 3500 6650 3550
Wire Wire Line
	6650 3550 6800 3550
Connection ~ 6800 3550
Wire Wire Line
	7000 3650 6650 3650
Wire Wire Line
	6650 3650 6650 3800
Wire Wire Line
	6650 3800 5550 3800
Connection ~ 7000 3650
Text HLabel 9050 3750 2    50   Input ~ 0
FTDI_DIO0
Text HLabel 9050 3850 2    50   Input ~ 0
FTDI_DIO1
Text HLabel 9050 4050 2    50   Input ~ 0
FTDI_DIO3
$EndSCHEMATC
