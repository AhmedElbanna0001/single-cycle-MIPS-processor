`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:36:25 PM
// Design Name: 
// Module Name: PC
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


module PC(
input[31:0] D,
input clk,reset_n,
output[31:0] Q
    );
    
    
    reg [31:0]Q_reg,Q_next;
    
    //state reg
    always @(posedge clk,negedge reset_n)
    begin
    Q_reg<=Q_reg;
      if(!reset_n)
        Q_reg<=32'b0;
      else
        Q_reg<=Q_next;  
    end
    
    //next state logic
    
    
    always @(D)
    begin
      Q_next=D;
    end
    
    //output logic
    
    assign Q=Q_reg;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
