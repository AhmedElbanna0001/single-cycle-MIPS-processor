`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 09:11:31 PM
// Design Name: 
// Module Name: InstructionMem
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


module InstructionMem
#(parameter ADD_WIDTH=8 ,DATA_WIDTH=32 ,CODE_FILE="num_fact.mem")
(
input [ADD_WIDTH-1:0]A,
output [DATA_WIDTH-1:0]RD
    );
    reg [DATA_WIDTH-1:0]inst_mem[0:2 ** ADD_WIDTH -1];
    
    //Reading the instructons  (only for simulation purposes) 
    initial
      $readmemh(CODE_FILE,inst_mem);
    
    //ports
    //read ports
   assign RD=inst_mem[A];
    
endmodule









