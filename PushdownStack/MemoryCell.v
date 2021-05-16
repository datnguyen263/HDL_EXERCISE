module MemoryCell(out,in,WE,RS); //WE:Write Enable, RS:Row Select
	output out;
	input in,WE,RS;
	wire Qout,A1,In,WE,RS;
	wire out;
	bufif1 tristate1(out,Qout,RS); //Out,In,Control
	and and1(A1,WE,RS);
	d_latch dlatch1(.Q(Qout),.Qn(),.G(A1),.D(in));
endmodule
