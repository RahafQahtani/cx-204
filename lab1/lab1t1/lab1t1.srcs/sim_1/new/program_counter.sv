`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:21:08 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter_tb;

logic clk , reset_n, enable;
logic [$clog2(4)-1:0]count;
program_counter #( 4  
)dut (
    clk,
    reset_n,
    enable,
    count
);
initial begin
        clk = 0;
        forever #5 clk = ~clk;
     end
     
initial begin 
reset_n = 0;enable=0; #10; 
reset_n = 1;enable=1;#160


$finish;
end
endmodule
