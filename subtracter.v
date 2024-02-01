module Subtractor(a,b,diff,underflow);
input [31:0]a,b;
output underflow;
output [31:0]diff;
wire [31:0]complement;
Not u1(.b(complement),.a(b));
Adder u2(.cin(1'b1),.a(a),.b(complement),.s(diff),.overflow(underflow));
endmodule
