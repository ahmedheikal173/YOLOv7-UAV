module ReLU(in,en,clk,rstn,out);

parameter datawidth=8;
parameter N=320;
parameter depth=3;

input [datawidth-1:0] in [N-1:0][N-1:0][depth-1:0];
input rstn,clk,en;

output reg [datawidth-1:0] out [N-1:0][N-1:0][depth-1:0];

integer i,j,k;

  always@(posedge clk or negedge rstn) begin

	if(!rstn) begin
		for (i=0;i<N;i=i+1) begin
			for (i=0;i<N;i=i+1) begin
				for (i=0;i<N;i=i+1) begin
					out[i][j][k]<=0;
				end
			end
		end
	end
	else if (en) begin
		for (i=0;i<N;i=i+1) begin
			for (i=0;i<N;i=i+1) begin
				for (i=0;i<N;i=i+1) begin
					out[i][j][k]<=in[i][j][k];
				end
			end
		end
		//out=in;
	end

  end

//assign out=in;
endmodule
