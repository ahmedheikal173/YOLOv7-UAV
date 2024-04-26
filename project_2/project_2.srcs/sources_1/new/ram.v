module mem(din_a, addr_a, addr_b, clk_a, clk_b, en_a, en_b, dout_b, dout_a);
input [7:0] din_a;
input [9:0] addr_a, addr_b;
input clk_a, clk_b, en_a, en_b;
output reg [7:0] dout_b, dout_a;
reg [7:0] mem [32767:0];

always @(posedge clk_a) begin
	 if (en_a) begin
	 mem [addr_a] <= din_a;
	end

end
always @(posedge clk_b) begin
	if (en_b) begin
		// reset
		dout_b<=mem[addr_b];
		dout_a<=mem[addr_a];
	end
end
endmodule