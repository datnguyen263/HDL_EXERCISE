module Stack7_20(counter, OUT, empty, full, IN, clk, PushPop, En, reset);
	parameter N = 7;
	input clk, PushPop, En, reset;
	input [N:0] IN;
	output empty, full;
	output [N:0] OUT, counter;
	
	wire sel1, sel0, load, en_ct, D;
	wire [N:0] o_ct;
	
	assign counter = o_ct;
	
	assign empty = ~(o_ct[7] | o_ct[6] | o_ct[5] | o_ct[4] | o_ct[3] | o_ct[2] | o_ct[1] | o_ct[0]);
	assign full = 	~(o_ct[7] | o_ct[6] | o_ct[5] | o_ct[4] | (~o_ct[3]) | o_ct[2] | o_ct[1] | o_ct[0]);
	
	assign sel1 = ((~empty) & (((~full) & En & (~reset)) | (PushPop & En & (~reset)))) | (empty & (~full) & (~PushPop) & En & (~reset));
	assign sel0 = reset | ((~full) & (~PushPop) & En);
	assign load = reset;
	assign en_ct = sel1;
	assign D = PushPop & En & (~reset);
	
	
	//SRwPL_stack(OUT_M, OUT, clk, IN, sel1, sel0, ILeft, IRight);      
	SRwPL_stack SRwPL_stack_inst[N:0](OUT, , clk, 8'd0, sel1, sel0, IN, 8'd0);
	
	//CounterWithParallelLoad(OUT, clk, load, En, D, value);
	CounterWithParallelLoad CounterWithParallelLoad_inst(o_ct, clk, load, en_ct, D, 8'd0);
endmodule







