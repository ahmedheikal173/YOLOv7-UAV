`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2024 12:05:57 AM
// Design Name: 
// Module Name: FSM_Counter_640_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module counter_640(
    input clk,
    input reset,
    output reg [9:0] count
);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 10'b0;
        end
    else
        begin
            if(count == 639)
                count <= 10'b0;
            else
                count <= count + 1;
        end
end
endmodule
