`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2024 06:25:05 PM
// Design Name: 
// Module Name: Test_Conv3
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


module Test_Conv3(
    input  [71:0]filter,
    input  [71:0]img,
    input clk,rst,
    output [15:0]conv_res
);
    wire [15:0]conv_result;
    conv3_3(filter, img, conv_result);
    always @(posedge clk ) 
    begin
        if(rst)
        begin
            conv_res <= 16'b0;
        end
        else 
        begin
            conv_res <= conv_result;
        end
        
    end
endmodule
