`timescale 1ns / 1ps


module Address_Controller(
    input clk,
    input reset,
    output reg [12:0] address_1, address_2, address_3,
    output  [5:0] count_row,
    output  [7:0] count_col
    );
    
    
    counter_CBS1_0_17 counter_CBS1_0_17_inst(
        .clk(clk),
        .reset(reset),
        .count(count_row)
    );

    counter_CBS1_0_158 counter_CBS1_0_158_inst(
        .clk(clk),
        .reset(reset),
        .count(count_col)
    );


    always @(posedge clk ) 
    begin
        if(reset) 
            begin
                address_1 <= 0;
                address_2 <= 0;
                address_3 <= 0;
            end
        else
            begin
                address_1 <= address_1 + 8;
                address_2 <= address_1 + 160;
                address_3 <= address_1 + 320;
            end
    end
endmodule
