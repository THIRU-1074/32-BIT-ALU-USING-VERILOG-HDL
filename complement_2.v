module complement_2(a,b);
input [31:0]a;
output [31:0]b;
wire [31:0]w1;
wire w2;
Not u1(.b(w1),.a(a));
Adder u2(.a(w1),.b(32'b00000000000000000000000000000001),.cin(1'b0),.s(b),.overflow(w2));
endmodule
	