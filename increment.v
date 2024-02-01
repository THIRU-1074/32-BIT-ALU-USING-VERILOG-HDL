module increment(a,b,overflow);
input [31:0]a;
output [31:0]b;
output overflow;
Adder u1(.cin(1'b0),.a(a),.b(32'b00000000000000000000000000000001),.s(b),.overflow(overflow));
endmodule
