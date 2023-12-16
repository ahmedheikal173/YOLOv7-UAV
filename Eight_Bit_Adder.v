`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 12:41:04 PM
// Design Name: 
// Module Name: Eight_Bit_Adder
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


module Eight_Bit_Adder(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Out,
    output Cout
    );

    wire cout_Internal;

    four_Bit_Adder Add4_1(A[3:0],B[3:0],Cin,cout_Internal,Out[3:0]);
    four_Bit_Adder Add4_2(A[7:4],B[7:4],cout_Internal,Cout,Out[7:4]);

endmodule
