// --------------------------------------------------------------------
//
// Major Functions:	Date convert card Demo
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Ezra America      :| 03/04/2019:| Initial Revision
// --------------------------------------------------------------------

module SoCKit_DCC(

	//////////// CLOCK //////////
	OSC_50_B3B,
	OSC_50_B4A,
	OSC_50_B5B,
	OSC_50_B8A,


	//////////// LED x 4 //////////
	LED,

	//////////// KEY x 4 //////////
	KEY,

	//////////// SWITCH x 4 //////////
	SW,

	//////////// HSMC-D, HSMC-D connect to DCC - High Speed ADC/DAC //////////
	AD_SCLK,
	AD_SDIO,
	ADA_D,
	ADA_DCO,
	ADA_OE,
	ADA_OR,
	ADA_SPI_CS,
	ADB_D,
	ADB_DCO,
	ADB_OE,
	ADB_OR,
	ADB_SPI_CS,
	AIC_BCLK,
	AIC_DIN,
	AIC_DOUT,
	AIC_LRCIN,
	AIC_LRCOUT,
	AIC_SPI_CS,
	AIC_XCLK,
	CLKIN1,
	CLKOUT0,
	DA,
	DB,
	FPGA_CLK_A_N,
	FPGA_CLK_A_P,
	FPGA_CLK_B_N,
	FPGA_CLK_B_P,
	J1_152,
	XT_IN_N,
	XT_IN_P,

	//////////// HSMC D/E/F I2C //////////
	SCL,
	SDA 
);

//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input 		          		OSC_50_B3B;
input 		          		OSC_50_B4A;
input 		          		OSC_50_B5B;
input 		          		OSC_50_B8A;


//////////// LED x 4 //////////
output		     [3:0]		LED;

//////////// BUTTON x 4 //////////
input 		     [3:0]		KEY;

//////////// SWITCH x 4 //////////
input 		     [3:0]		SW;

//////////// HSMC-D, HSMC-D connect to DCC - High Speed ADC/DAC //////////
inout 		          		AD_SCLK;
inout 		          		AD_SDIO;
input 		    [13:0]		ADA_D;
input 		          		ADA_DCO;
output		          		ADA_OE;
input 		          		ADA_OR;
output		          		ADA_SPI_CS;
input 		    [13:0]		ADB_D;
input 		          		ADB_DCO;
output		          		ADB_OE;
input 		          		ADB_OR;
output		          		ADB_SPI_CS;
inout 		          		AIC_BCLK;
output		          		AIC_DIN;
input 		          		AIC_DOUT;
inout 		          		AIC_LRCIN;
inout 		          		AIC_LRCOUT;
output		          		AIC_SPI_CS;
output		          		AIC_XCLK;
input 		          		CLKIN1;
output		          		CLKOUT0;
output		    [13:0]		DA;
output		    [13:0]		DB;
inout 		          		FPGA_CLK_A_N;
inout 		          		FPGA_CLK_A_P;
inout 		          		FPGA_CLK_B_N;
inout 		          		FPGA_CLK_B_P;
inout 		          		J1_152;
input 		          		XT_IN_N;
input 		          		XT_IN_P;

//////////// HSMC D/E/F I2C //////////
output		          		SCL;
inout 		          		SDA;


//=======================================================
//  REG/WIRE declarations
//=======================================================
SoCKit_DCC_TOP SoCKit_DCC_TOP_ins(
   .CLK(OSC_50_B3B),
   .KEY(KEY),
	.SW(SW),
	.LED(LED),
   .AD_SCLK(AD_SCLK),
	.AD_SDIO(AD_SDIO),
	.ADA_D(ADA_D),
	.ADA_DCO(ADA_DCO),
	.ADA_OE(ADA_OE),
	.ADA_OR(ADA_OR),
	.ADA_SPI_CS(ADA_SPI_CS),
	.ADB_D(ADB_D),
	.ADB_DCO(ADB_DCO),
	.ADB_OE(ADB_OE),
	.ADB_OR(ADB_OR),
	.ADB_SPI_CS(ADB_SPI_CS),
	.AIC_BCLK(AIC_BCLK),
	.AIC_DIN(AIC_DIN),
	.AIC_DOUT(AIC_DOUT),
	.AIC_LRCIN(AIC_LRCIN),
	.AIC_LRCOUT(AIC_LRCOUT),
	.AIC_SPI_CS(AIC_SPI_CS),
	.AIC_XCLK(AIC_XCLK),
	.CLKIN1(CLKIN1),
	.CLKOUT0(CLKOUT0),
	.DA(DA),
	.DB(DB),
	.FPGA_CLK_A_N(FPGA_CLK_A_N),
	.FPGA_CLK_A_P(FPGA_CLK_A_P),
	.FPGA_CLK_B_N(FPGA_CLK_B_N),
	.FPGA_CLK_B_P(FPGA_CLK_B_P),
	.J1_152(J1_152),
	.XT_IN_N(XT_IN_N),
	.XT_IN_P(XT_IN_P)
	);
endmodule
