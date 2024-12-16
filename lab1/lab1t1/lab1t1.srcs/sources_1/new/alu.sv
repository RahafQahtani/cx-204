`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 01:39:52 PM
// Design Name: 
// Module Name: alu
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


module alu #(parameter n=4)(
input logic [n-1:0] op1,
input logic [n-1:0] op2,
input logic [1:0] opcode,
output logic [n-1:0] alu_result
    );
 
 // 
 logic [n-1:0] sum_result, sub_result , or_result, and_result;
 
 assign sum_result= op1+op2;
 assign sub_result= op1-op2;
 assign or_result=op1|op2; 
 assign and_result= op1&op2; 
 
 always @(*) begin 
 case(opcode)
 2'b00: alu_result<=sum_result;
 2'b01: alu_result<=sub_result;
 2'b10: alu_result<=and_result;
 2'b10: alu_result<=or_result;
 default : alu_result<=0;
 endcase
end 
endmodule
