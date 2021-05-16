module mc8bit(out,in,WE,RS);
	output [7:0]out;
	input [7:0]in;
	input WE,RS;
	MemoryCell mc[7:0](.out(out),.in(in),.WE(WE),.RS(RS));
endmodule
