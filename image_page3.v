`timescale 1ns / 1ps

module image_page3(
    input [18:0]addr1_3,
    input [7:0]data_in,
    input need_Data,
    input we,clk,rst,
    output reg [7:0]data_out1_3
    );
    
    reg [7:0]ram1_3 [409599:0];

    initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram1_3);
    end

    always @(posedge clk ) begin
        if(rst) begin
            data_out1_3 <= 0;
        end
        else if(we) begin
                ram1_3[addr1_3] <= data_in;
            end
        else if(need_Data) begin
                    data_out1_3 <= ram1_3[addr1_3];
            end
    end
endmodule
