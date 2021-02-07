module SoCKit_DCC_TOP
(
   CLK,
   KEY,
	SW,
	LED,
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
	XT_IN_P
	);
input                      CLK;
input           [3:0]      KEY;
input           [3:0]      SW;
output          [3:0]      LED;
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

wire						reset_n;
wire						sys_clk;
wire						sys_clk_90deg;
wire						sys_clk_180deg;
wire						sys_clk_270deg;
wire						pll_locked;

wire		[12:0]			i_sine1;
wire		[12:0]			i_sine10;
wire		[12:12]			t_sine1;
wire		[12:12]			t_sine10;
reg			[12:0]			is_sine1;
reg			[12:0]			is_sine10;
reg			[12:0]			iu_sine1;
reg			[12:0]			iu_sine10;

wire		[13:0]			o_sine;
reg			[13:0]			o_sine_p;
reg			[13:0]			o_sine_n;

reg			[13:0]			per_a2da_d;
reg			[13:0]			per_a2db_d;
reg			[13:0]			a2da_data;
reg			[13:0]			a2db_data;

wire		[13:0]			fir_in_data;
wire		[13:0]			fir_data;

assign	reset_n			= KEY[3];

assign	FAN_CTRL		= 1'bz;

assign	FPGA_CLK_A_P	=  sys_clk_180deg;
assign	FPGA_CLK_A_N	= ~sys_clk_180deg;
assign	FPGA_CLK_B_P	=  sys_clk_270deg;
assign	FPGA_CLK_B_N	= ~sys_clk_270deg;

assign	LED[0]			= ~SW[0];
assign	LED[1]			= ~SW[1];
assign	LED[2]			= !SW[3] ? ~ADA_OR : ~ADB_OR;
assign	LED[3] 			= count[24];

assign	AD_SCLK			= SW[0];
assign	AD_SDIO			= SW[1];
assign	ADA_OE			= 1'b0;
assign	ADA_SPI_CS		= 1'b1;
assign	ADB_OE			= 1'b0;
assign	ADB_SPI_CS		= 1'b1;

assign	DA = o_sine_p;
assign	DB = o_sine_n;

reg [31:0] freQ;
reg [31:0] freQ2;
reg [31:0] freQ3;
reg [31:0] freQ4;
reg [31:0] freQ5;
reg [31:0] freQ6;
reg [31:0] freQ7;
reg [31:0] freQ8;
reg [31:0] freQ9;
reg [31:0] freQ10;
reg [31:0] freQ11;
reg [31:0] freQ12;
reg [31:0] freQ13;
reg [31:0] freQ14;
reg [31:0] freQ15;
reg [31:0] freQ16;
time			timerVar;


initial begin
	freQ <= 32'd42992;
	freQ2 <= 32'd4294967;
	freQ3 <= 32'd4294967;
	freQ4 <= 32'd4294967;
	freQ5 <= 32'd4294967;
	freQ6 <= 32'd4294967;
	freQ7 <= 32'd4294967;
	freQ8 <= 32'd4294967;
	freQ9 <= 32'd4294967;
	freQ10 <= 32'd4294967;
	freQ11 <= 32'd4294967;
	freQ12 <= 32'd4294967;
	freQ13 <= 32'd4294967;
	freQ14 <= 32'd4294967;
	freQ15 <= 32'd4294967;
	freQ16 <= 32'd4294967;
	#100;
end

always
	begin
		#1;
		freQ = 32'd439883*timerVar + 32'd42950;
		freQ2 = 32'd439883*timerVar + 32'd43950;
		freQ3 = 32'd439883*timerVar + 32'd44950;
		freQ4 = 32'd439883*timerVar + 32'd45950;
		freQ5 = 32'd439883*timerVar + 32'd46950;
		freQ6 = 32'd439883*timerVar + 32'd47950;
		freQ7 = 32'd439883*timerVar + 32'd48950;
		freQ8 = 32'd439883*timerVar + 32'd49950;
		freQ9 = 32'd439883*timerVar + 32'd50950;
		freQ10 = 32'd439883*timerVar + 32'd51950;
		freQ11 = 32'd439883*timerVar + 32'd52950;
		freQ12 = 32'd439883*timerVar + 32'd53950;
		freQ13 = 32'd439883*timerVar + 32'd54950;
		freQ14 = 32'd439883*timerVar + 32'd55950;
		freQ15 = 32'd439883*timerVar + 32'd56950;
		freQ16 = 32'd439883*timerVar + 32'd57950;
		if (freQ >= 32'd429926226)
			begin
				freQ <= 32'd42992;
				freQ2 <= 32'd4294967;
				freQ3 <= 32'd4294967;
				freQ4 <= 32'd4294967;
				freQ5 <= 32'd4294967;
				freQ6 <= 32'd4294967;
				freQ7 <= 32'd4294967;
				freQ8 <= 32'd4294967;
				freQ9 <= 32'd4294967;
				freQ10 <= 32'd4294967;
				freQ11 <= 32'd4294967;
				freQ12 <= 32'd4294967;
				freQ13 <= 32'd4294967;
				freQ14 <= 32'd4294967;
				freQ15 <= 32'd4294967;
				freQ16 <= 32'd4294967;
			end
	end

//--- pll
lpm_pll		pll_inst(
			.inclk0(CLK),
			.c0(sys_clk),
			.c1(sys_clk_90deg),
			.c2(sys_clk_180deg),
			.c3(sys_clk_270deg),
			.locked(pll_locked)
			);


//--- NCO functions of 8x 1kHz-1.001MHz chirp signals
//--- Here we are updating i_sine1 with the instantaneous frequency of each orthogonal chirp signal.
lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);
			
lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ2),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);

lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ3),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);
			
lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ4),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);

lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ5),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);
			
lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ6),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);

lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ7),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);

lpm_nco	NCO_1MHz_inst(
			.phi_inc_i(freQ8),							
			.clk(sys_clk),
			.reset_n(KEY[0]),
			.clken(1'b1),
			.fsin_o(i_sine1),
			.out_valid()
			);		

//--- NCO function 8x 1kHz-10.01MHz chirp signals
lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ9),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);
			
lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ10),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);
			
lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ11),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);

lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ12),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);

lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ13),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);

lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ14),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);

lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ15),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);

lpm_10M_nco	NCO_10MHz_inst(							
			.phi_inc_i(freQ16),
			.clk(sys_clk),
			.reset_n(KEY[1]),
			.clken(1'b1),
			.fsin_o(i_sine10),
			.out_valid()
			);			

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		is_sine1	<= 13'd0;
		is_sine10	<= 13'd0;
		iu_sine1	<= 13'd0;
		iu_sine10	<= 13'd0;
	end
	else begin
		is_sine1	<= i_sine1;
		is_sine10	<= i_sine10;
		iu_sine1	<= {~is_sine1[12],is_sine1[11:0]};
		iu_sine10	<= {~is_sine10[12],is_sine10[11:0]};
	end
end

//--- Sum of the two signals
add		add_inst(
			.dataa({1'b1,iu_sine1}),
			.datab({1'b1,iu_sine10}),
			.result(o_sine)
			);

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		o_sine_p	<= 14'd0;
		o_sine_n	<= 14'd0;
	end
	else begin
		o_sine_p	<= o_sine;
		o_sine_n	<= ~o_sine_p;
	end
end


//--- analog to digital converter capture and sync
	//--- Channel A
always @(negedge reset_n or posedge ADA_DCO)
begin
	if (!reset_n) begin
		per_a2da_d	<= 14'd0;
	end
	else begin
		per_a2da_d	<= ADA_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<= per_a2da_d;
	end
end

	//--- Channel B
always @(negedge reset_n or posedge ADB_DCO)
begin
	if (!reset_n) begin
		per_a2db_d	<= 14'd0;
	end
	else begin
		per_a2db_d	<= ADB_D;
	end
end

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2db_data	<= 14'd0;
	end
	else begin
		a2db_data	<= per_a2db_d;
	end
end


//--- 3 MHz low pass FIR filter
assign	fir_in_data	= !SW[3] ?  a2da_data : a2db_data;

FIR_3MHZ_low	FIR_3MHZ_low_inst (
			.clk(sys_clk),
			.reset_n(reset_n),
			.ast_sink_data(fir_in_data),
			.ast_sink_valid(1'b1),
			.ast_sink_error(2'b00),
			.ast_source_data(fir_data),
			.ast_source_valid(),
			.ast_source_error()
			);


//--- count for Heartbeat
reg		[31:0]				count;
always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		count	<= 0;
	end
	else begin
		count	<= count + 1'b1;
	end
end

//--- probe points for data capture
sine_1		sin1_inst(
			.probe(iu_sine1),
			.source());

sine_10		sin10_inst(
			.probe(iu_sine10),
			.source());

p_sine		p_sine_inst(
			.probe(o_sine_p),
			.source());

a2d_data_a	a2d_data_a_inst(
			.probe(a2da_data),
			.source());
a2d_data_b	a2d_data_b_inst(
			.probe(a2db_data),
			.source());

fir_out		fir_out_inst(
			.probe(fir_data),
			.source());
			
endmodule
