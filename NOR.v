module Nor(a,b,c);
input [31:0]a,b;
output [31:0]c;
genvar i;
generate
for(i=0;i<32;i=i+1)
begin
assign c[i]=~(a[i]|b[i]);
end
endgenerate
endmodule
