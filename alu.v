// 16 logic-------------------
module alu_bh_1(z,x,y,opcode);
input [3:0]x,y,opcode;
output reg [7:0] z;

always@(*) begin
case (opcode)
  4'b0000: z = x + y;           // Addition
  4'b0001: z = x - y;           // Subtraction
  4'b0010: z = x * y;           // Multiplication
  4'b0011: z = x / y;           // Division

  4'b0100: z = (x > y) ? 8'd1 : 8'd0;   // Greater than comparison
  4'b0101: z = (x < y) ? 8'd1 : 8'd0;   // Less than comparison
  4'b0110: z = (x == y) ? 8'd1 : 8'd0;  // Equality check

  4'b0111: z = x & y;           // Bitwise AND
  4'b1000: z = x | y;           // Bitwise OR
  4'b1001: z = x ^ y;           // Bitwise XOR

  4'b1010: z = x << y;          // Logical Left Shift
  4'b1011: z = x >> y;          // Logical Right Shift

  4'b1100: z = ~x;              // Bitwise NOT (on x)
  4'b1101: z = ~(x & y);        // Bitwise NAND
  4'b1110: z = ~(x | y);        // Bitwise NOR
  4'b1111: z = ~(x ^ y);        // Bitwise XNOR

  default: $display("error");   // Invalid opcode
endcase

  end
endmodule

// // 19 logic------------------------
// module alu_bh_2(z,x,y,opcode);
// input [3:0]x,y;
// input [4:0]opcode;
// output reg [7:0] z;

// always@(*)
//   begin
//   case (opcode)
// case (opcode)

//   5'b00000: z = x + y;              // Addition
//   5'b00001: z = x - y;              // Subtraction
//   5'b00010: z = x * y;              // Multiplication
//   5'b00011: z = x / y;              // Division

//   5'b00100: z = (x > y) ? 8'd1 : 8'd0;   // Greater than comparison
//   5'b00101: z = (x < y) ? 8'd1 : 8'd0;   // Less than comparison
//   5'b00110: z = (x == y) ? 8'd1 : 8'd0;  // Equality check

//   5'b00111: z = x & y;              // Bitwise AND
//   5'b01000: z = x | y;              // Bitwise OR
//   5'b01001: z = x ^ y;              // Bitwise XOR

//   5'b01010: z = x << y;             // Logical Left Shift
//   5'b01011: z = x >> y;             // Logical Right Shift

//   5'b01100: z = ~x;                 // Bitwise NOT (on x)
//   5'b01101: z = ~(x & y);           // Bitwise NAND
//   5'b01110: z = ~(x | y);           // Bitwise NOR
//   5'b01111: z = ~(x ^ y);           // Bitwise XNOR

//   5'b10000: z = {7'b0, |x};         // Reduction OR → 1 if any bit of x is 1
//   5'b10001: z = {7'b0, &x};         // Reduction AND → 1 if all bits of x are 1
//   5'b10010: z = {7'b0, ^x};         // Reduction XOR → 1 if odd number of 1’s in x

//   default: $display("Invalid opcode");   // Default case for undefined operations

//   endcase
// end
// endmodule


