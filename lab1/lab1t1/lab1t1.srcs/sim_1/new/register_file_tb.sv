`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 02:34:57 PM
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb;
logic [15:0] op1,op2,alu_result;
logic [1:0]rs1,rs2,rd;
logic clk,reset_n; 
register_file#(16) dut (
clk, 
reset_n,
rs1, 
rs2,
rd,
alu_result,
op1,
op2
    );
initial begin
        clk = 0;
        forever #5 clk = ~clk;
     end
        
initial begin 
reset_n = 1; #10; reset_n = 1;

rs1=2'b00; rs2=2'b01; /*rd=2'b10;*/  #10
rs2=2'b11; /*rd=2'b01;*/ rs1=2'b10;  #10
///*rd=2'b00;*/ rs1=2'b01; rs2=2'b10;  #10
//rs2=2'b11; /*rd=2'b11;*/ rs1=2'b11;  #10

 $finish;
 end 
endmodule

