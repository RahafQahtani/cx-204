`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:39:33 PM
// Design Name: 
// Module Name: top
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


module top(
input logic clk,
input logic reset_n 
    );
    
    //
    localparam PROG_VALUE=3;
    localparam IMEM_DEPTH=4;//4words
    localparam REGF_WIDTH=16;
    localparam ALU_WIDTH=16;
     
    
    //
    logic [$clog2(PROG_VALUE+1)-1:0]count;
    logic [7:0] instruction;
    logic [ALU_WIDTH-1:0] op1,op2,alu_result;
    //
    program_counter #(.n(PROG_VALUE))
    program_counter_inst 
    (
    .clk(clk),
    .reset_n(reset_n),
    .enable(1'b1),
    .count(count)
    );

    instruction_memory#(.Depth(IMEM_DEPTH),.n(PROG_VALUE)) 
    instruction_memory_int
    (
    .address(count), 
    .instruction(instruction) 
    );

    register_file #(.n(REGF_WIDTH))
    register_file_inst (
     .clk(clk),
    .rs1(instruction[3:2]), 
    .rs2(instruction[5:4]),
    .rd(instruction[7:6]),
    .alu_result(alu_result),
    .op1(op1),
    .op2(op2)
    );
    
    alu #(.n(ALU_WIDTH))
    alu_inst(
    .op1(op1),
    .op2(op2),
    .opcode(instruction[1:0]),
    .alu_result(alu_result)
    );



endmodule
