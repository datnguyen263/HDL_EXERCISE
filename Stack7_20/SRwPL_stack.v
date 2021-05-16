//Shifter Register with Parallel Load
//sel = 00 --> no change
//sel = 01 --> load INPUT
//sel = 10 --> shift left
//sel = 11 --> shift right
module SRwPL_stack(OUT_M, OUT, clk, IN, sel1, sel0, ILeft, IRight);    
	parameter N = 8;
	//parameter gnd = 1'b0;
	//parameter vcc = 1'b1;
	input clk, ILeft, IRight;
	input sel1, sel0;
	input [N-1:0] IN;
	output OUT_M;
	output [N-2:0] OUT;
	
	wire [1:0] sel;
	assign sel[1] = sel1;
	assign sel[0] = sel0;
	
	//wire OUT [N-1:0];
	wire [N-1:0] mux_o ;
	
	//	D_ff D[N-1:0]( .Qout(), .clk(), .Din()	);
	D_ff D[N-1:0]({OUT_M, OUT[N-2:0]}, clk, mux_o[N-1:0]);
	
	//	mux4_1 mux[N-1:0](.mux_out(), .sel(), .I3(), .I2(), .I1(), .I0());
	mux4_1 mux[N-1:0](mux_o[N-1:0], sel, {ILeft, OUT_M, OUT[N-2:1]}, {OUT[N-2:0], IRight}, IN[N-1:0], {OUT_M, OUT[N-2:0]});

endmodule 