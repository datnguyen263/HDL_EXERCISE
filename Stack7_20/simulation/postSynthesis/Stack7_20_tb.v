`timescale 1ns/1ps
module Stack7_20_tb();
  integer i;
	parameter M = 40;    //period
	parameter N = 7;
	reg clk, PushPop, En, reset;
	reg [N:0] IN;
	wire empty, full;
	wire [N:0] OUT, counter;
	
	Stack7_20 Stack7_20_inst(counter, OUT, empty, full, IN, clk, PushPop, En, reset);
	
	initial begin
		clk = 0; reset = 1; En = 1; PushPop = 1; IN = 5; 
		#M reset = 0; 
		#(M*2) PushPop = 0; IN = 10;
		for(i = 1; i<=8; i=i+1) begin
			#M 
			IN = i*10;
		end
		#(M*2)
		PushPop = 1;
		for(i = 1; i<=10; i=i+1) begin
			#M 
			if(i>7 && i<9) En = 0;
			else En = 1;
			IN = i;
		end
		#1000 $stop;
	end
	always #(M/2) clk = ~clk;
endmodule