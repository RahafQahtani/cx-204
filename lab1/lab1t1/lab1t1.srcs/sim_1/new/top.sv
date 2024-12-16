`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 05:05:33 PM
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


module top_tb;
logic clk,reset_n;
top dut(
    .clk(clk),
    .reset_n(reset_n)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
     end
        
initial begin 
reset_n = 0; #10; reset_n = 1;#60
$finish;
end 
endmodule
