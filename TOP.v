module top(enable,a,b,select,result,overflow);
input [31:0]a,b;
input enable;
input [3:0]select;
output [31:0]result;
output [3:0]overflow;
wire [31:0]mux_line[0:14];
wire [63:0]PROD;
wire over;

Adder SUM(.cin(1'b0),.overflow(overflow[0]),.a(a),.b(b),.s(mux_line[0]));
Subtractor DIFF(.a(a),.b(b),.underflow(overflow[1]),.diff(mux_line[1]));
And AND(.a(a),.b(b),.c(mux_line[2]));
Or OR(.a(a),.b(b),.c(mux_line[3]));
Not NOT(.a(a),.b(mux_line[4]));
Xor XOR(.a(a),.b(b),.c(mux_line[5]));
Xnor XNOR(.a(a),.b(b),.c(mux_line[6]));
Nor NOR(.a(a),.b(b),.c(mux_line[7]));
Nand NAND(.a(a),.b(b),.c(mux_line[8]));
complement_2 COM2(.a(a),.b(mux_line[9]));
lshift LSHIFT(.a(a),.b(mux_line[10]));
rshift RSHIFT(.a(a),.b(mux_line[11]));
transfer TRA(.a(a),.b(mux_line[12]));
increment INC(.a(a),.b(mux_line[13]),.overflow(overflow[2]));
decrement DEC(.a(a),.b(mux_line[14]),.overflow(overflow[3]));
multiplier u15(.multicand(a),.multiplier(b),.product(PROD));
mux16to1 u16(result,mux_line[0],
		    	mux_line[1],
			mux_line[2],
			mux_line[3],
			mux_line[4],
			mux_line[5],
			mux_line[6],
			mux_line[7],
			mux_line[8],
			mux_line[9],
			mux_line[10],
			mux_line[11],
			mux_line[12],
			mux_line[13],
			mux_line[14],
			32'b00000000000000000000000000000001,
			select);
overflow_flag OVER(.a(overflow),.b(over),.s(select));
endmodule
