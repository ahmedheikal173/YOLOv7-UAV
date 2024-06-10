`timescale 1ns / 1ps
module Counter_24(
    input wire clk,
    input wire reset,
    output reg [4:0] state_out24,
    output reg final_filter_24
    );

    always @(posedge clk or posedge reset) begin
        if(reset)
        begin
            final_filter_24<=1'b0;
            state_out24<=5'b0;
        end
        else if(state_out24==24) begin
            state_out24<=5'b0;
            final_filter_24<=1'b1;
        end
        else begin
            state_out24<=state_out24+1;
            
        end
    end
endmodule
