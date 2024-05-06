`timescale 1ns / 1ps
module FSM_9_Filters(
    input wire clk,
    input wire reset,
    output reg [2:0] state_out,
    output reg final_filter
    );

    always @(posedge clk ) begin
        if(reset)
        begin
            state_out<=3'b0
        end
        else if(state_out==8) begin
            state_out<=3'b0;
            final_filter<=1'b1;
        end
        else begin
            state_out<=state_out+1;
            final_filter<=1'b0;
        end
    end
endmodule


count_9 + counter_24*9