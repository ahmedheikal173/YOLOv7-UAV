`timescale 1ns / 1ps
module Filters(
    input clk,reset,operation,non_operate,
    input address,
    output [7:0] filter_out
    );
    reg operate;
    reg [7:0] fltr[215:0]; 
    initial begin
       $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/filter.txt",fltr);
    end

    always @(posedge clk) begin
        if(reset)
            operate<=1;
        
        filter_out<=fltr[address];
    end
endmodule
