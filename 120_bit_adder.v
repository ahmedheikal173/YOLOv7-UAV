`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2024 11:27:04 PM
// Design Name: 
// Module Name: 120_bit_adder
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


module bit_adder120(
    input [119:0]a,
    input [119:0]b,
    input carry_in,
    output [119:0]sum,
    output carry
    );
    wire [6:0]cout;
    sixteen_Bit_Adder sixteen_bit_adder1(
        .a(a[15:0]),
        .b(b[15:0]),
        .Cin(1'b0),
        .sum(sum[15:0]),
        .carry(cout[0])
    );
    sixteen_Bit_Adder sixteen_bit_adder2(
        .a(a[31:16]),
        .b(b[31:16]),
        .Cin(cout[0]),
        .sum(sum[31:16]),
        .carry(cout[1])
    );
    sixteen_Bit_Adder sixteen_bit_adder3(
        .a(a[47:32]),
        .b(b[47:32]),
        .Cin(cout[1]),
        .sum(sum[47:32]),
        .carry(cout[2])
    );
    sixteen_Bit_Adder sixteen_bit_adder4(
        .a(a[63:48]),
        .b(b[63:48]),
        .Cin(cout[2]),
        .sum(sum[63:48]),
        .carry(cout[3])
    );
    sixteen_Bit_Adder sixteen_bit_adder5(
        .a(a[79:64]),
        .b(b[79:64]),
        .Cin(cout[3]),
        .sum(sum[79:64]),
        .carry(cout[4])
    );
    sixteen_Bit_Adder sixteen_bit_adder6(
        .a(a[95:80]),
        .b(b[95:80]),
        .Cin(cout[4]),
        .sum(sum[95:80]),
        .carry(cout[5])
    );
    sixteen_Bit_Adder sixteen_bit_adder7(
        .a(a[111:96]),
        .b(b[111:96]),
        .Cin(cout[5]),
        .sum(sum[111:96]),
        .carry(cout[6])
    );
    Eight_Bit_Adder eight_bit_adder1(
        .A(a[119:112]),
        .B(b[119:112]),
        .Cin(cout[6]),
        .Out(sum[119:112]),
        .Cout(carry)
    );
endmodule
