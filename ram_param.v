module ram_param(clk, we,re, clear,addr1,addr2, data_in1,data_in2, data_out1,data_out2);
parameter n = 22;
parameter w = 8;
input clk, we,re, clear;
input [n-1:0] addr1;
input [n-1:0] addr2;

input [72-1:0] data_in1,data_in2;
output [72-1:0] data_out1,data_out2;

URAM288 URAM288_inst (
    .CLK(clk),
    .DIN_A(data_in1),
    .DIN_B(data_in2),
    .ADDR_A(addr1),
    .ADDR_B(addr2),
    .DOUT_A(data_out1),                         // 72-bit output: Port A read data output
    .DOUT_B(data_out2)                      // 72-bit output: Port B read data output
   );
 
   
endmodule  