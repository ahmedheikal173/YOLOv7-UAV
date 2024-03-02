module register_8bit(
    input [7:0] data_in,
    input enable,
    input clk,rst,
    input[6:0] counter,
    output reg [7:0] data_out
);
reg [7:0]ram;
always @(posedge clk) begin
    if(rst || counter == 7'b0)
        data_out<=8'b0;
    else if(enable) begin
        ram[7:0] <= data_in;
        data_out <= data_in;
        
    end
end
endmodule
