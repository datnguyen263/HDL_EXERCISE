`timescale 1ns/1ps
module SRAM_tb();
	parameter N = 10;
	reg [9:0] addr;
	reg CS, RWS;
	reg [7:0] Din;
	wire [7:0] IOports;
	assign IOports = RWS ? Din: 8'bz;	
	SRAM SRAM_inst(IOports, RWS, CS, addr);

	initial begin
	        CS = 1'b0; RWS = 1; addr = 10;  Din= 8'd100;
	 #(N*4) CS = 1'b1;          addr = 20;  
	 #N                                     Din= 8'd200;
	 #(N*3)                     addr = 1000;
	 #N                                     Din= 8'd1;
	 #(N*3)            RWS = 0; addr = 20;  Din= 8'd0;
	 #(N*4)                     addr = 10;
	 #(N*4)                     addr = 1000;
	 #(N*4)                     addr = 0;
	 #20000 $stop;
	end



endmodule