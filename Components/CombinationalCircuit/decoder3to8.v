module decoder3to8(Out, sel);
	input [2:0] sel;
	output [7:0] Out;
	
	and and7(Out[7], sel[2], sel[1], sel[0]);
	and and6(Out[6], sel[2], sel[1], ~sel[0]);
	and and5(Out[5], sel[2], ~sel[1], sel[0]);
	and and4(Out[4], sel[2], ~sel[1], ~sel[0]);
	and and3(Out[3], ~sel[2], sel[1], sel[0]);
	and and2(Out[2], ~sel[2], sel[1], ~sel[0]);
	and and1(Out[1], ~sel[2], ~sel[1], sel[0]);
	and and0(Out[0], ~sel[2], ~sel[1], ~sel[0]);
endmodule

	
