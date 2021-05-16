module m21_10bit(Y,D0,D1,S);
	output [9:0]Y;
	input [9:0]D0,D1;
	input S;
	wire [9:0]D0,D1;
	wire S;
	m21 m21_10bit[9:0](.Y(Y),.D0(D0),.D1(D1),.S(S));
endmodule