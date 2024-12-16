`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 02:14:12 PM
// Design Name: 
// Module Name: register_file
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


module register_file#(parameter n)(
input logic clk, 
input logic [1:0] rs1, 
input logic [1:0] rs2,
input logic [1:0] rd,
input logic [n-1:0] alu_result,
output logic [n-1:0] op1,
output logic [n-1:0] op2
    );
    
 reg [n-1:0] x [3:0];
 
 always_comb begin 
   op1 = x[rs1];
   op2 = x[rs2];
 end 
    always @(posedge clk)
begin 
 
  x[rd]<= alu_result;
 
end

initial begin 


$readmemb("/home/it/chip_design/commoncore/comparch/CX-204-Lab1/support_files/fib_rf.mem", x); // For Binary File 

end 
    integer fd;
    integer i;
    initial
    begin
    // Create a new file
    fd = $fopen("regfile.dump", "w");
    #100;
    $fclose(fd);
    end
    
 always @ (posedge clk)
begin
for (i = 0; i < 4; i=i+1)
begin
$fdisplay(fd,x[i]);
end 
end   
endmodule
