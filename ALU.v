`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:36:25 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [31:0]SrcA,SrcB,
input [2:0]ALUControl,
output reg [31:0]ALUResult,
output zero
    );
    
      
      
    always@(*)
    begin
      
      case(ALUControl)
        3'b000: ALUResult=SrcA&SrcB;
        3'b001: ALUResult=SrcA|SrcB;
        3'b010: ALUResult=SrcA+SrcB;
        3'b011: ALUResult=SrcA;
        3'b100: ALUResult=SrcA-SrcB;
        3'b101 : ALUResult=SrcA*SrcB;
        3'b110: ALUResult=(SrcA < SrcB);
        3'b111: ALUResult=SrcB;
        default: ALUResult=32'h11111111;      
      endcase 
    end
    assign zero = (ALUResult == 0);
endmodule









