module decoder4to16(O,I,EN);
	output [15:0]O;
	input [3:0]I;
	input EN;
	wire [3:0]I;
	wire [15:0]outdec;
	decoder3to8 dec[1:0](.O(outdec),
							.I(I[2:0]),
							.EN({I[3],~I[3]})
							);
	and andgate[15:0](O,outdec,EN);
	//wire I_not;
	//not inv0(I_not,I[3]);
	//decoder3to8 dcd0(O[7:0],I[2:0],I_not);
	//decoder3to8 dcd1(O[15:8],I[2:0],I[3]);
endmodule
