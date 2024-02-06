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


module read_Conv(conv_res);

  parameter ROWS = 3;   // Number of rows in the matrix
  parameter COLS = 3;   // Number of columns in the matrix
  output [15:0]conv_res;
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

   wire [15:0] mul[2:0][2:0];
    Eight_Bit_Mul mul1(filter[0][0],img[0][0],mul[0][0]);
    Eight_Bit_Mul mul2(filter[0][1],img[0][1],mul[0][1]);
    Eight_Bit_Mul mul3(filter[0][2],img[0][2],mul[0][2]);
    
    Eight_Bit_Mul mul4(filter[1][0],img[1][0],mul[1][0]);
    Eight_Bit_Mul mul5(filter[1][1],img[1][1],mul[1][1]);
    Eight_Bit_Mul mul6(filter[1][2],img[1][2],mul[1][2]);
    
    Eight_Bit_Mul mul7(filter[2][0],img[2][0],mul[2][0]);
    Eight_Bit_Mul mul8(filter[2][1],img[2][1],mul[2][1]);
    Eight_Bit_Mul mul9(filter[2][2],img[2][2],mul[2][2]);
    
    wire [15:0] pair1,pair2,pair3,pair4,pair5,pair6,pair7;
    wire cout1,cout2,cout3,cout4,cout5,cout6,cout7;
    sixteen_Bit_Adder add1(mul[0][0],mul[0][1],1'b0,pair1,cout1);
    sixteen_Bit_Adder add2(pair1,mul[0][2],cout1,pair2,cout2);
    
    sixteen_Bit_Adder add3(pair2,mul[1][0],cout2,pair3,cout3);
    sixteen_Bit_Adder add4(pair3,mul[1][1],cout3,pair4,cout4);
    
    sixteen_Bit_Adder add5(pair4,mul[1][2],cout4,pair5,cout5);
    sixteen_Bit_Adder add6(pair5,mul[2][0],cout5,pair6,cout6);
    
    sixteen_Bit_Adder add7(pair6,mul[2][1],cout6,pair7,cout7);
    sixteen_Bit_Adder add8(pair7,mul[2][2],cout7,conv_res);



endmodule
