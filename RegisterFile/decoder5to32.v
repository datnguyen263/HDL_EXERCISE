module decoder2to4(Out, sel, en);
	input en;
	input [1:0] sel;
	output [3:0] Out;
	
	and and3(Out[3], sel[1], sel[0], en);
	and and2(Out[2], sel[1], ~sel[0], en);
	and and1(Out[1], ~sel[1], sel[0], en);
	and and0(Out[0], ~sel[1], ~sel[0], en);
endmodule

module decoder3to8(Out, sel, en);
	input en;
	input [2:0] sel;
	output [7:0] Out;
	
	and and7(Out[7], sel[2], sel[1], sel[0], en);
	and and6(Out[6], sel[2], sel[1], ~sel[0], en);
	and and5(Out[5], sel[2], ~sel[1], sel[0], en);
	and and4(Out[4], sel[2], ~sel[1], ~sel[0], en);
	and and3(Out[3], ~sel[2], sel[1], sel[0], en);
	and and2(Out[2], ~sel[2], sel[1], ~sel[0], en);
	and and1(Out[1], ~sel[2], ~sel[1], sel[0], en);
	and and0(Out[0], ~sel[2], ~sel[1], ~sel[0], en);
endmodule

module decoder5to32(Out, sel, en);
	input en;
	input [4:0] sel;
	output [31:0] Out;
	
	wire [3:0] out2to4;
	
	//decoder2to4(Out, sel, en)
	decoder2to4 decoder2to4_inst(out2to4, sel[4:3], en);
	
	//decoder3to8(Out, sel, en)
	decoder3to8 decoder3to8_inst[3:0](Out, sel[2:0], out2to4);
endmodule
