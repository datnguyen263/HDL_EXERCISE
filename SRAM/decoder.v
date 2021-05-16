//decoder 32 bit
module decoder(out, sel, en);
	input [4:0] sel;
	input en;
	output [31:0] out;
	
	parameter [31:0] a = 32'd04294901760;		//a = 32'b11111111111111110000000000000000
	parameter [31:0] b = 32'd4278255360;		//b = 32'b11111111000000001111111100000000
	parameter [31:0] c = 32'd4042322160;		//c = 32'b11110000111100001111000011110000
	parameter [31:0] d = 32'd3435973836;		//d = 32'b11001100110011001100110011001100
	parameter [31:0] e = 32'd2863311530;		//e = 32'b10101010101010101010101010101010
	
	wire [31:0] xnor_a, xnor_b, xnor_c, xnor_d, xnor_e;
	
	xnor xno_a[31:0](xnor_a, sel[4], a);
	xnor xno_b[31:0](xnor_b, sel[3], b);
	xnor xno_c[31:0](xnor_c, sel[2], c);
	xnor xno_d[31:0](xnor_d, sel[1], d);
	xnor xno_e[31:0](xnor_e, sel[0], e);
	
	and and0[31:0](out, xnor_a, xnor_b, xnor_c, xnor_d, xnor_e, en);
	
endmodule

