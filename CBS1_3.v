`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2024 11:30:36 PM
// Design Name: 
// Module Name: CBS1_3
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


module CBS1_3(
    input [1727:0]img,
    input [215:0]filter,
    output [119:0]out,
    output Cout
    );
    wire [119:0] res1,res2,res3;
    wire [119:0]conv_result1;
    wire carry;
    CBS1 CBS1(
        .img(img[1727:1152]),
        .filter(filter[215:144]),
        .clk(clk),
        .conv_result(res1[119:0])
    );
    CBS1 CBS2(
        .img(img[1151:576]),
        .filter(filter[143:72]),
        .clk(clk),
        .conv_result(res2[119:0])
    );
    CBS1 CBS3(
        .img(img[575:0]),
        .filter(filter[71:0]),
        .clk(clk),
        .conv_result(res3[119:0])
    );

    one20_bit_adder add1(
        .a(res1[119:0]),
        .b(res2[119:0]),
        .carry_in(1'b0),
        .sum(conv_result1[119:0]),
        .carry(carry)
    );
    one20_bit_adder add2(
        .a(conv_result1[119:0]),
        .b(res3[119:0]),
        .carry_in(carry),
        .sum(out[119:0]),
        .carry(Cout)
    );
endmodule
