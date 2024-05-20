`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 01:50:57 PM
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU;

reg [31:0]SrcA,SrcB;
reg [2:0]ALUControl;
wire [31:0]ALUResult;
wire zero; 

ALU aluu (SrcA,SrcB,ALUControl,ALUResult,zero);

initial
begin 
  ALUControl=3'b010;
  SrcA=32'b0;
  SrcB=32'h00000007;
  #20
  ALUControl=3'b100;
    SrcA=32'h00000007;
    SrcB=32'h00000007;
    #20
    $stop;
end




endmodule
