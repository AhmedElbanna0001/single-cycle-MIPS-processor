`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:36:25 PM
// Design Name: 
// Module Name: MIPS
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


module MIPS(
input clk,reset_n,
output [15:0]test_value
    );
    wire [31:0] A,B,pc_dash,pc,PCPlus4,PCBranch,PCJump,Instr,Result,SrcA,SrcB,WriteData,SignImm,ReadData;
    wire [27:0]C;
    wire[31:0]ALUResult;
    wire [4:0] WriteReg;
    wire [2:0] ALUControl;
    wire RegWrite,RegDst,ALUSrc,zero,MemWrite,Jump,Branch,MemToReg,PCSrc;
    assign PCSrc=zero&Branch;
    assign PCJump={PCPlus4[31:28],C};
    //program counter
    PC prog_count (pc_dash,clk,reset_n,pc);
    
    //Instruction memory
    InstructionMem #(.CODE_FILE("gcd.mem")) inst_memory (pc[9:2],Instr);
    
    //register file
    RegFile #(5,32) register_file (Instr[25:21],Instr[20:16],WriteReg,Result,RegWrite,clk,SrcA,WriteData);
    
    //ALU
    ALU alu (SrcA,SrcB,ALUControl,ALUResult,zero);
    
    //data memory
    DataMem data_memory (ALUResult,MemWrite,clk,WriteData,ReadData,test_value);
    
    //control unit
    ControlUnit cu (Instr[31:26],Instr[5:0],Jump,Branch,RegWrite,MemWrite,RegDst,ALUSrc,MemToReg,ALUControl);
    
    
    //muxes
    MUX #(5) dest_mux(Instr[20:16],Instr[15:11],RegDst,WriteReg);
    MUX #(32) source_mux(WriteData,SignImm,ALUSrc,SrcB);
    MUX #(32) data_mux(ALUResult,ReadData,MemToReg,Result);
    MUX #(32) PC1_mux(A,PCJump,Jump,pc_dash);
    MUX #(32) PC2_mux(PCPlus4,PCBranch,PCSrc,A);
    //adders
    Adder plus_four (pc,32'h00000004,PCPlus4);
    Adder branch_adder (B,PCPlus4,PCBranch);
    
    //shifters
    Shifter imm_shifter(SignImm,B);
    Shifter #(28) contact_shifter(Instr[27:0],C);
    //sign extend
    Sign_extend sign(Instr[15:0],SignImm);
endmodule












