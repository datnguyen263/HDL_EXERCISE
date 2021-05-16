module FullAdder(S, Cout, Cin, A, B);
	input Cin, A, B;
	output S, Cout;
	
	wire w1, w2, w3;
	
	xor xor0(S, Cin, A, B);					//Sum
	and and0(w1, Cin, A);
	and and1(w2, Cin, B);
	and and2(w3, A, B);
	or or0(Cout, w1, w2, w3);				//Carry out
endmodule
	
