`timescale 1ns / 1ps
module CBS1_ALL(
    input [239:0] data_in1,data_in2,data_in3,
    input [71:0] filter1,filter2,filter3,
    input clk,rst,
    output  [159:0] data_out1,data_out2,data_out3
    );

    CBS1 CBS_inst1(
        .data_in1(data_in1),
        .filter(filter1),
        .data_out1(data_out1)
    );
    CBS1 CBS_inst2(
        .data_in1(data_in2),
        .filter(filter2),
        .data_out1(data_out2)
    );

    CBS1 CBS_inst3(
        .data_in1(data_in3),
        .filter(filter3),
        .data_out1(data_out3)
    );
endmodule
