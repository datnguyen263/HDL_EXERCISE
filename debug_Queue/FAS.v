//module Full Adder Subtractor
//D = 0 --> S = A + B
//D = 1 --> S = A - B
module FAS(S, Cout, D, A, B);
	parameter N = 10;					//10 bit
	input D;
	input [N-1:0] A, B;
	output Cout;
	output [N-1:0] S;
	
	wire [N-1:0] xor_out;
	wire [N-2:0] C; 								//output of Cout 
	
	xor_gate _xor[N-1:0](xor_out, D, B);
	
	//FullAdder(S, Cout, Cin, A, B);
	FullAdder FullAdder_inst[N-1:0](S, {Cout, C[N-2:0]}, {C[N-2:0], D}, A, xor_out);
endmodule
	
	
	
module xor_gate(out, in0, in1);
	input in0;
	input in1;
	output out;
	
	xor xor_(out, in0, in1);
endmodule
	
	