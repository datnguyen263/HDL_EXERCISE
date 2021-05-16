module dff_setrst(Q,Qn,D,SET,RST,CLK);
	output Q,Qn;
	input D,SET,RST,CLK;
	wire outm1,outm2,outm3;
	m21 m1(.Y(outm1),.D0(D),.D1(1'b1),.S(SET));
	m21 m2(.Y(outm2),.D0(D),.D1(1'b0),.S(RST));
	m21 m3(.Y(outm3),.D0(outm2),.D1(outm1),.S(SET));
	d_flipflop d(.Q(Q),.Qn(Qn),.D(outm3),.Clk(CLK));
endmodule
