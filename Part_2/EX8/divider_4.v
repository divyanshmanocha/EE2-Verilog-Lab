module divider_4(in, out, remainder);
	input in[5:0];
	output out[3:0];// = in[5:2]
	output remainder[2:0];// = in[2:0]
endmodule