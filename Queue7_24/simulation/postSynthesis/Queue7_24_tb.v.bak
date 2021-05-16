`timescale 1ns/1ps	
module Queue7_24_tb();
	parameter M = 40;    //period
	parameter N = 8;						//bits of IOports
	reg clk, reset, en, ReadWrite;
	wire empty, full;
	wire [N-1:0] IOports;
	reg [N-1:0] IN;
	integer i;
	
	Queue7_24 Queue7_24_inst(IOports, empty, full, clk, reset, en, ReadWrite);
	
	assign IOports = ReadWrite ? IN : 8'bz;
	
	initial begin
		clk = 0; reset = 1; en = 1; ReadWrite = 0; IN = 5; 
		#M reset = 0; 
		#(M*2) ReadWrite = 1; IN = 10;
		for(i = 1; i<=1026; i=i+1) begin
			#M 
			IN = i*10;
		end
		ReadWrite = 0;
		for(i = 1; i<=1028; i=i+1) begin
			#M 
			if(i>1020 && i<1025) en = 0;
			else en = 1;
			IN = i;
		end
		#1000 $stop;
	end
	always #(M/2) clk = ~clk;
endmodule