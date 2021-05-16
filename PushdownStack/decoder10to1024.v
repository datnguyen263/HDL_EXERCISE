module decoder10to1024(O,I,EN);
	output [1023:0]O;
	input [9:0]I;
	input EN;
	wire [9:0]I;
	wire [1023:0]outdec;
	wire [31:0]wiredec;
	decoder5to32 dcd(.O(wiredec),
						.I(I[9:5]),
						.EN(EN)
						);
	decoder5to32 dec[31:0](.O(outdec),
								.I(I[4:0]),
								.EN(wiredec)
								);
	and andgate[1023:0](O,outdec,EN);
endmodule
