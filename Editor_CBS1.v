`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 12:05:11 PM
// Design Name: 
// Module Name: Editor_CBS1
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


module Editor_CBS1(
    input [239:0] data_in1,data_in2,data_in3,
    input [5:0] counter_row,
    input [7:0] counter_col,
    input clk,rst,
    output reg [239:0] data_out1,data_out2,data_out3
    );

    always @(posedge clk ) begin
        if (rst) begin
            data_out1 <= 0;
            data_out2 <= 0;
            data_out3 <= 0;
        end
        else begin
            //According to Counters
            //Specify the values
        end
    end
endmodule
