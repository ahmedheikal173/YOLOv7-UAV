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
module FSM_Counter_640_3(
    input wire clk,
    input wire reset,
    output reg [1:0] count
);


parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;


// Define signals
reg[1:0] current_state,next_state;

// State register
always @(posedge clk or posedge reset) begin
    if (reset)
        current_state <= S0;
    else 
        current_state<=next_state;
end

// Output logic
always @(current_state) begin
    begin
        case (current_state)
            S0: next_state <= S1;
            S1: next_state <= S2;
            S2: next_state <= S3;
            S3: next_state <= S0;
            default: next_state <= S0;
        endcase
    end
end

// Output logic
always @(current_state) begin
    case (current_state)
        S0: count = 3'b00;
        S1: count = 3'b01;
        S2: count = 3'b10;
        S3: count = 3'b11;
        default: count = 3'b00;
    endcase
end

endmodule
