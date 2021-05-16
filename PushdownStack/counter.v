module counter(out,D,E,SET,RST,CLK);
	output [9:0]out;
	input D,E,SET,RST,CLK;
	wire [9:0]Cout,Dout,Q,Qn;
	HAS ha[9:0](.Cout(Cout),.Dout(Dout),.Cin({Cout[8:0],E}),.Qin(out),.Qin_NOT(Qn),.Din(D),.Din_NOT(~D));
	dff_setrst dff[9:0](.Q(out),.Qn(Qn),.D(Dout),.SET(SET),.RST(RST),.CLK(CLK));
endmodule