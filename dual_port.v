// Dual-Port RAM with Asynchronous Read (Distributed RAM)
// File: rams_dist.v

module dual_port (clk, we, a, b, dpra, di, spo, dpo, epo);

input clk;
input we;
input [5:0] a;
input [5:0] b;
input [5:0] dpra;
input [15:0] di;
output [7:0] spo;
output [7:0] dpo;
output [7:0] epo;
reg [7:0] ram [409599:0];


 
  
  
  
always @(posedge clk)
begin
if (we)
    ram[a] <= di;  
end

assign spo = ram[a]+ram[a+1]+ram[a+2]+ram[a+3]+ram[a+4]+ram[a+5]+ram[a+6]+ram[a+7]+ram[a+8]+ram[a+9]; 
assign dpo = ram[dpra];
assign epo = ram[b]+ram[b+1]+ram[b+2]+ram[b+3]+ram[b+4]+ram[b+5]+ram[b+6]+ram[b+7]+ram[b+8]+ram[b+9];

endmodule