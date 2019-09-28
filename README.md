# Sensor Net Gateway
A gateway for translating messages from the sensor net sensors to USB CDC.

## Pre-Order PCB Checklist
  * [x] ground flood
  * [x] surround antenna traces with vias
  * [x] change LDO footprint
  * [x] change connector footprint
  * [x] interrupt lines
  * [x] diagram cleanup
  * [x] diagram check
  * [x] layout check

# Post Assembly Checks

## Electrical Check
On visual inspection, the connections looked pretty good.
To make sure nothing major went wrong, I checked for shorts, especially between power and ground.
I also checked that ground was connected to the right side of the electrolytic capacitor.

## FTDI
My first check of the FTDI chip was to simply connect the board and check the output of dmsg:
```
[862594.355360] Indeed it is in host mode hprt0 = 00021501
[862594.565069] usb 1-1: new full-speed USB device number 2 using dwc_otg
[862594.565389] Indeed it is in host mode hprt0 = 00021501
[862594.812139] usb 1-1: New USB device found, idVendor=0403, idProduct=6015, bcdDevice=10.00
[862594.812159] usb 1-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[862594.812168] usb 1-1: Product: FT230X Basic UART
[862594.812176] usb 1-1: Manufacturer: FTDI
[862594.812184] usb 1-1: SerialNumber: DM01KPIW
[862594.947315] usbcore: registered new interface driver usbserial_generic
[862594.947420] usbserial: USB Serial support registered for generic
[862594.963184] usbcore: registered new interface driver ftdi_sio
[862594.963293] usbserial: USB Serial support registered for FTDI USB Serial Device
[862594.963573] ftdi_sio 1-1:1.0: FTDI USB Serial Device converter detected
[862594.963800] usb 1-1: Detected FT-X
[862594.997482] usb 1-1: FTDI USB Serial Device converter now attached to ttyUSB0
```
## Power
Next, I checked the power rail after the two-stage conversion.
I got 2.75 V, which is a bit lower than expected, but within specification (2.8 V +/- 3%) and still ok for my use.

## UART communication
UART communication without hardware flow control worked fine, after I switched TX and RX (see [issue TX-RX and CTS-RTS inverted](#TX-RX-and-CTS-RTS-inverted) below).
I have tried running the interface at 10 kHz, 100 kHz, and 1 MHz.
So far, I was only successful at 10 kHz.
My suspicion is that the internal high-speed clock of the STM32 is not precise enough.

## RFM98
The RFM98 works as expected.
The RSSI is around -95 dBm, which is lower than I hoped.
With the breakout board and a different antenna, I have seen a typical RSSI around -65 dBm.
So there is some potential for improvement here by using different antennas.
Since the module claims to have a sensitivity down to -148 dBm, I think I should be fine.
From what I have seen, most of the sensor transmissions were picked up.

## Authentication chip
So far, I have not been able to convince the authentication chip to respond.
I have tried different addresses and also implemented the wake-up sequence.
My suspicion is that I did not properly solder it.

## External oscillator
I could not get a stable signal from the external oscillator.
Probably also a case for re-soldering.

# Issues
## TX-RX and CTS-RTS inverted
When I wired up the schematic, I made the mistake to connect TX to TX, RX to RX, and so on.
While this works fine for SPI and I2C, it does not work for UART.
With UART, TX has to be connected to RX and CTS to RTS.
The saving grace is that the STM32 has an option to swap TX and RX lines.
Seems that I am not the first one to make this mistake :-).

CTS and RTS cannot be swapped in the chip, so in this iteration I won't be able to use the integrated hardware flow control.
Since I am using the UART interface based on interrupts, it should be easily possible to set the RTS and CTS lines manually.

## Cut-outs seem off
The PCB fits fine into the case, but the margins are not uniform.
Therefore, I want to go back and check the cut-outs.

# Hardware to order
## Screws
Self-tapping screws [Amazon link](https://www.amazon.de/Baoyl-Office-Cutting-Tapping-Printer-Accessories/dp/B07VX7XYYC/ref=sr_1_8?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=M3%2Bself-tapping%2Bscrews&qid=1567273654&s=gateway&sr=8-8&th=1)

## Hub
USB-hub [Amazon link](https://www.amazon.de/CSL-aktiver-schaltbar-Verteiler-Notebook/dp/B07F2Q94CT/ref=sr_1_41?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=22QNN2JE5YY1E&keywords=usb+hub+aktiv+3.0+mit+netzteil&qid=1567355394&s=gateway&sprefix=usb+hub%2Caps%2C195&sr=8-41)
