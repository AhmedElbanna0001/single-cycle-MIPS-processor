`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:36:25 PM
// Design Name: 
// Module Name: Sign_extend
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


module Sign_extend(
input [15:0]A,
output [31:0]Z
    );
    
    assign Z[15:0]=A;
    assign Z[31:16]={16{A[15]}};
    
endmodule









