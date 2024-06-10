(* dont_touch = "true" *)
module FSM_Img(
    input wire clk,
    input wire reset,
    output reg [10:0] state_out,
    output reg final_state_reached,
    output reg For_Memory
);

// State parameters
parameter STATE_0   = 11'd0;
parameter STATE_1   = 11'd1;
parameter STATE_2   = 11'd2;
parameter STATE_640 = 11'd640;
parameter STATE_641 = 11'd641;
parameter STATE_642 = 11'd642;
parameter STATE_1280 = 11'd1280;
parameter STATE_1281 = 11'd1281;
parameter STATE_1282 = 11'd1282;

// State register
reg [10:0] current_state, next_state;
// State machine logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        current_state <= STATE_1;
    end else begin
        current_state <= next_state;
    end
end

// Next state logic
always @(current_state) begin
    case(current_state)
        STATE_0:   next_state = STATE_1;
        STATE_1:   next_state = STATE_2;
        STATE_2:   next_state = STATE_640;
        STATE_640: next_state = STATE_641;
        STATE_641: next_state = STATE_642;
        STATE_642: next_state = STATE_1280;
        STATE_1280: next_state = STATE_1281;
        STATE_1281: next_state = STATE_1282;
        STATE_1282: next_state = STATE_0;
        default: next_state = STATE_0;
    endcase
end

// Output assignment
always @(posedge clk or posedge reset) 
begin
    if (reset) begin
        state_out <= STATE_0;
        final_state_reached <= 0;
        For_Memory<=0;
    end 
    else begin
        state_out <= current_state;
        final_state_reached <= (current_state == STATE_0) ? 1 : 0;
        For_Memory <= (current_state == STATE_1)? 1:For_Memory;
    end
end

endmodule
