//module DRAM 1024x8bit
//RWS = 0 --> read
//RWS = 1 --> write
module SRAM(IOports, RWS, CS, addr);
	//parameter N = 8;
	input [9:0] addr;
	input CS, RWS;
	inout [7:0] IOports;
	
	wire [1023:0] dec_out;
	wire [7:0] word_out;
	wire [7:0] in;
	wire w1, w2;
	
	and and0(w1, RWS, CS);
	and and1(w2, ~RWS, CS);
	
	//decoder_main(out_main, sel_main, en_main)
	decoder_main dec_inst(dec_out, addr, 1'b1);
	
	//word(out, in, cs, we)
	word word_inst[1023:0](word_out, in, dec_out, w1);
	
	//tristate(out, in, oe)
	tristate tristate_inst[7:0](IOports, word_out, w2);
	tristate tristate_inst1[7:0](in, IOports, w1);
endmodule



	

