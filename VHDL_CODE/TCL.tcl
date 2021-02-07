#============================================================
# CLOCK
#============================================================
set_location_assignment PIN_AF14 -to OSC_50_B3B
set_instance_assignment -name IO_STANDARD "1.5 V" -to OSC_50_B3B
set_location_assignment PIN_AA16 -to OSC_50_B4A
set_instance_assignment -name IO_STANDARD "1.5 V" -to OSC_50_B4A
set_location_assignment PIN_Y26 -to OSC_50_B5B
set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_B5B
set_location_assignment PIN_K14 -to OSC_50_B8A
set_instance_assignment -name IO_STANDARD "2.5 V" -to OSC_50_B8A



#============================================================
# LED
#============================================================
set_location_assignment PIN_AF10 -to LED[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[0]
set_location_assignment PIN_AD10 -to LED[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[1]
set_location_assignment PIN_AE11 -to LED[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[2]
set_location_assignment PIN_AD7 -to LED[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LED[3]


#============================================================
# KEY
#============================================================
set_location_assignment PIN_AE9 -to KEY[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
set_location_assignment PIN_AE12 -to KEY[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
set_location_assignment PIN_AD9 -to KEY[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[2]
set_location_assignment PIN_AD11 -to KEY[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[3]


#============================================================
# SW
#============================================================
set_location_assignment PIN_W25 -to SW[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[0]
set_location_assignment PIN_V25 -to SW[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[1]
set_location_assignment PIN_AC28 -to SW[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[2]
set_location_assignment PIN_AC29 -to SW[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[3]


#============================================================
# HSMC, HSMC connect to DCC - High Speed ADC/DAC
#============================================================
set_location_assignment PIN_AE29 -to SDA
set_instance_assignment -name IO_STANDARD "2.5 V" -to SDA
set_location_assignment PIN_AA28 -to SCL
set_instance_assignment -name IO_STANDARD "2.5 V" -to SCL
set_location_assignment PIN_AD29 -to CLKOUT0



set_instance_assignment -name IO_STANDARD "2.5 V" -to CLKOUT0
set_location_assignment PIN_J14 -to CLKIN1
set_instance_assignment -name IO_STANDARD "2.5 V" -to CLKIN1
set_location_assignment PIN_C10 -to ADA_D[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[13]
set_location_assignment PIN_H13 -to ADB_D[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[13]
set_location_assignment PIN_C9 -to ADA_D[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[12]
set_location_assignment PIN_H12 -to ADB_D[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[12]
set_location_assignment PIN_A9 -to ADA_D[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[11]
set_location_assignment PIN_G12 -to ADB_D[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[11]
set_location_assignment PIN_A8 -to ADA_D[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[10]
set_location_assignment PIN_G11 -to ADB_D[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[10]
set_location_assignment PIN_E8 -to ADA_D[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[9]
set_location_assignment PIN_K12 -to ADB_D[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[9]
set_location_assignment PIN_D7 -to ADA_D[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[8]
set_location_assignment PIN_J12 -to ADB_D[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[8]
set_location_assignment PIN_G7 -to ADA_D[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[7]
set_location_assignment PIN_G10 -to ADB_D[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[7]
set_location_assignment PIN_F6 -to ADA_D[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[6]
set_location_assignment PIN_F10 -to ADB_D[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[6]
set_location_assignment PIN_D6 -to ADA_D[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[5]
set_location_assignment PIN_J10 -to ADB_D[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[5]
set_location_assignment PIN_C5 -to ADA_D[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[4]
set_location_assignment PIN_J9 -to ADB_D[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[4]
set_location_assignment PIN_D5 -to ADA_D[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[3]
set_location_assignment PIN_K7 -to ADB_D[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[3]
set_location_assignment PIN_C4 -to ADA_D[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[2]
set_location_assignment PIN_K8 -to ADB_D[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[2]
set_location_assignment PIN_E3 -to ADA_D[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[1]
set_location_assignment PIN_J7 -to ADB_D[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[1]
set_location_assignment PIN_E2 -to ADA_D[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_D[0]
set_location_assignment PIN_H7 -to ADB_D[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_D[0]
set_location_assignment PIN_E4 -to ADA_OR
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_OR
set_location_assignment PIN_H8 -to ADB_OR
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_OR
set_location_assignment PIN_D4 -to ADA_OE
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_OE
set_location_assignment PIN_G8 -to ADB_OE
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_OE
set_location_assignment PIN_C3 -to ADA_SPI_CS
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_SPI_CS
set_location_assignment PIN_F9 -to ADB_SPI_CS
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_SPI_CS
set_location_assignment PIN_B3 -to AD_SDIO
set_instance_assignment -name IO_STANDARD "2.5 V" -to AD_SDIO
set_location_assignment PIN_F8 -to AD_SCLK
set_instance_assignment -name IO_STANDARD "2.5 V" -to AD_SCLK
set_location_assignment PIN_E7 -to FPGA_CLK_A_P
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_CLK_A_P
set_location_assignment PIN_AA26 -to XT_IN_P
set_instance_assignment -name IO_STANDARD "2.5 V" -to XT_IN_P
set_location_assignment PIN_E6 -to FPGA_CLK_A_N
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_CLK_A_N
set_location_assignment PIN_AB27 -to XT_IN_N
set_instance_assignment -name IO_STANDARD "2.5 V" -to XT_IN_N
set_location_assignment PIN_E1 -to DA[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[13]
set_location_assignment PIN_F11 -to DB[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[13]
set_location_assignment PIN_D1 -to DA[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[12]
set_location_assignment PIN_E11 -to DB[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[12]
set_location_assignment PIN_D2 -to DA[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[11]
set_location_assignment PIN_B6 -to DB[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[11]
set_location_assignment PIN_C2 -to DA[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[10]
set_location_assignment PIN_B5 -to DB[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[10]
set_location_assignment PIN_B2 -to DA[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[9]
set_location_assignment PIN_E9 -to DB[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[9]
set_location_assignment PIN_B1 -to DA[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[8]
set_location_assignment PIN_D9 -to DB[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[8]
set_location_assignment PIN_A4 -to DA[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[7]
set_location_assignment PIN_E12 -to DB[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[7]
set_location_assignment PIN_A3 -to DA[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[6]
set_location_assignment PIN_D12 -to DB[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[6]
set_location_assignment PIN_A6 -to DA[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[5]
set_location_assignment PIN_D11 -to DB[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[5]
set_location_assignment PIN_A5 -to DA[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[4]
set_location_assignment PIN_D10 -to DB[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[4]
set_location_assignment PIN_C7 -to DA[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[3]
set_location_assignment PIN_C13 -to DB[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[3]
set_location_assignment PIN_B7 -to DA[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[2]
set_location_assignment PIN_B12 -to DB[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[2]
set_location_assignment PIN_C8 -to DA[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[1]
set_location_assignment PIN_F13 -to DB[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[1]
set_location_assignment PIN_B8 -to DA[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DA[0]
set_location_assignment PIN_E13 -to DB[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to DB[0]
set_location_assignment PIN_C12 -to AIC_DIN
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_DIN
set_location_assignment PIN_H14 -to AIC_DOUT
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_DOUT
set_location_assignment PIN_B11 -to AIC_LRCIN
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_LRCIN
set_location_assignment PIN_G13 -to AIC_LRCOUT
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_LRCOUT
set_location_assignment PIN_B13 -to AIC_BCLK
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_BCLK
set_location_assignment PIN_F15 -to AIC_XCLK
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_XCLK
set_location_assignment PIN_A13 -to AIC_SPI_CS
set_instance_assignment -name IO_STANDARD "2.5 V" -to AIC_SPI_CS
set_location_assignment PIN_F14 -to J1_152
set_instance_assignment -name IO_STANDARD "2.5 V" -to J1_152
set_location_assignment PIN_A11 -to FPGA_CLK_B_P
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_CLK_B_P
set_location_assignment PIN_H15 -to ADA_DCO
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADA_DCO
set_location_assignment PIN_A10 -to FPGA_CLK_B_N
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_CLK_B_N
set_location_assignment PIN_G15 -to ADB_DCO
set_instance_assignment -name IO_STANDARD "2.5 V" -to ADB_DCO


