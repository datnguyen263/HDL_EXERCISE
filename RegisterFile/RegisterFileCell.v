//module RegisterFileCell 
//WE = 1 --> Write
//RE_A = 1 --> Read OutA
//RE_B = 1 --> Read OutB
module RegisterFileCell(OutA, OutB, RE_A, RE_B, WE, In, clk);
	input WE, clk, In, RE_A, RE_B;
	output OutA, OutB;
	
	wire q, w1, w2, d;
	
	and and0(w1, q, ~WE);
	and and1(w2, In, WE);
	or or0(d, w1, w2);
	
	bufif1 bufif1_0(OutA, q, RE_A);
	bufif1 bufif1_1(OutB, q, RE_B);
	
	//D_ff(Qout, Din, clk)
	D_ff D_ff_inst(q, d, clk);
endmodule
