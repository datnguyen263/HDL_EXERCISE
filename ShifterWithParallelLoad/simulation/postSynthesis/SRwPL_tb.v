`timescale 1ns/1ps
module SRwPL_tb();
	parameter N = 8;
	reg clk;
	reg [1:0] sel;
	reg [N-1:0] IN; 
	wire [N-1:0] OUT;
	
	SRwPL SRwPL_inst(OUT, clk, IN, sel);
	
	initial begin
		//clk = 1'b0; sel = 2'b01; IN = (N-1)'d15;
		clk = 1'b0; sel = 2'b01; IN = 8'd15;
		#40 sel = 2'b00; IN = 8'd15;
		//$display("sel = %b, IN = %b", sel, IN);
		#70 sel = 2'b10; IN = 8'd6;
		#50 sel = 2'b00; IN = 8'd4;
		#50 sel = 2'b11; IN = 8'd4;
		#30 sel = 2'b11; IN = 8'd20;
		#30 sel = 2'b00; IN = 8'd20;
		#20 $stop;
		//#2 $finish;
	end
	
	always #20 clk = ~clk;	//period = 40
endmodule