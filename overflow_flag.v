module overflow_flag(a,s,b);
input [3:0]a,s;
output b;
reg b;
always @(*)
begin
case(s)
4'b0000:b=a[0];
4'b0001:b=a[1];
4'b1101:b=a[2];
4'b1110:b=a[3];
endcase
end
endmodule
