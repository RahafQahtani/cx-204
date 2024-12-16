`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:17:01 PM
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


module program_counter #( 
    parameter n = 4  // maximum value
)(
    input wire clk,
    input wire reset_n,
    input wire enable,
    output reg [$clog2(n)-1:0] count
);


    always @(posedge clk , negedge reset_n) begin
        if (!reset_n) begin
            count <= 0;
        end else if (enable) begin
            count <= count + 1;
        end
    end
endmodule