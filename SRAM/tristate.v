module tristate(out, in, oe);
	input oe, in;
	output out;
	
	bufif1 bf(out, in, oe);
	
endmodule