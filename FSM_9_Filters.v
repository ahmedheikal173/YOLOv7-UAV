`timescale 1ns / 1ps
module FSM_9_Filters(
    input wire clk,
    input wire reset,
    output reg [3:0] state_out_ff
     
    );
    always @(posedge clk or posedge reset) begin
        if(reset)
        begin
           
            state_out_ff<=4'b0;
        end
        else if(state_out_ff==8) begin
            state_out_ff<=4'b0;
            
        end
        else begin
            state_out_ff<=state_out_ff+1;
            
        end
    end

   
endmodule

