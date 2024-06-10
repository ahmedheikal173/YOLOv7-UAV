module test (
    input wire clk,        // Clock input
    input wire [3:0] in,   // 4-bit input to handle values from 0 to 8
    output reg [10:0] out  // 11-bit output to cover the largest value 1282
);

always @(posedge clk) begin
    case (in)
        4'd0: out = 11'd0;    // 0 -> 0
        4'd1: out = 11'd1;    // 1 -> 1
        4'd2: out = 11'd2;    // 2 -> 2
        4'd3: out = 11'd640;  // 3 -> 640
        4'd4: out = 11'd641;  // 4 -> 641
        4'd5: out = 11'd642;  // 5 -> 642
        4'd6: out = 11'd1280; // 6 -> 1280
        4'd7: out = 11'd1281; // 7 -> 1281
        4'd8: out = 11'd1282; // 8 -> 1282
        default: out = 11'd0; // Default case to handle any unexpected input
    endcase
end

endmodule
