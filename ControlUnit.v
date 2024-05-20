`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:16:12 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
input[5:0]Opcode,Funct,
output Jump,Branch,RegWrite,MemWrite,RegDst,ALUSrc,MemToReg,
output [2:0]ALUControl
    );
    wire [1:0]ALUOp;
    MainDecoder main (Opcode,Jump,Branch,RegWrite,MemWrite,RegDst,ALUSrc,MemToReg,ALUOp);
    ALUDecoder alu (ALUOp,Funct,ALUControl);
endmodule
