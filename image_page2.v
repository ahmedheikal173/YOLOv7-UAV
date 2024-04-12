`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 03:00:20 PM
// Design Name: 
// Module Name: image_page1
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


module image_page2(
    input [12:0]addr1_2,
    input [71:0]data_in,
    input need_Data,
    input we,clk,rst,
    output reg [79:0]data_out1_2
    );

    reg [79:0]ram1_2 [2559:0];

     initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram1_1);
     end

     always @(posedge clk ) begin
        if(rst) begin
            data_out1_2 <= 0;
        end
        else if(we) begin
                ram1_2[addr1_2] <= data_in;
            end
        else if(need_Data) begin
                    data_out1_2 <= ram1_2[addr1_2];
            end
     end
endmodule
