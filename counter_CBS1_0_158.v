`timescale 1ns / 1ps

module counter_CBS1_0_158(
    input clk,
    input reset,
    output reg [7:0] count
);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 8'b0;
        end
    else
        begin
            if(count == 158)
                count <= 8'b0;
            else
                count <= count + 1;
        end
end
endmodule