module selector(out, sel, I0, I1);
	parameter n = 10;
	input sel;
	input [n-1:0] I1, I0;
	output [n-1:0] out;
	
	//mux2_1(mux_out, sel, I0, I1)
	mux2_1 mux2_1_inst[n-1:0](out, sel, I0, I1);
endmodule