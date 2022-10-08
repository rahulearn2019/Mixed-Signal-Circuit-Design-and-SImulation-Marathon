EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:cmosinverter-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
Wire Wire Line
	6500 3350 6500 3800
$Comp
L GND #PWR?
U 1 1 6340610F
P 5850 5050
F 0 "#PWR?" H 5850 4800 50  0001 C CNN
F 1 "GND" H 5850 4900 50  0000 C CNN
F 2 "" H 5850 5050 50  0001 C CNN
F 3 "" H 5850 5050 50  0001 C CNN
	1    5850 5050
	1    0    0    -1  
$EndComp
$Comp
L DC v?
U 1 1 63406110
P 4400 2650
F 0 "v?" H 4200 2750 60  0000 C CNN
F 1 "DC" H 4200 2600 60  0000 C CNN
F 2 "R1" H 4100 2650 60  0000 C CNN
F 3 "" H 4400 2650 60  0000 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2200 4400 1950
Wire Wire Line
	4400 1950 6550 1950
Wire Wire Line
	6550 1950 6550 2450
Wire Wire Line
	6550 2450 6500 2450
Wire Wire Line
	6750 3050 6750 2100
Wire Wire Line
	6750 2100 6550 2100
Connection ~ 6550 2100
Wire Wire Line
	6400 3050 6750 3050
Wire Wire Line
	4400 3100 4400 4750
Wire Wire Line
	6500 4750 6500 4400
Wire Wire Line
	5850 5050 5850 4750
Connection ~ 5850 4750
Wire Wire Line
	6400 4100 6700 4100
Wire Wire Line
	6700 4100 6700 4750
Connection ~ 6500 4750
Wire Wire Line
	6000 3050 6000 4100
Wire Wire Line
	5000 3450 6000 3450
Connection ~ 6000 3450
Connection ~ 5000 4750
$Comp
L plot_v1 U?
U 1 1 63406112
P -334050 -295000
F 0 "U?" H -334050 -294500 60  0000 C CNN
F 1 "plot_v1" H -333850 -294650 60  0000 C CNN
F 2 "" H -334050 -295000 60  0000 C CNN
F 3 "" H -334050 -295000 60  0000 C CNN
	1    -334050 -295000
	1    0    0    -1  
$EndComp
Connection ~ 6500 3550
Wire Wire Line
	6500 2450 6500 2750
$Comp
L sky130_fd_pr__nfet_01v8 SC?
U 1 1 63406115
P 6300 4100
F 0 "SC?" H 6350 4400 50  0000 C CNN
F 1 "sky130_fd_pr__nfet_01v8" H 6600 4187 50  0000 R CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__pfet_01v8 SC?
U 1 1 63406116
P 6300 3050
F 0 "SC?" H 6350 3350 50  0000 C CNN
F 1 "sky130_fd_pr__pfet_01v8" H 6600 3137 50  0000 R CNN
F 2 "" H 6300 1550 50  0001 C CNN
F 3 "" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4750 4400 4750
Wire Wire Line
	6500 3550 7200 3550
$Comp
L PORT U?
U 1 1 63406264
P 4750 3450
F 0 "U?" H 4800 3550 30  0000 C CNN
F 1 "PORT" H 4750 3450 30  0000 C CNN
F 2 "" H 4750 3450 60  0000 C CNN
F 3 "" H 4750 3450 60  0000 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L PORT U?
U 2 1 634062F3
P 7450 3550
F 0 "U?" H 7500 3650 30  0000 C CNN
F 1 "PORT" H 7450 3550 30  0000 C CNN
F 2 "" H 7450 3550 60  0000 C CNN
F 3 "" H 7450 3550 60  0000 C CNN
	2    7450 3550
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
