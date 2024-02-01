module lshift(a,b);
input [31:0]a;
output [31:0]b;
assign b=a<<1;
endmodule

module rshift(a,b);
input [31:0]a;
output [31:0]b;
assign b=a>>1;
endmodule
