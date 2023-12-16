`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2023 09:38:19 AM
// Design Name: 
// Module Name: read_Conv
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module read_Conv;

  parameter ROWS = 3;   // Number of rows in the matrix
  parameter COLS = 3;   // Number of columns in the matrix

  reg [7:0] filter [0:ROWS-1][0:COLS-1];  // 8-bit wide elements for each matrix cell
  reg [7:0] img [0:ROWS-1][0:COLS-1];
  genvar i,j;
  wire [31:0]count = 32'b0;
    // Read matrix values from the text file
   initial begin
    $readmemh("C:/Users/hp/Desktop/GP/Filter.txt", filter);
    $readmemh("C:/Users/hp/Desktop/GP/Img.txt", img);
    // Display the read matrix
   end

  generate
	for(i=0;i<ROWS-1;i = i+1)
   	begin
           for(j=0;j<COLS-1;j = j+1) 
           begin
		assign count = filter[i][j]*img[i][j];
	   end
	end
  endgenerate
endmodule

