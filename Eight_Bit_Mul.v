`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 12:52:27 PM
// Design Name: 
// Module Name: Eight_Bit_Mul
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


module Eight_Bit_Mul(
    input [7:0] A,
    input [7:0] B,
    output [15:0] Out,
    output Carry
    );

    wire [3:0]A1_0,A2_0,B1_0,B2_0;
    assign A1_0 = A[3:0];
    assign A2_0 = A[7:4];
    assign B1_0 = B[3:0];
    assign B2_0 = B[7:4];

    wire [7:0] mul1,mul2,mul3,mul4;
    
    four_Bit_Mul mul11(A1_0,B1_0,mul1);
    four_Bit_Mul mul22(A1_0,B2_0,mul2);
    four_Bit_Mul mul33(A2_0,B1_0,mul3);
    four_Bit_Mul mul44(A2_0,B2_0,mul4);

    wire [7:0]Add1,Add2,Add3;
    wire cout1,cout2,cout3;
    Eight_Bit_Adder Add11(mul2,mul3,1'b0,Add1,cout1);

    wire [7:0]mul2_M;
    assign mul2_M = {4'b0,mul1[7:4]};
    Eight_Bit_Adder Add22(mul2_M,Add1,1'b0,Add2,cout2);

    wire [7:0]mul3_M;
    assign mul3_M = {3'b0,cout1,Add2[7:4]};
    Eight_Bit_Adder Add33(mul3_M,mul4,1'b0,Add3,cout3);

    assign Carry = cout3;
    assign Out = {Add3,Add2[3:0],mul1[3:0]};


    
endmodule
