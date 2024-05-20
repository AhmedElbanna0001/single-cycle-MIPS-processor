`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 09:11:31 PM
// Design Name: 
// Module Name: DataMem
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


module DataMem
#(parameter ADD_WIDTH=32,DATA_WIDTH=32)
(
input [ADD_WIDTH-1:0]A,
input WE,clk,
input [DATA_WIDTH-1:0]WD,
output [DATA_WIDTH-1:0]RD ,
output [15:0]test_value
    );
    
    reg [DATA_WIDTH-1:0]data_mem[0:2 ** ADD_WIDTH -1];
    
          
    wire [ADD_WIDTH-1:0]first;
    //connnecting port to the ground
    assign first=  32'h00000000;  
        //ports
        
        //write port
        always@(posedge clk)
        begin
          if(WE==1)
            data_mem[A]<=WD;
            
        end
        
        //read ports
        
        assign RD=data_mem[A];
        assign test_value=data_mem[first];  
endmodule

















