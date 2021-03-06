`timescale 1ns/100ps
module Testbench();
  reg [7:0]I;
  wire [7:0]O;
  reg Reset;
  reg PushPop,CLK;
  wire Empty,Full;
  
  PushdownStack inst0(.O(O),.I(I),.Empty(Empty),.Full(Full),.Reset(Reset),.PushPop(PushPop),.Enable(1'b1),.CLK(CLK));
  
  integer i;
  
  initial begin
    CLK=1'b0;
    forever #40 CLK = ~CLK;
  end
  
  initial begin
    Reset=1'b1;
    PushPop=1'b0; //????????
    #60;
    Reset=1'b0;
  for(i=0;i<1023;i=i+1) begin 
			#80;
			I=i;
	  end
	  #40 PushPop=1'b1;
	  #6000 $finish;
  end
  
endmodule
