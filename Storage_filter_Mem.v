`timescale 1ns / 1ps
module Storage_filter_Mem(
    input clk,reset,re,we,
    input [7:0]In_Memory,
    input [3:0] address,
    output reg [71:0]Out_Memory
    );

    reg [7:0] Mem_filter [8:0];

    always @(posedge clk) begin
        if(reset) begin
            Mem_filter[address] <= 8'b0;
        end
        else if(re) begin
            Out_Memory[71:0] <= {Mem_filter[0],Mem_filter[1],Mem_filter[2],Mem_filter[3],Mem_filter[4],Mem_filter[5],Mem_filter[6],Mem_filter[7],Mem_filter[8]};
        end
        else if(we) begin
            Mem_filter[address] <= In_Memory;
        end
    end
    
endmodule
