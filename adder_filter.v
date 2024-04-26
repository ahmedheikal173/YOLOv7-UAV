module adder_filter(clk, rst, add_out);
input clk, rst;
output [7:0] add_out;



wire [3:0] state_out;
wire [7:0] count;
wire final_state_reached;

FSM_FILTERS inst_fsm(clk, rst, state_out, final_state_reached);
counter_9 inst_count(final_state_reached, rst, count);

assign add_out = count + {4'b0, state_out};
//  .A(count),  // input wire [7 : 0] A
  //.B({4'b0, state_out}),  // input wire [7 : 0] B
  //.S(add_out)  // output wire [7 : 0] S
//);
endmodule 
