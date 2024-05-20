`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:16:12 PM
// Design Name: 
// Module Name: MainDecoder
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


module MainDecoder(
input [5:0]Opcode,
output reg Jump,Branch,RegWrite,MemWrite,RegDst,ALUSrc,MemToReg,
output reg [1:0]ALUOp
    );
    
    always@(Opcode)
    begin
    {Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b000000000;
      case(Opcode)
      6'b000000:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b010011000;
      6'b100011:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b000010110;
      6'b101011:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b000100110;
      6'b001000:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b000010100;
      6'b000100:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b001000001;
      6'b000010:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b100000000;
      default:{Jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemToReg,Branch}=9'b000000000;
      
      endcase
    end
    
endmodule
