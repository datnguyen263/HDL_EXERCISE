module RAM(O,I,RWS,CS,ADDR);
	//inout [7:0]IO;
	input [7:0]I;
	output [7:0]O;
	input [9:0]ADDR;
	input RWS,CS;
	
	wire WE,Tri_EN;
	and WriteEnable(WE,RWS,CS);
	and TriEnable(Tri_EN,~RWS,CS);
	
	wire [1023:0]outdec;
	decoder10to1024 dec(.O(outdec),.I(ADDR),.EN(1'b1));
	
	wire [7:0]outmc;
	mc8bit mem[1023:0](.out(outmc),.in(I),.WE(WE),.RS(outdec));
	
	bufif1 tristate[7:0](O,outmc,Tri_EN);
endmodule
