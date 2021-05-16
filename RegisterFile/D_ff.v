module D_ff(Qout, Din, clk);
	input Din, clk;
	output reg Qout;
	
	always @(posedge clk) begin
		Qout <= Din;
	end
endmodule
