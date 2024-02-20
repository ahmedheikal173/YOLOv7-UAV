`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2024 04:42:53 PM
// Design Name: 
// Module Name: CBS1_5X5_Trial
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


module CBS1_5X5_Trial(
    input [95:0]img,
    input [71:0]filter,
    output [15:0]conv_result1,conv_result2
    );
    conv3_3 con1(filter[71:0], {img[95:72],img[63:40],img[31:8]}, conv_result1);
    conv3_3 con2(filter[71:0], {img[87:64],img[55:32],img[23:0]}, conv_result2);
endmodule
//000000010000000100000001000000010000000100000001000000010000000100000001