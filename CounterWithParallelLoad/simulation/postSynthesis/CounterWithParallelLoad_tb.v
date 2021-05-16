`timescale 1ns/1ps
module CounterWithParallelLoad_tb();
	parameter N = 8;
	parameter M = 40;			//period = 40ns
	reg clk, load, En, D;
	reg [N-1:0] value;
	wire [N-1:0] OUT;
	integer i;
	
	CounterWithParallelLoad CounterWithParallelLoad_inst(OUT, clk, load, En, D, value);
	
	initial begin
		clk = 0; En = 1; load = 1; D = 0; value = 1;
		#M load = 0;
		for (i=1;i<=256;i=i+1) begin
			#M
			value = i;
		end
		#M load = 1; value = 255; D = 1;
		#M load = 0;
		for (i=1;i<=256;i=i+1) begin
			#M
			if(i==100) begin
				load = 1; value = 200;
			end
			else load = 0; value = i;
		end
	#100 $finish;
	end

	always #(M/2) clk = ~clk;
endmodule