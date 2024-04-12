`timescale 1ns / 1ps

module counter_CBS1_0_17(
    input clk,
    input reset,
    output reg [5:0] count
);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 5'b0;
        end
    else
        begin
            if(count == 17)
                count <= 6'b0;
            else
                count <= count + 1;
        end
end
endmodule