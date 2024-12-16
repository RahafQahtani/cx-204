`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:06:57 PM
// Design Name: 
// Module Name: instruction_memory_tb
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


module instruction_memory_tb;

logic [7:0] address,instruction;
instruction_memory#(16 ) 
dut
(
    address, 
   instruction 
);

initial begin 
address=0;#10
address=1;#10
address=2;#10
address=3;#10
address=4;#10
address=5;#10
address=6;#10
$finish;
end 
endmodule
