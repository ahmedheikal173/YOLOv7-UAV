`timescale 1ns / 1ps
module Counter_24(
    input wire clk,
    input wire reset,
    output reg [4:0] state_out,
    output reg final_filter_24,
    );

    always @(posedge clk ) begin
        if(reset)
        begin
            state_out<=5'b0
        end
        else if(state_out==24) begin
            state_out<=5'b0;
            final_filter<=1'b1;
        end
        else begin
            state_out<=state_out+1;
            final_filter<=1'b0;
        end
    end
endmodule
