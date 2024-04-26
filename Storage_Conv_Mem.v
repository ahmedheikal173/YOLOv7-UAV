`timescale 1ns / 1ps
module Storage_Conv_Mem(
    input clk,reset,re,we,
    input [7:0]In_Memory,
    input [3:0] address,
    output reg [71:0]Out_Memory
    );

    reg [7:0] Mem[8:0];

    always @(posedge clk ) begin
        if(reset) begin
            Mem[address] <= 0;
        end
        else if(re) begin
            Out_Memory <= {Mem[0],Mem[1],Mem[2],Mem[3],Mem[4],Mem[5],Mem[6],Mem[7],Mem[8]};
        end
        else if(we) begin
            Mem[address] <= In_Memory;
        end
        
        
    end
endmodule
