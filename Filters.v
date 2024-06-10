`timescale 1ns / 1ps
module Filters(
    input clk,reset,
    input [8:0]address,
    output reg [7:0] filter_out
    );
    reg operate;
    reg [7:0] filtr[215:0]; 
    initial begin
       $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/filter.txt",filtr);
    end

    always @(posedge clk or posedge reset) begin
        if(reset)
            filter_out<=0;
        else
            filter_out<=filtr[address];
    end
endmodule
