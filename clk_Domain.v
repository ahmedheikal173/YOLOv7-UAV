module clk_Domain(clk,SIPO,rst,q);
  input clk,rst;
  input SIPO;
  output reg [4:0]q;
 
  always @ (posedge clk)
    begin
      if(rst)
        q <= 0;
        else 
        q <= {SIPO,q[4:1]};
    end 
endmodule