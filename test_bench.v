`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 02:14:13 AM
// Design Name: 
// Module Name: test_bench
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


module test_bench;

reg clk,reset_n;
wire [15:0]test_value;

MIPS mips(clk,reset_n,test_value);

localparam T=20;
always
begin
  
  clk=1'b1;
  #(T/2);
  clk=1'b0;
  #(T/2);
end

initial
begin
  reset_n=1'b0;
  #(T*4)
  reset_n=1'b1;

end
endmodule
