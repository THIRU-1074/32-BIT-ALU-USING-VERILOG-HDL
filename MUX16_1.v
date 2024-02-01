module mux16to1(out,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,sel); 

 input [31:0]in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14;

 input [31:0]in15; 

 input [0:3] sel;

 output [31:0]out;

 wire [31:0]ma0,ma1,ma2,ma3;

 mux4to1_gate mux1(.out(ma0),.in0(in0),.in1(in1),.in2(in2),.in3(in3),.sel(sel[2:3]));

 mux4to1_gate mux2(.out(ma1),.in0(in4),.in1(in5),.in2(in6),.in3(in7),.sel(sel[2:3]));

 mux4to1_gate mux3(.out(ma2),.in0(in8),.in1(in9),.in2(in10),.in3(in11),.sel(sel[2:3]));

 mux4to1_gate mux4(.out(ma3),.in0(in12),.in1(in13),.in2(in14),.in3(in15),.sel(sel[2:3]));

 mux4to1_gate mux5(.out(out),.in0(ma0),.in1(ma1),.in2(ma2),.in3(ma3),.sel(sel[0:1]));

endmodule
