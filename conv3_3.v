`timescale 1ns / 1ps
module conv3_3(
    input  [71:0]filter,
    input  [71:0]img,
    output [15:0]conv_res
    );

    //block conv3        
    wire [15:0] mul[2:0][2:0];
    wire [8:0]Cmul;
    Eight_Bit_Mul mul1(filter[71:64],img[71:64],mul[0][0],Cmul[0]);
    Eight_Bit_Mul mul2(filter[63:56],img[63:56],mul[0][1],Cmul[1]);
    Eight_Bit_Mul mul3(filter[47+8:40+8],img[47+8:40+8],mul[0][2],Cmul[2]);
    
    Eight_Bit_Mul mul4(filter[39+8:32+8],img[39+8:32+8],mul[1][0],Cmul[3]);
    Eight_Bit_Mul mul5(filter[31+8:24+8],img[31+8:24+8],mul[1][1],Cmul[4]);
    Eight_Bit_Mul mul6(filter[23+8:16+8],img[23+8:16+8],mul[1][2],Cmul[5]);
    
    Eight_Bit_Mul mul7(filter[15+8:8+8],img[15+8:8+8],mul[2][0],Cmul[6]);
    Eight_Bit_Mul mul8(filter[7+8:0+8],img[7+8:0+8],mul[2][1],Cmul[7]);
    Eight_Bit_Mul mul9(filter[7:0],img[7:0],mul[2][2],Cmul[8]);
    
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
