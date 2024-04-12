`timescale 1ns / 1ps
module counter_640(
    input clk,
    input reset,
    output reg [14:0] count,
    output reg finish
);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 15'b0;
            finish <= 0;
        end
    else
        begin
            if(count == 638)
            begin
                count <= 15'b0;
                finish <= 1'b1;
            end
            else
                count <= count + 1;
        end
end
endmodule
