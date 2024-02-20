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
module Counter_2(
    input wire clk,
    input wire reset,
    output reg [1:0] count,
    output reg finish
);

// Define states
parameter S1 = 2'b00;
parameter S2 = 2'b01;

// Define signals
reg[1:0] current_state,next_state;

// State register
always @(posedge clk or posedge reset) begin
    if (reset)
    begin
        finish <= 0;
        current_state <= S1;
    end
      
    else 
        current_state<=next_state;
end

// Output logic
always @(current_state) begin
    begin
        case (current_state)
            S1: next_state <= S2;
            S2: next_state <= S1;
            default: next_state <= S1;
        endcase
    end
end

// Output logic
always @(current_state) begin
    case (current_state)
        S1: 
            begin
                count = 3'b00; 
                finish = 1;
            end
        S2: 
            begin
                count = 3'b01; 
                finish = 0;
            end
        default: count = 3'b00;
    endcase
end

endmodule
