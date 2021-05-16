module PushdownStack(O,I,Empty,Full,Reset,PushPop,Enable,CLK);
	//inout wire [7:0] InOut;
	input wire [7:0]I;
	output wire [7:0]O;
	input wire Reset,PushPop,Enable,CLK;
	output wire Empty,Full;
	wire Down,select_S,PushPop_bar;
	wire [9:0] Address,outTOP,outTOP_1;

	and and1(Down,PushPop,Enable);
	not not1(PushPop_bar,PushPop);
	and and2(select_S,PushPop_bar,Enable);

	counter TOP(outTOP,Down,Enable,1'b0,Reset,CLK);
	counter TOP_1(outTOP_1,Down,Enable,Reset,1'b0,CLK);
	m21_10bit Selector(Address,outTOP_1,outTOP,select_S);
	RAM ram1KB(O,I,select_S,Enable,Address);

	nor checkEmpty(Empty,outTOP[9],outTOP[8],outTOP[7],outTOP[6],outTOP[5],outTOP[4],outTOP[3],outTOP[2],outTOP[1],outTOP[0]);
	and checkFull(Full,outTOP[9],outTOP[8],outTOP[7],outTOP[6],outTOP[5],outTOP[4],outTOP[3],outTOP[2],outTOP[1],outTOP[0]);

endmodule

