`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:26:43 AM
// Design Name: 
// Module Name: tb_Data
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


module tb_Data;

reg [31:0]A;
reg WE,clk;
reg [31:0]WD;
wire [31:0]RD ;
wire [15:0]test_value;
localparam T=20;
always
begin
  clk=1'b1;
  #(T/2);
  clk=1'b0;
  #(T/2);
end

DataMem dm(A,WE,clk,WD,RD,test_value);

initial
begin
  A=32'h00000000;
  WE=1'b1;
  WD=32'h11112222;
  #(T)
  WE=1'b0;
  #(T)
  $stop;
end

endmodule
