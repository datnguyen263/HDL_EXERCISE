module decoder5to32(O,I,EN);
	output [31:0]O;
	input [4:0]I;
	input EN;
	wire [4:0]I;
	wire [31:0]outdec;
	decoder4to16 dec[1:0](.O(outdec),
							.I(I[3:0]),
							.EN({I[4],~I[4]})
							);
	and andgate[31:0](O,outdec,EN);
endmodule
