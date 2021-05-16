//module Queue 1024 x 8 bits
//ReadWrite = 1 --> Write
//ReadWrite = 0 --> Read
module Queue7_24(IOports, empty, full, clk, reset, en, ReadWrite);
	parameter N = 8;						//bits of IOports
	parameter M = 10;						//bits of address
	parameter gnd = 1'b0;
	input clk, reset, en, ReadWrite;
	output empty, full;
	inout [N-1:0] IOports;
	
	wire w1, w2, w3, cs, o_comparator;
	wire [M:0] ct_front, ct_back;
	wire [M-1:0] o_selector;
	
	and and0(w2, ~reset, en, ~ReadWrite, ~empty);
	and and1(w3, ~reset, en, ReadWrite, ~full);
	or or0(cs, w2, w3);
	
	
	//Counter(OUT, clk, load, En, D, value)
	Counter Counter_front(ct_front, clk, reset, w2, gnd, 11'd0);
	Counter Counter_back(ct_back, clk, reset, w3, gnd , 11'd0);
	
	//Comparator(out, A, B)
	Comparator Comparator_inst(o_comparator, ct_front[M-1:0], ct_back[M-1:0]);
	
	//selector(out, sel, I0, I1)
	selector selector_inst(o_selector, w2, ct_back[M-1:0], ct_front[M-1:0]);
	
	//SRAM(IOports, RWS, CS, addr)
	SRAM SRAM_inst(IOports, w3, cs, o_selector);
	
	xor xor0(w1, ct_front[M], ct_back[M]);
	and and2(empty, o_comparator, ~w1);
	and and3(full, o_comparator, w1);
endmodule
	
	
	
