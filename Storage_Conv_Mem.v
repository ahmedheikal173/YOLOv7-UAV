`timescale 1ns / 1ps
module Storage_Conv_Mem(
    input clk,reset,re,we,
    input [7:0]In_Memory,
    input [3:0] address,
    input [14:0] counter_col_640,counter_Row_640,
    input zero_row,zero_col,final_row,final_col,
    output reg [109:0]Out_Memory
    );

    reg [7:0] Mem[9:0];

    reg[14:0] counter_col,counter_Row;

    always @(posedge clk ) begin
        if(reset) begin
            Mem[address] <= 0;
        end
        else if(re) begin
            Out_Memory[109:0] <= {counter_Row,counter_col,Mem[9],Mem[0],Mem[1],Mem[2],Mem[3],Mem[4],Mem[5],Mem[6],Mem[7],Mem[8]};
        end
        else if(we) begin
            Mem[address] <= In_Memory;
        end
    end

    always @(posedge clk ) begin
        if(address==5)
        begin
            Mem[9]<={4'b0,zero_row,final_row,zero_col,final_col};
            counter_col<=counter_col_640;
            counter_Row<=counter_Row_640;
        end
    end
endmodule
