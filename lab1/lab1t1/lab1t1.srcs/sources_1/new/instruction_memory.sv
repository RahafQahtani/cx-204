`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:01:40 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory#(
    parameter Depth = 16,  
    parameter n=3 
) 
(
    input logic [$clog2(n+1)-1:0] address, 
    output logic [7:0] instruction 
);
    logic [7:0] memory [Depth-1:0]; 

    initial begin
       $readmemb("/home/it/chip_design/commoncore/comparch/CX-204-Lab1/support_files/fib_im.mem", memory); // For Binary File 
         
    end
    assign instruction = memory[address]; // Read instruction 
endmodule
