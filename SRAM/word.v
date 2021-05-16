module word(out, in, cs, we);
	parameter N = 7;		//8bit
	
	input [N:0] in;
	input cs, we;
	output [N:0] out;
	
	//MemoryCell(Out, In, WE, CS)
	MemoryCell MemoryCell_inst[N:0](out, in, we, cs);

endmodule





	