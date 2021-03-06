`timescale 1ns/1ps
module RegisterFile_tb();
	parameter N = 40;
	reg clk, WE, RE_A, RE_B;
	reg [4:0] RA_A, RA_B, WA;						//read and write address 
	reg [31:0] IN;
	wire [31:0] OutA, OutB;
	
	integer i;
	
	RegisterFile RegisterFile_inst(OutA, OutB, IN, clk, WE, WA, RE_A, RE_B, RA_A, RA_B);

	initial begin
	  #0 clk = 0; WE = 1; WA = 0; IN = 1; RE_A = 1; RA_A = 0;
	  for(i = 1; i <= 32; i = i + 1) begin
	    #N
	    WA = i; 
	    IN = i*10;
	    RE_A = 0;
	    RA_A = i-1;
	    RE_B = 0;
	    RA_B = i-1;
	  end 	  
	  for(i = 1; i <= 32; i = i + 1) begin
	    #N
	    WA = i; 
	    IN = i*10;
	    RE_A = (i+1)%2;
	    RA_A = i;
	    RE_B = i%2;
	    RA_B = i;
	  end 	  
	  WE = 0;
	  for(i = 1; i <= 32; i = i + 1) begin
	    #N
	    WA = i; 
	    IN = i*10;
	    RE_A = 1;
	    RA_A = i-1;
	    RE_B = 1;
	    RA_B = i;
	  end 
	  for(i = 1; i <= 32; i = i + 1) begin
	    #N
	    WA = i; 
	    IN = i*10;
	    RE_A = 0;
	    RA_A = i-1;
	    RE_B = 1;
	    RA_B = i;
	  end 
	  for(i = 1; i <= 32; i = i + 1) begin
	    #N
	    WA = i; 
	    IN = i*10;
	    RE_A = 1;
	    RA_A = i-1;
	    RE_B = 0;
	    RA_B = i;
	  end 
	  #100 $finish;
	end
	always #(N/2) clk = ~clk;
endmodule