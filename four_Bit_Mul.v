`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 11:04:13 AM
// Design Name: 
// Module Name: four_Bit_Mul
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


module four_Bit_Mul(
    input  [3:0] A,
    input  [3:0] B,
    output [7:0] P
    );

    wire [3:0]st1;
    and(st1[0],A[0],B[0]);
    and(st1[1],A[0],B[1]);
    and(st1[2],A[0],B[2]);
    and(st1[3],A[0],B[3]);

    wire [3:0]st2;
    and(st2[0],A[1],B[0]);
    and(st2[1],A[1],B[1]);
    and(st2[2],A[1],B[2]);
    and(st2[3],A[1],B[3]);

    wire [3:0]st3;
    and(st3[0],A[2],B[0]);
    and(st3[1],A[2],B[1]);
    and(st3[2],A[2],B[2]);
    and(st3[3],A[2],B[3]);

    wire [3:0]st4;
    and(st4[0],A[3],B[0]);
    and(st4[1],A[3],B[1]);
    and(st4[2],A[3],B[2]);
    and(st4[3],A[3],B[3]);

    wire [3:0]Add1_1, Add2_1;
    wire Cout1;
    wire [3:0]Res_Add_1st;
    assign Add1_1 = {1'b0,st1[3],st1[2],st1[1]};
    assign Add2_1 = st2;
    four_Bit_Adder full1(Add1_1,Add2_1,1'b0,Cout1,Res_Add_1st);


    wire [3:0]Add1_2, Add2_2;
    wire Cout2;
    wire [3:0]Res_Add_2nd;
    assign Add1_2 = {Cout1,Res_Add_1st[3],Res_Add_1st[2],Res_Add_1st[1]};
    assign Add2_2 = st3;

    four_Bit_Adder full2(Add1_2,Add2_2,1'b0,Cout2,Res_Add_2nd);

    wire [3:0]Add1_3, Add2_3;
    wire Cout3;
    wire [3:0]Res_Add_3rd;
    assign Add1_3 = {Cout2,Res_Add_2nd[3],Res_Add_2nd[2],Res_Add_2nd[1]};
    assign Add2_3 = st4;

    four_Bit_Adder full3(Add1_3,Add2_3,1'b0,P[7],P[6:3]);
    assign P[2] = Res_Add_2nd[0];
    assign P[1] = Res_Add_1st[0];
    assign P[0] = st1[0];



    
endmodule
