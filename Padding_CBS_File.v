`timescale 1ns / 1ps

module Padding_CBS_File(
    input clk,reset,
    input [105:0] from_9_Reg,
    output reg [71:0] to_conv
    );

    wire zero_col,zero_row,final_col,final_row;
    wire [14:0] counter_Col,counter_Row;
    
    assign counter_Row = from_9_Reg[105:91];
    assign counter_Col = from_9_Reg[90:76];
    assign zero_row  = from_9_Reg[75];
    assign final_row = from_9_Reg[74];
    assign zero_col  = from_9_Reg[73];
    assign final_col = from_9_Reg[72];
    always @(posedge clk or posedge reset ) 
    begin
        if(reset ) begin
            to_conv <= 72'b0;
        end
        else
            begin 
                case (counter_Row)
                    0:case (zero_row)
                        0:case (counter_Col)
                            0:case (zero_col)
                                1: to_conv<={24'b0,from_9_Reg[71:48],from_9_Reg[47:24]};
                                0: to_conv<={24'b0,8'b0,from_9_Reg[71:56],8'b0,from_9_Reg[47:32]};
                                endcase 
                            637:case(final_col)
                                0: to_conv<={24'b0,from_9_Reg[71:48],from_9_Reg[47:24]};
                                1: to_conv<={24'b0,from_9_Reg[63:48],8'b0,from_9_Reg[39:24],8'b0};
                                endcase 
                            default: to_conv<={24'b0,from_9_Reg[71:48],from_9_Reg[47:24]};
                            endcase
                        1:case(counter_Col)
                            0:case(zero_col)
                                0: to_conv<={8'b0,from_9_Reg[71:56],8'b0,from_9_Reg[47:32],8'b0,from_9_Reg[23:8]};
                                1: to_conv<=from_9_Reg[71:0];
                                endcase
                            637:case(final_col)
                                0: to_conv<=from_9_Reg[71:0];
                                1: to_conv<={from_9_Reg[62:48],8'b0,from_9_Reg[39:24],8'b0,from_9_Reg[15:0],8'b0};
                                endcase
                            default: to_conv<=from_9_Reg[71:0];
                            endcase
                        endcase 
                    637:case(final_row)
                        0:case(counter_Col)
                            0:case(zero_col)
                                0: to_conv<={8'b0,from_9_Reg[71:56],8'b0,from_9_Reg[47:32],8'b0,from_9_Reg[23:8]};
                                1: to_conv<=from_9_Reg[71:0];
                                endcase
                            637:case(final_col)
                                0: to_conv<=from_9_Reg[71:0];
                                1: to_conv<={from_9_Reg[62:48],8'b0,from_9_Reg[39:24],8'b0,from_9_Reg[15:0],8'b0};
                                endcase
                            default: to_conv<=from_9_Reg[71:0];
                            endcase
                        1:case(counter_Col)
                            0:case(zero_col)
                                0:to_conv<={8'b0,from_9_Reg[47:32],8'b0,from_9_Reg[23:8],24'b0};
                                1:to_conv<={from_9_Reg[47:24],from_9_Reg[23:0],24'b0};
                                endcase
                            637:case(final_col)
                                0:to_conv<={from_9_Reg[47:24],from_9_Reg[23:0],24'b0};
                                1:to_conv<={from_9_Reg[39:24],8'b0,from_9_Reg[15:0],8'b0,24'b0};
                                endcase
                            default:to_conv<={from_9_Reg[47:24],from_9_Reg[23:0],24'b0};
                            endcase
                        endcase
                    default:case(counter_Col)
                            0:case(zero_col)
                                0:to_conv<={8'b0,from_9_Reg[71:56],8'b0,from_9_Reg[47:32],8'b0,from_9_Reg[23:8]};
                                1:to_conv<=from_9_Reg[71:0];
                                endcase
                            637:case(final_col)
                                0:to_conv<=from_9_Reg[71:0];
                                1:to_conv<={from_9_Reg[62:48],8'b0,from_9_Reg[39:24],8'b0,from_9_Reg[15:0],8'b0};
                                endcase
                            default: to_conv<=from_9_Reg[71:0];
                        endcase
                endcase
            end
    end                    
endmodule