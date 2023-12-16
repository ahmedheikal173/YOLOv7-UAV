`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 10:52:16 AM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(in1,in2,cin,s,c);
input in1,in2,cin;
output s,c;

assign s = (in1^in2)^cin;
assign c = (in1&in2) | ((in1^in2) & cin);
endmodule
