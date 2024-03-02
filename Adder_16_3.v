`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:05:27 PM
// Design Name: 
// Module Name: Adder_16_3
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


module Adder_16_3(
    input [15:0] A,B,C,
    input Cin,
    output [15:0] Out,
    output Cout

    );
    wire [15:0] Out_step;
    wire Cout_step;
    sixteen_Bit_Adder add1(A,B,Cin,Out_step,Cout_step);
    sixteen_Bit_Adder add2(Out_step,C,Cout_step,Out,Cout);
endmodule
