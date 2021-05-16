//module RegisterFileCell 
//WE = 1 --> Write
//RE_A = 1 --> Read OutA
//RE_B = 1 --> Read OutB
module RegisterFile(OutA, OutB, IN, clk, WE, WA, RE_A, RE_B, RA_A, RA_B);
  parameter N = 31;
	input clk, WE, RE_A, RE_B;
	input [4:0] RA_A, RA_B, WA;						//read and write address 
	input [N:0] IN;
	output [N:0] OutA, OutB;
	
	wire [N:0] odec1, odec2, odec3;      //output of decoder5to32
	
	//decoder5to32(Out, sel, en)
	decoder5to32 decoder5to32_inst_write(odec1, WA, WE);
	
	decoder5to32 decoder5to32_inst_readA(odec2, RA_A, RE_A);
	
	decoder5to32 decoder5to32_inst_readB(odec3, RA_B, RE_B);
	
	//word(OutA, OutB, RE_A, RE_B, WE, In, clk)
	word word_inst[N:0](OutA, OutB, odec2, odec3, odec1, IN, clk);
	
endmodule


