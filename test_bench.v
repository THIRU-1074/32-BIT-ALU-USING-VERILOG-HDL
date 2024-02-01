`timescale 10ns/10ns

module testbench;

reg enable;
reg [31:0] a, b;
reg [3:0] select;
wire [31:0] result;
wire [3:0] overflow;

top uut (
  .enable(enable),
  .a(a),
  .b(b),
  .select(select),
  .result(result),
  .overflow(overflow)
);

initial begin
  // Test 1: Addition
  enable = 1;
  a = 32'h00000005;
  b = 32'h0000000A;
  select = 4'b0000; // Select addition operation
  #10;

  // Test 2: Subtraction
  enable = 1;
  a = 32'h0000000F;
  b = 32'h00000007;
  select = 4'b0001; // Select subtraction operation
  #10;

  // Test 3: Bitwise AND
  enable = 1;
  a = 32'h00000008;
  b = 32'h00000003;
  select = 4'b0010; // Select bitwise AND operation
  #10;

  // Test 4: Bitwise OR
  enable = 1;
  a = 32'h0000000A;
  b = 32'h00000005;
  select = 4'b0011; // Select bitwise OR operation
  #10;

  // Test 5: Bitwise XOR
  enable = 1;
  a = 32'h0000000F;
  b = 32'h0000000A;
  select = 4'b0100; // Select bitwise XOR operation
  #10;

  // Test 6: Bitwise NOT
  enable = 1;
  a = 32'h0000000F;
  select = 4'b0101; // Select bitwise NOT operation
  #10;

  // Test 7: Bitwise XNOR
  enable = 1;
  a = 32'h0000000F;
  b = 32'h0000000A;
  select = 4'b0110; // Select bitwise XNOR operation
  #10;

  // Test 8: Bitwise NOR
  enable = 1;
  a = 32'h00000005;
  b = 32'h0000000A;
  select = 4'b0111; // Select bitwise NOR operation
  #10;

  // Test 9: Bitwise NAND
  enable = 1;
  a = 32'h00000008;
  b = 32'h00000003;
  select = 4'b1000; // Select bitwise NAND operation
  #10;

  // Test 10: 2's complement
  enable = 1;
  a = 32'hFFFFFFFA; // -6 in 2's complement
  select = 4'b1001; // Select 2's complement operation
  #10;

  // Test 11: Left Shift
  enable = 1;
  a = 32'h00000001;
  select = 4'b1010; // Select left shift operation
  #10;

  // Test 12: Right Shift
  enable = 1;
  a = 32'h80000000; // Negative number
  select = 4'b1011; // Select right shift operation
  #10;

  // Test 13: Transfer (Copy)
  enable = 1;
  a = 32'h12345678;
  select = 4'b1100; // Select transfer operation
  #10;

  // Test 14: Increment
  enable = 1;
  a = 32'hFFFFFFFE; // -2 in 2's complement
  select = 4'b1101; // Select increment operation
  #10;

  // Test 15: Decrement
  enable = 1;
  a = 32'h00000005;
  select = 4'b1110; // Select decrement operation
  #10;

  // Add more tests as needed

  $stop;
end

endmodule

