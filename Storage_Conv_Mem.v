`timescale 1ns / 1ps
module Storage_Conv_Mem(
    input clk,reset,re,we,
    input [7:0]In_Memory,
    input [3:0] address,
    input [14:0] counter_col_640,counter_Row_640,
    input zero_row,zero_col,final_row,final_col,
    output reg [105:0]Out_Memory
    );

    reg [7:0] Mem[8:0];
    reg [3:0]stepn;

    reg[14:0] counter_col,counter_Row;

    always @(posedge clk ) begin
        if(reset) begin
            Out_Memory<=0;
        end
        else if(re) begin
            Out_Memory[105:0] <= {counter_Row,counter_col,stepn[3:0],Mem[0],Mem[1],Mem[2],Mem[3],Mem[4],Mem[5],Mem[6],Mem[7],Mem[8]};
        end
        else if(we) begin
            Mem[address] <= In_Memory;
            if(address==5)
                stepn<={zero_row,final_row,zero_col,final_col};
        end
    end

    always @(posedge clk ) begin
        if(address==5)
        begin
            counter_col<=counter_col_640;
            counter_Row<=counter_Row_640;
        end
    end
endmodule
