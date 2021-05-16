//moduel word 32 bit
module word(OutA, OutB, RE_A, RE_B, WE, In, clk);
	parameter N = 31;
	input clk, WE, RE_A, RE_B;
	input [N:0] In;
	output [N:0] OutA, OutB;
	
	//RegisterFileCell(OutA, OutB, RE_A, RE_B, WE, In, clk)
	RegisterFileCell RegisterFileCell_inst[N:0](OutA, OutB, RE_A, RE_B, WE, In, clk);
endmodule