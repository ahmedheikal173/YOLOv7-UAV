`timescale 1ns / 1ps
module filter_address_generator(
    input clk_mul,clk_add,
    input [3:0] counter_9,
    input [4:0] counter_24,
    output [8:0]Res_Coun
    );
    wire [8:0]Res_count_mul;
    mul_24     inst_mul_filters(clk_mul,counter_24,Res_count_mul);
    add_filter inst_add_filters(Res_count_mul,counter_9,clk_add,Res_Coun);

endmodule