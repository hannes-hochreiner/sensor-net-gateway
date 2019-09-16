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

# Hardware to order
## Screws
Self-tapping screws [Amazon link](https://www.amazon.de/Baoyl-Office-Cutting-Tapping-Printer-Accessories/dp/B07VX7XYYC/ref=sr_1_8?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=M3%2Bself-tapping%2Bscrews&qid=1567273654&s=gateway&sr=8-8&th=1)

## Hub
USB-hub [Amazon link](https://www.amazon.de/CSL-aktiver-schaltbar-Verteiler-Notebook/dp/B07F2Q94CT/ref=sr_1_41?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=22QNN2JE5YY1E&keywords=usb+hub+aktiv+3.0+mit+netzteil&qid=1567355394&s=gateway&sprefix=usb+hub%2Caps%2C195&sr=8-41)
