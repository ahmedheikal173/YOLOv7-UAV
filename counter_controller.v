`timescale 1ns / 1ps
module counter_controller(
    input clk,rst,
    output [9:0] counter_row,
    output [9:0] counter_col,
    output finishR
    );
    wire finishC;
    counter_640 countCols(
        .clk(clk),
        .reset(rst),
        .count(counter_col),
        .finish(finishC)
    );
    counter_640 countRows(
        .clk(finishC),
        .reset(rst),
        .count(counter_row),
        .finish(finishR)
    );
endmodule
