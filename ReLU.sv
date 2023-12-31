module ReLU(in,en,clk,rstn,out);

parameter datawidth=8;
parameter N=320;
parameter depth=3;

input logic [datawidth-1:0] in [N-1:0] [N-1:0] [depth-1:0];
input rstn,clk,en;

output logic [datawidth-1:0] out [N-1:0] [N-1:0] [depth-1:0];

  always@(posedge clk or negedge rstn) begin

	if(!rstn) begin
		out<=0;
	end
	else if (en) begin
		out<=in;
	end

  end

endmodule
