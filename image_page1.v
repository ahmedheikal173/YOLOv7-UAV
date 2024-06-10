`timescale 1ns / 1ps
module image_page1(
    input [24:0]addr1_1,
    //input [7:0]data_in,
    //input r_enable,
    input clk,rst,
    output reg [7:0]data_out1_1
    );

    reg [7:0]ram1_1 [409599:0];

     initial begin
        //$readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.ip_user_files/mem_init_files/mem.coe",ram1_1);
                
       $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram1_1);
        //$readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/ip/mem.coe",ram1_1);
     end

     always @(posedge clk or posedge rst) begin
        if(rst) begin
            data_out1_1 <= 0;
        end
        else
            data_out1_1 <= ram1_1[addr1_1];
     end
endmodule
