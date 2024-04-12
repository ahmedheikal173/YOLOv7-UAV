`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2024 01:36:19 PM
// Design Name: 
// Module Name: Stage1
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


module Stage1(
    input clk,
    input reset,
    input [71:0] filter1,filter2,filter3,
    output  [159:0] data_out1_CBS,data_out2_CBS,data_out3_CBS
    );
    wire [5:0] count_row;
    wire [7:0] count_col;
    wire [12:0] address_1,address_2,address_3;
    wire [79:0] data_out1_1,data_out1_2,data_out1_3,data_out2_1,data_out2_2,data_out2_3,data_out3_1,data_out3_2,data_out3_3;
    wire [239:0] data_out1,data_out2,data_out3;
    Address_Controller Address_Controller_inst(
        .clk(clk),
        .reset(reset),
        .address_1(address_1),
        .address_2(address_2),
        .address_3(address_3),
        .count_row(count_row),
        .count_col(count_col)
    );
   
    
     image_page1 image_page1_inst1_1(
            .addr1_1(address_1),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_1(data_out1_1)
        );
    
    
    
     image_page1 image_page1_inst1_2(
            .addr1_1(address_2),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_1(data_out1_2)
        );
    
        image_page1 image_page1_inst1_3(
            .addr1_1(address_3),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_1(data_out1_3)
        );
    
        image_page2 image_page2_inst2_1(
            .addr1_2(address_1),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_2(data_out2_1)
        );
        
        image_page2 image_page2_inst2_2(
            .addr1_2(address_2),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_2(data_out2_2)
        );
    
        image_page2 image_page2_inst2_3(
            .addr1_2(address_3),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_2(data_out2_3)
        );
    
        image_page3 image_page3_inst3_1(
            .addr1_3(address_1),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_3(data_out3_1)
        );
    
        image_page3 image_page3_inst3_2(
            .addr1_3(address_2),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_3(data_out3_2)
        );
    
        image_page3 image_page3_inst3_3(
            .addr1_3(address_3),
            //.data_in(data_out1_1),
            .need_Data(1'b1),
            .we(1'b0),
            .clk(clk),
            .rst(reset),
            .data_out1_3(data_out3_3)
        );
        

   

    Editor_CBS1 Editor_CBS1_inst(
        .data_in1({data_out1_1,data_out1_2,data_out1_3}),
        .data_in2({data_out2_1,data_out2_2,data_out2_3}),
        .data_in3({data_out3_1,data_out3_2,data_out3_3}),
        .counter_row(count_row),
        .counter_col(count_col),
        .clk(clk),
        .rst(reset),
        .data_out1(data_out1),
        .data_out2(data_out2),
        .data_out3(data_out3)
    );

    CBS1_ALL CBS1_ALL_inst(
        .data_in1(data_out1),
        .data_in2(data_out2),
        .data_in3(data_out3),
        .filter1(filter1),
        .filter2(filter2),
        .filter3(filter3),
        .clk(clk),
        .rst(reset),
        .data_out1(data_out1_CBS),
        .data_out2(data_out2_CBS),
        .data_out3(data_out3_CBS)
    );
endmodule
