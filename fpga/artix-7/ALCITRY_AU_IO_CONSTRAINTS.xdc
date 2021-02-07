## ===== CLOCK FROM EXTERNAL OSCILLATOR =====
## clk => 100000000Hz
#create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
#set_property PACKAGE_PIN N14 [get_ports {clk}]
#####  set_property -dict { PACKAGE_PIN N14    IOSTANDARD LVCMOS33 } [get_ports { CLOCK }];

## ===== PIN MAPPING ON-BOARD BUTTON =====
set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { RESET }];

## ===== PIN MAPPING ON-BOARD LEDs =====
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { LED0 }];
set_property -dict { PACKAGE_PIN K12   IOSTANDARD LVCMOS33 } [get_ports { LED1 }];
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { LED2 }];
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { LED3 }];
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED4 }];
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { LED5 }];
set_property -dict { PACKAGE_PIN M12   IOSTANDARD LVCMOS33 } [get_ports { LED6 }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED7 }];

## ===== PIN MAPPING TO ALCHITRY IO BOARD =====
## IO BUTTONS 0-4
# set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { io_button_0 }];
# set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { io_button_1 }];
# set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { io_button_2 }];
# set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { io_button_3 }];
# set_property -dict { PACKAGE_PIN P11   IOSTANDARD LVCMOS33 } [get_ports { io_button_4 }];

## LEDs [0-2][0-7]
# set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_0 }];
# set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_1 }];
# set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_2 }];
# set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_3 }];
# set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_4 }];
# set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_5 }];
# set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_6 }];
# set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { io_led_0_7 }];
# set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_0 }];
# set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_1 }];
# set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_2 }];
# set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_3 }];
# set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_4 }];
# set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_5 }];
# set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_6 }];
# set_property -dict { PACKAGE_PIN K5    IOSTANDARD LVCMOS33 } [get_ports { io_led_1_7 }];
# set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_0 }];
# set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_1 }];
# set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_2 }];
# set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_3 }];
# set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_4 }];
# set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_5 }];
# set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_6 }];
# set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { io_led_2_7 }];

## DIP SWITCHES [0-2][0-7]
# set_property -dict { PACKAGE_PIN D6    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_0 }];
# set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_1 }];
# set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_2 }];
# set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_3 }];
# set_property -dict { PACKAGE_PIN G5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_4 }];
# set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_5 }];
# set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_6 }];
# set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { io_dip_0_7 }];
# set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_0 }];
# set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_1 }];
# set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_2 }];
# set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_3 }];
# set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_4 }];
# set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_5 }];
# set_property -dict { PACKAGE_PIN M6    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_6 }];
# set_property -dict { PACKAGE_PIN N6    IOSTANDARD LVCMOS33 } [get_ports { io_dip_1_7 }];
# set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_0 }];
# set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_1 }];
# set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_2 }];
# set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_3 }];
# set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_4 }];
# set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_5 }];
# set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_6 }];
# set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { io_dip_2_7 }];

## 7 SEGMENT DISPLAYS
# set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { io_seg_0 }];
# set_property -dict { PACKAGE_PIN R5    IOSTANDARD LVCMOS33 } [get_ports { io_seg_1 }];
# set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { io_seg_2 }];
# set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { io_seg_3 }];
# set_property -dict { PACKAGE_PIN R7    IOSTANDARD LVCMOS33 } [get_ports { io_seg_4 }];
# set_property -dict { PACKAGE_PIN T7    IOSTANDARD LVCMOS33 } [get_ports { io_seg_5 }];
# set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS33 } [get_ports { io_seg_6 }];
# set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { io_seg_7 }];

# set_property -dict { PACKAGE_PIN P8    IOSTANDARD LVCMOS33 } [get_ports { io_sel_0 }];
# set_property -dict { PACKAGE_PIN R8    IOSTANDARD LVCMOS33 } [get_ports { io_sel_1 }];
# set_property -dict { PACKAGE_PIN N9    IOSTANDARD LVCMOS33 } [get_ports { io_sel_2 }];
# set_property -dict { PACKAGE_PIN P9    IOSTANDARD LVCMOS33 } [get_ports { io_sel_3 }];

## ===== UNUSED INPUTS ON IO BOARD =====
# set_property -dict { PACKAGE_PIN T12    IOSTANDARD LVCMOS33 } [get_ports { C5 }];
# set_property -dict { PACKAGE_PIN R12    IOSTANDARD LVCMOS33 } [get_ports { C6 }];
# set_property -dict { PACKAGE_PIN R11    IOSTANDARD LVCMOS33 } [get_ports { C8 }];
# set_property -dict { PACKAGE_PIN R10    IOSTANDARD LVCMOS33 } [get_ports { C9 }];
# set_property -dict { PACKAGE_PIN P14    IOSTANDARD LVCMOS33 } [get_ports { D11 }];
# set_property -dict { PACKAGE_PIN M15    IOSTANDARD LVCMOS33 } [get_ports { D12 }];
# set_property -dict { PACKAGE_PIN T14    IOSTANDARD LVCMOS33 } [get_ports { D42 }];
# set_property -dict { PACKAGE_PIN T15    IOSTANDARD LVCMOS33 } [get_ports { D43 }];
# set_property -dict { PACKAGE_PIN R16    IOSTANDARD LVCMOS33 } [get_ports { D8 }];
# set_property -dict { PACKAGE_PIN R15    IOSTANDARD LVCMOS33 } [get_ports { D9 }];

## ===== DDR PIN ACCESS =====
# set_property -dict { PACKAGE_PIN F12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A0 }];
# set_property -dict { PACKAGE_PIN G16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A1 }];
# set_property -dict { PACKAGE_PIN E12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A10 }];
# set_property -dict { PACKAGE_PIN H14    IOSTANDARD LVCMOS33 } [get_ports { DDR_A11 }];
# set_property -dict { PACKAGE_PIN F13    IOSTANDARD LVCMOS33 } [get_ports { DDR_A12 }];
# set_property -dict { PACKAGE_PIN J15    IOSTANDARD LVCMOS33 } [get_ports { DDR_A13 }];
# set_property -dict { PACKAGE_PIN G15    IOSTANDARD LVCMOS33 } [get_ports { DDR_A2 }];
# set_property -dict { PACKAGE_PIN E16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A3 }];
# set_property -dict { PACKAGE_PIN H11    IOSTANDARD LVCMOS33 } [get_ports { DDR_A4 }];
# set_property -dict { PACKAGE_PIN G12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A5 }];
# set_property -dict { PACKAGE_PIN H16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A6 }];
# set_property -dict { PACKAGE_PIN H12    IOSTANDARD LVCMOS33 } [get_ports { DDR_A7 }];
# set_property -dict { PACKAGE_PIN J16    IOSTANDARD LVCMOS33 } [get_ports { DDR_A8 }];
# set_property -dict { PACKAGE_PIN H13    IOSTANDARD LVCMOS33 } [get_ports { DDR_A9 }];
# set_property -dict { PACKAGE_PIN E13    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA0 }];
# set_property -dict { PACKAGE_PIN F15    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA1 }];
# set_property -dict { PACKAGE_PIN E15    IOSTANDARD LVCMOS33 } [get_ports { DDR_BA2 }];
# set_property -dict { PACKAGE_PIN D14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CAS }];
# set_property -dict { PACKAGE_PIN F14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CK_N }];
# set_property -dict { PACKAGE_PIN G14    IOSTANDARD LVCMOS33 } [get_ports { DDR_CK_P }];
# set_property -dict { PACKAGE_PIN D15    IOSTANDARD LVCMOS33 } [get_ports { DDR_CKE }];
# set_property -dict { PACKAGE_PIN D16    IOSTANDARD LVCMOS33 } [get_ports { DDR_CS }];
# set_property -dict { PACKAGE_PIN A14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DM0 }];
# set_property -dict { PACKAGE_PIN C9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DM1 }];
# set_property -dict { PACKAGE_PIN A13    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ0 }];
# set_property -dict { PACKAGE_PIN B16    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ1 }];
# set_property -dict { PACKAGE_PIN C8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ10 }];
# set_property -dict { PACKAGE_PIN B10    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ11 }];
# set_property -dict { PACKAGE_PIN A12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ12 }];
# set_property -dict { PACKAGE_PIN A8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ13 }];
# set_property -dict { PACKAGE_PIN B12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ14 }];
# set_property -dict { PACKAGE_PIN A9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ15 }];
# set_property -dict { PACKAGE_PIN B14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ2 }];
# set_property -dict { PACKAGE_PIN C11    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ3 }];
# set_property -dict { PACKAGE_PIN C13    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ4 }];
# set_property -dict { PACKAGE_PIN C16    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ5 }];
# set_property -dict { PACKAGE_PIN C12    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ6 }];
# set_property -dict { PACKAGE_PIN C14    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ7 }];
# set_property -dict { PACKAGE_PIN D8     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ8 }];
# set_property -dict { PACKAGE_PIN B11    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQ9 }];
# set_property -dict { PACKAGE_PIN A15    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS0_N }];
# set_property -dict { PACKAGE_PIN B15    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS0_P }];
# set_property -dict { PACKAGE_PIN A10    IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS1_N }];
# set_property -dict { PACKAGE_PIN B9     IOSTANDARD LVCMOS33 } [get_ports { DDR_DQS1_P }];
# set_property -dict { PACKAGE_PIN G11    IOSTANDARD LVCMOS33 } [get_ports { DDR_ODT }];
# set_property -dict { PACKAGE_PIN D11    IOSTANDARD LVCMOS33 } [get_ports { DDR_RAS }];
# set_property -dict { PACKAGE_PIN D13    IOSTANDARD LVCMOS33 } [get_ports { DDR_RESET }];
# set_property -dict { PACKAGE_PIN E11    IOSTANDARD LVCMOS33 } [get_ports { DDR_WE }];

## ===== PIN MAPPING TO MISC =====
# set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { SPI_D0 }];
# set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { SPI_D1 }];
# set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { SPI_D2 }];
# set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { SPI_D3 }];
# set_property -dict { PACKAGE_PIN E8    IOSTANDARD LVCMOS33 } [get_ports { SPI_SCK }];
# set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { SPI_SS }];
# set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { USB_RX }];
# set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { USB_TX }];
# set_property -dict { PACKAGE_PIN J7    IOSTANDARD LVCMOS33 } [get_ports { VN }];
# set_property -dict { PACKAGE_PIN H8    IOSTANDARD LVCMOS33 } [get_ports { VP }];
