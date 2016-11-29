module EX8_top (CLOCK_50, KEY, HEX0, HEX1, HEX2, HEX3, HEX4, LEDR);
	input CLOCK_50;
	input[3:0] KEY;
	output[9:0] LEDR;
	output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4;
	
	wire[5:0] prbs;
	wire [3:0] BCD0, BCD1, BCD2, BCD3, BCD4;
	
	wire clk_div_50000, clk_div_2500, trigger, start_delay, time_out, en_lfsr;
	
	divider_50000 (CLOCK_50, clk_div_50000);
	divider_2500 (clk_div_50000, CLOCK_50, clk_div_2500);
	
	lfsr6(prbs[5:0], clk_div_50000, en_lfsr);
	
	EX8_delay(prbs[5:0], clk_div_50000, start_delay, time_out);
	
	FSM (clk_div_50000, clk_div_2500, ~KEY[3], time_out, en_lfsr, start_delay, LEDR[9:0]);
	
	bin2bcd_16(prbs[5:0], BCD0, BCD1, BCD2, BCD3, BCD4);
	
	hex_to_7seg(BCD0[3:0], HEX0[6:0]);
	hex_to_7seg(BCD1[3:0], HEX1[6:0]);
	hex_to_7seg(BCD2[3:0], HEX2[6:0]);
	hex_to_7seg(BCD3[3:0], HEX3[6:0]);
	hex_to_7seg(BCD4[3:0], HEX4[6:0]);
	
endmodule