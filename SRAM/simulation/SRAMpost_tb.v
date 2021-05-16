`timescale 1ns/1ps
module SRAM_tb();
	parameter N = 104;
	reg [7:0] data_in;
	reg [9:0] addr;
	reg en, RWS;
	wire [7:0] OUT;
	
	SRAM SRAM_inst(OUT, en, RWS, data_in, addr);
	
	initial begin
		en = 0; RWS = 1; addr = 10; data_in = 8'd100;
		#N en = 1; addr = 20; data_in = 8'd200;
		#N addr = 1000; 
		#(N/4) data_in = 8'd5;
		#(N*3/4) RWS = 0; addr = 10; 
		#(N/4) data_in = 0;
		#(N*3/4) addr = 20; 
		#N addr = 1000;
		#(N*3/4) data_in = 8'd255;
		#(N/4) RWS = 1; addr = 1023; 
		#N RWS = 0; addr = 40; 
		#(N/4) data_in = 0;
		#(N*3/4) addr = 50;
		#N RWS = 1; data_in = 8'd150;
		#N RWS = 0; 
		#(N/4) data_in = 0;
		#(N*3/4) addr = 1023;
		#N addr = 0;
		#N RWS = 1; data_in = 8'd1;
		#N RWS = 0; 
		#(N/4) data_in = 0;
		#N $stop;
	end
endmodule


