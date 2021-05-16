module decoder3to8(O,I,EN);
	output [7:0]O;
	input [2:0]I;
	input EN;
	wire [2:0]I;
	wire EN;
	wire [2:0]I_not;
	not inv[2:0](I_not[2:0],I[2:0]);
	and andgate[7:0](O[7:0],
							{I[2],I[2],I[2],I[2],I_not[2],I_not[2],I_not[2],I_not[2]},
							{I[1],I[1],I_not[1],I_not[1],I[1],I[1],I_not[1],I_not[1]},
							{I[0],I_not[0],I[0],I_not[0],I[0],I_not[0],I[0],I_not[0]},
							EN);
	
endmodule
