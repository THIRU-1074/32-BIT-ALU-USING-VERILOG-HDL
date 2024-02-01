module decrement(a,b,overflow);
input [31:0]a;
output [31:0]b;
output overflow;
wire [31:0]w1;
Not u1(.a(32'b00000000000000000000000000000001),.b(w1));
Adder u2(.cin(1'b1),.a(a),.b(w1),.s(b),.overflow(overflow));
endmodule
