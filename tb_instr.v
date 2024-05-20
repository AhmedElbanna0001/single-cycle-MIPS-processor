`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2023 11:04:11 AM
// Design Name: 
// Module Name: tb_instr
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


module tb_instr;

reg[7:0]A;
wire[31:0]RD;

InstructionMem #(.CODE_FILE("test.mem")) memo (A,RD);

initial 
begin
  A=8'h00;
  #20
  A=8'h01;
  #20
  A=8'h02;
  #20
  $stop;
end



endmodule
