`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 11:19:07 AM
// Design Name: 
// Module Name: four_Bit_Adder
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


module four_Bit_Adder(
    input [3:0] Add1,
    input [3:0] Add2,
    input Cin,
    output Cout,
    output [3:0] Out
    );
    
    wire[2:0] Carries;
    fullAdder f1(Add1[0],Add2[0],Cin,Out[0],Carries[0]);
    fullAdder f2(Add1[1],Add2[1],Carries[0],Out[1],Carries[1]);
    fullAdder f3(Add1[2],Add2[2],Carries[1],Out[2],Carries[2]);
    fullAdder f4(Add1[3],Add2[3],Carries[2],Out[3],Cout);
endmodule
