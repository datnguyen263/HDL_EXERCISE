module decoder_main(out_main, sel_main, en_main);
	  input [9:0] sel_main;
	  input en_main;
	  output [1023:0] out_main;
	  
	  wire [31:0] dec_out;
	  
	  decoder dec0[31:0](out_main, sel_main[4:0], dec_out[31:0]);
	  decoder dec1(dec_out, sel_main[9:5], en_main);
endmodule
