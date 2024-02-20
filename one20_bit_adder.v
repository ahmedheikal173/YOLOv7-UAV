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


module one20_bit_adder(
    input [119:0]a,
    input [119:0]b,
    input carry_in,
    output [119:0]sum,
    output carry
    );
    wire [6:0]cout;
    sixteen_Bit_Adder sixteen_bit_adder1(
        .A(a[15:0]),
        .B(b[15:0]),
        .Cin(1'b0),
        .Out(sum[15:0]),
        .Cout(cout[0])
    );
    sixteen_Bit_Adder sixteen_bit_adder2(
        .A(a[31:16]),
        .B(b[31:16]),
        .Cin(cout[0]),
        .Out(sum[31:16]),
        .Cout(cout[1])
    );

    sixteen_Bit_Adder sixteen_bit_adder3(
        .A(a[47:32]),
        .B(b[47:32]),
        .Cin(cout[1]),
        .Out(sum[47:32]),
        .Cout(cout[2])
    );
    sixteen_Bit_Adder sixteen_bit_adder4(
        .A(a[63:48]),
        .B(b[63:48]),
        .Cin(cout[2]),
        .Out(sum[63:48]),
        .Cout(cout[3])
    );
    sixteen_Bit_Adder sixteen_bit_adder5(
        .A(a[79:64]),
        .B(b[79:64]),
        .Cin(cout[3]),
        .Out(sum[79:64]),
        .Cout(cout[4])
    );
    sixteen_Bit_Adder sixteen_bit_adder6(
        .A(a[95:80]),
        .B(b[95:80]),
        .Cin(cout[4]),
        .Out(sum[95:80]),
        .Cout(cout[5])
    );
    sixteen_Bit_Adder sixteen_bit_adder7(
        .A(a[111:96]),
        .B(b[111:96]),
        .Cin(cout[5]),
        .Out(sum[111:96]),
        .Cout(cout[6])
    );
    Eight_Bit_Adder eight_bit_adder1(
        .A(a[119:112]),
        .B(b[119:112]),
        .Cin(cout[6]),
        .Out(sum[119:112]),
        .Cout(carry)
    );
endmodule
