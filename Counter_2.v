`timescale 1ns / 1ps
module Counter_2(
    input wire clk,
    input wire reset,
    output reg [6:0] count,
    output reg finish
);
always @(posedge clk ) 
    begin
        if(reset) 
            begin
                count <= 7'b0;
            end
        else
            begin
                if(count == 79)
                    begin
                        finish <= 1;
                        count <= 7'b0;
                    end
                else
                    begin
                        finish <= 0;
                        count <= count + 1;
                    end
            end    
    end
endmodule
