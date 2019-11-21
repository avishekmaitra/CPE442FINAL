`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2019 05:24:03 PM
// Design Name: 
// Module Name: MEM_CTRL
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


module MEM_CTRL(
    input CLK,
    output [9:0] B_ADDR,
    output [1:0] SEL_A,
    output [1:0] SEL_B,
    output [1:0] SEL_C,
    output BRAM_EN_A,
    output BRAM_EN_B,
    output BRAM_EN_C,
    output EN_FIFO,
    output EN_ALU
    );
 reg [3:0] state;
 reg [3:0] nextState;
 reg [9:0] count;
 reg [9:0] overallCount;
 
 always @ (posedge CLK)
    state = nextState;
    
 always @ (state or count or overallCount)
 
endmodule
