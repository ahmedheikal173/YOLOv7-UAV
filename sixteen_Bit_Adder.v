`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 10:40:16 PM
// Design Name: 
// Module Name: sixteen_Bit_Adder
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


module sixteen_Bit_Adder(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] Out,
    output Cout
    );
    wire cout_internal;
    Eight_Bit_Adder add1(A[7:0],B[7:0],Cin,Out[7:0],cout_internal);
    Eight_Bit_Adder add2(A[15:8],B[15:8],cout_internal,Out[15:8],Cout);

endmodule
