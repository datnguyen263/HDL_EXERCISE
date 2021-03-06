//module D_latch(Qout, en, Din);
//	input Din, en;
//	output Qout;
//	
//	wire w1, w2, w3;
//	
//	and and0(w1, ~Din, en);
//	and and1(w2, Din, en);
//	nor nor0(Qout, w1, w3);
//	nor nor1(w3, w2, Qout);
//	
//endmodule

module D_latch(Qout, en, Din);
	input Din, en;
	output reg Qout;
	
	always @ (Din or en)
	if(en)
	begin
	Qout <= Din;
	//Qbar <= ~D;
	end
endmodule 