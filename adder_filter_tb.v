module adder_filter_tb();
reg clk;
reg rst;
wire [7:0] add_out;

adder_filter DUT(clk, rst, add_out);

initial begin
	clk=0;
	forever
	#1 clk=~clk;
end

initial begin

rst =1 ;
#2
rst = 0;
#500
$stop;

end
endmodule