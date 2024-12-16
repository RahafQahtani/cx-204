`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 01:58:16 PM
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_tb;
logic [3:0] op1,op2,alu_result;
logic [1:0]opcode;
alu #(4) dut(
op1,
op2,
opcode,
alu_result
    );

initial begin 

opcode=2'b00; op1=4'b0001; op2=4'b0010;#10

opcode=2'b01; op1=4'b0011; op2=4'b0010;#10

opcode=2'b10; op1=4'b0011; op2=4'b0010;#10

opcode=2'b11; op1=4'b0001; op2=4'b0010;#10
 
 $finish;
 end 
endmodule
