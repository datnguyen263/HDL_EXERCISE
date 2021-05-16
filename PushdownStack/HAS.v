module HAS(Cout,Dout,Cin,Qin,Qin_NOT,Din,Din_NOT);
	input Qin,Cin,Din_NOT,Din,Qin_NOT;
	output Cout,Dout;
	wire a,b;
	and and1(a,Qin,Din_NOT,Cin);
	and and2(b,Cin,Qin_NOT,Din);
	or(Cout,a,b);
	xor(Dout,Qin,Cin);
endmodule