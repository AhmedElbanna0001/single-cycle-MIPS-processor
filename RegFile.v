`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 09:11:31 PM
// Design Name: 
// Module Name: RegFile
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


module RegFile
#(parameter ADD_WIDTH=5,DATA_WIDTH=32)
(
input [ADD_WIDTH-1:0] A1,A2,A3,
input [DATA_WIDTH-1:0]WD3,
input WE3,clk,
output [DATA_WIDTH-1:0] RD1,RD2
    );
    reg [DATA_WIDTH-1:0]reg_file[0:2 ** ADD_WIDTH -1];
    
    //initializing  $zero with 0x0000_0000 (Only simulation)
    initial
      reg_file[0]=0;

    //ports
    
    //write port
    
    
    always@(posedge clk)
    begin
       if(WE3==1)
         reg_file[A3]<=WD3;
    end
    
    //read ports
    
    assign RD1=reg_file[A1];
    assign RD2=reg_file[A2];
    
    
endmodule










