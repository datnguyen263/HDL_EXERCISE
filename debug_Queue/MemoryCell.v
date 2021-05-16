module MemoryCell(Out, In, WE, CS);
	input In, WE, CS;
	output Out;
	
	wire lo;					//latch output
	wire w1;
	
	and and0(w1, CS, WE);
	
	//D_latch(Qout, en, Din)
	D_latch D_latch_inst(lo, w1, In);
	
	bufif1 bf(Out, lo, CS);
endmodule
