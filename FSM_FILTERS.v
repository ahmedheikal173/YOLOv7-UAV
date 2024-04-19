module FSM_FILTERS(clk, rst, state_out, final_state_reached);
    input clk;
    input rst;
    output reg [3:0] state_out;
    output reg final_state_reached;

// State parameters
parameter STATE_0   = 4'd0;
parameter STATE_1   = 4'd1;
parameter STATE_2   = 4'd2;
parameter STATE_3   = 4'd3;
parameter STATE_4   = 4'd4;
parameter STATE_5   = 4'd5;
parameter STATE_6   = 4'd6;
parameter STATE_7   = 4'd7;
parameter STATE_8   = 4'd8;

// State register
reg [3:0] current_state, next_state;
// State machine logic
always @(posedge clk or posedge rst) begin
    if (rst) begin
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
        STATE_2:   next_state = STATE_3;
        STATE_3: next_state = STATE_4;
        STATE_4: next_state = STATE_5;
        STATE_5: next_state = STATE_6;
        STATE_6: next_state = STATE_7;
        STATE_7: next_state = STATE_8;
        STATE_8: next_state = STATE_0;
        default: next_state = STATE_0;
    endcase
end

// Output assignment
always @(posedge clk or posedge rst) 
begin
    if (rst) begin
        state_out <= STATE_0;
        final_state_reached <= 0;
    end 
    else begin
        state_out <= current_state;
        final_state_reached <= (current_state == STATE_0) ? 1 : 0;
    end
end

endmodule
