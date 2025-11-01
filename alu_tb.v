`timescale 1ns/1ns
// `include "alu.v"
// 16 logic ----------------------------------------------------------
module alu_tb;
reg [3:0]x,y,opcode;
wire [7:0] z;
integer i;
alu_bh_16 alu1 (z,x,y,opcode);
// alu_bh_21 alu1 (z,x,y,opcode);
initial begin
  $dumpfile("alu.vcd");
  $dumpvars(0,alu_tb);
  // Initialize x and y
  x = 4'd10;
  y = 4'd3;
  $monitor("time=%d\t x=%b\t y=%b\t opcode=%b\t z=%d",$time,x,y,opcode,z);
  for (i=0;i<16;i++)begin 
    opcode=i;
  #10;
  end 
  end
  endmodule



// ---------------------------------------------------------------------------------------------
// `timescale 1ns/1ns
// `include "alu.v"
// // 19 logic-----------------------------------------------------------
// module alu_tb;
// reg [3:0]x,y;
// reg [4:0]opcode;
// wire [7:0] z;
// alu_bh_2 alu1 (z,x,y,opcode);

// initial begin
//   $dumpfile("alu.vcd");
//   $dumpvars(0,alu_tb);
//   $monitor("time=%d\t x=%b\t y=%b\t opcode=%b\t z=%d",$time,x,y,opcode,z);
  
//     // Initialize x and y
//   x = 4'd10;
//   y = 4'd3;
//   // Test Cases
//         opcode = 5'b00000; #10;  // x + y
//         opcode = 5'b00001; #10;  // x - y
//         opcode = 5'b00010; #10;  // x * y
//         opcode = 5'b00011; #10;  // x / y
//         opcode = 5'b00100; #10;  // x > y
//         opcode = 5'b00101; #10;  // x < y
//         opcode = 5'b00110; #10;  // x == y
//         opcode = 5'b00111; #10;  // x & y
//         opcode = 5'b01000; #10;  // x | y
//         opcode = 5'b01001; #10;  // x ^ y
//         opcode = 5'b01010; #10;  // x << y
//         opcode = 5'b01011; #10;  // x >> y
//         opcode = 5'b01100; #10;  // ~x
//         opcode = 5'b01101; #10;  // ~(x & y)
//         opcode = 5'b01110; #10;  // ~(x | y)
//         opcode = 5'b01111; #10;  // ~(x ^ y)
//         opcode = 5'b10000; #10;  // |x
//         opcode = 5'b10001; #10;  // &x
//         opcode = 5'b10010; #10;  // ^x
//       $finish;
//   end
//   endmodule
