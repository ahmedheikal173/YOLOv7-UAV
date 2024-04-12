`timescale 1ns / 1ps
module Padding_CBS1(
        input [71:0] inp,
        input clk,
        input [9:0] counter_col,
        input [9:0] counter_row,
        output reg [71:0] inp_reg
    );



    always @(posedge clk ) begin
        case (counter_row)
            0:case (counter_col)
                0: inp_reg <= {24'b0,8'b0,inp[71:56],8'b0,inp[47:32]};
                638: inp_reg <= {24'b0,inp[71:56],8'b0,inp[47:32],8'b0};
                default: inp_reg <= {24'b0,inp[71:24]};
            endcase
            638:case (counter_col)
                0: inp_reg <= {8'b0,inp[71:56],8'b0,inp[47:32], 24'b0};
                638: inp_reg <= {inp[71:56], 8'b0, inp[47:32], 32'b0};
                default: inp_reg <= {inp[71:32], 24'b0};
                endcase 
            default:case (counter_col)
                0: inp_reg <= {8'b0, inp[71:56], 8'b0, inp[47:32], 8'b0, inp[23:8]};
                638: inp_reg <= {inp[71:56], 8'b0, inp[47:32], 8'b0, inp[23:8], 8'b0};
                default: inp_reg <= {inp[71:0]};
                endcase
        endcase
    end
endmodule