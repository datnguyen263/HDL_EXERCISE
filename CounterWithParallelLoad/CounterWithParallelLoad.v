//Module up/down binary counter with parallel load 
//load En D
//  0  0  x: No change
//  0  1  0: Count up
//  0  1  1: Count down
//  1  x  x: Load the input value

module CounterWithParallelLoad(OUT, clk, load, En, D, value);
	parameter N = 11;
	input clk, load, En, D;
	input [N-1:0] value;
	output [N-1:0] OUT;
	wire [N-1:0] OUT;
	
	wire [N-1:0] HAS_o, carry_o, mux_o;
	

	
	//HAS(.out(), .carry_bit(), .D(), .a(), .b())
	HAS HAS_inst[N-1:0](HAS_o[N-1:0], carry_o[N-1:0], D, OUT[N-1:0], {carry_o[N-2:0], En});
	//cong _cong (.A(OUT), .OUT(mux_o), .S(D));
	
	//mux2_1(.mux_out(), .sel(), .I0(), .I1())
	mux2_1 mux_inst[N-1:0](mux_o[N-1:0], load, HAS_o[N-1:0], value[N-1:0]);
	
	//D_ff(.Qout(), .clk(), .Din())
	D_ff D_ff_inst[N-1:0](OUT[N-1:0], clk, mux_o[N-1:0]);
	
//	D_ff D_ff_inst0(.Qout(OUT[0]), .clk(clk), .Din(mux_o[7]));
//	D_ff D_ff_inst1(.Qout(OUT[1]), .clk(clk), .Din(mux_o[6]));
//	D_ff D_ff_inst2(.Qout(OUT[2]), .clk(clk), .Din(mux_o[5]));
//	D_ff D_ff_inst3(.Qout(OUT[3]), .clk(clk), .Din(mux_o[4]));
//	D_ff D_ff_inst4(.Qout(OUT[4]), .clk(clk), .Din(mux_o[3]));
//	D_ff D_ff_inst5(.Qout(OUT[5]), .clk(clk), .Din(mux_o[2]));
//	D_ff D_ff_inst6(.Qout(OUT[6]), .clk(clk), .Din(mux_o[1]));
//	D_ff D_ff_inst7(.Qout(OUT[7]), .clk(clk), .Din(mux_o[0]));
endmodule






