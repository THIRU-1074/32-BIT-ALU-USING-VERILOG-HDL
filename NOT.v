module Not(a,b);
input [31:0]a;
output [31:0]b;
genvar i;
generate
for(i=0;i<32;i=i+1)
begin
assign b[i]=~(a[i]);
end
endgenerate
endmodule
