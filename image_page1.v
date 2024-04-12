`timescale 1ns / 1ps
module image_page1(
    input [12:0]addr1_1,
    input [71:0]data_in,
    input need_Data,
    input we,clk,rst,
    output reg [79:0]data_out1_1
    );

    reg [7:0]ram1_1 [409599:0];

     initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.coe",ram1_1);
     end

     always @(posedge clk ) begin
        if(rst) begin
            data_out1_1 <= 0;
        end
        else if(we) begin
                ram1_1[addr1_1] <= data_in;
            end
        else if(need_Data) begin
                    data_out1_1 <= ram1_1[addr1_1];
            end
     end
endmodule
