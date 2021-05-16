//module comparator
//if A = B --> out = 1;
//if A != B --> out = 0;
module Comparator(out, A, B);
	parameter N = 10;
	parameter vcc = 1'b1;
	input [N-1:0] A, B;
	output out;
	
	wire [N-1:0] FAS_out;
	
	//FAS(S, Cout, D, A, B)
	FAS FAS_inst(FAS_out, , vcc, A, B);
	
	assign out = ~(|FAS_out);
	//nor nor0(out, FAS_out[9], FAS_out[8], FAS_out[7], FAS_out[6], FAS_out[5], FAS_out[4], FAS_out[3], FAS_out[2], FAS_out[1], FAS_out[0]); 
endmodule
