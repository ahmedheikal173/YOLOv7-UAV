`timescale 1ns / 1ps
module Address_Generator(
    input clk,reset,
    input [14:0] counter_Row,
    input [14:0] counter_Col,
    output [24:0]S,
    output c_out,clk_db,
    output reg finish_flag
    );
    wire [24:0]Mul;
    reg [1:0]counter_in;
    Conters_Multipliers inst(
                        .CLK(clk),
                        .A(counter_Row),
                        .P(Mul),
                        .SCLR(reset)
     );
     c_addsub_0 instsum(
                        .A(Mul),
                        .B({10'b0,counter_Col}),
                        .CLK(clk_db),
                        .SCLR(reset),
                        .C_OUT(c_out),
                        .S(S)
     );
     
     reg clk_db_reg;
          always @(posedge clk or posedge reset) begin
             if (reset)
                 clk_db_reg <= 1'b0;
             else
                 clk_db_reg <= ~clk_db_reg; // Invert clk_db_reg every rising edge of clk
          end
          
     assign clk_db = clk_db_reg;
     always @(posedge clk , posedge reset)
     begin 
        if(reset)
            begin
               finish_flag<=0;
               counter_in <= 0;
            end
        else if(counter_in<2)
            begin
                finish_flag<=0;
                counter_in<=counter_in+1;
            end
        else
             begin
                finish_flag<=1;
                counter_in<=0;
             end
     end
endmodule
