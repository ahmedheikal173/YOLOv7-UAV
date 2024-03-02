`timescale 1ns / 1ps
module CBS1(
    input [79:0]img_R1,img_R2,img_R3,
    input [71:0]filter,
    input clk,
    output [15:0]conv_result1,conv_result2,conv_result3,conv_result4,conv_result5,conv_result6,conv_result7,conv_result8
    );
    conv3_3 con1(filter[71:0], {img_R1[79:56],img_R2[79:56],img_R3[79:56]}, conv_result1);
    conv3_3 con2(filter[71:0], {img_R1[71:48],img_R2[71:48],img_R3[71:48]}, conv_result2);
    conv3_3 con3(filter[71:0], {img_R1[63:40],img_R2[63:40],img_R3[63:40]}, conv_result3);
    conv3_3 con4(filter[71:0], {img_R1[55:32],img_R2[55:32],img_R3[55:32]}, conv_result4);
    conv3_3 con5(filter[71:0], {img_R1[47:24],img_R2[47:24],img_R3[47:24]}, conv_result5);
    conv3_3 con6(filter[71:0], {img_R1[39:16],img_R2[39:16],img_R3[39:16]}, conv_result6);
    conv3_3 con7(filter[71:0], {img_R1[31:8] ,img_R2[31:8] ,img_R3[31:8]},  conv_result7);
    conv3_3 con8(filter[71:0], {img_R1[23:0] ,img_R2[23:0] ,img_R3[23:0]},  conv_result8);    
    
    
endmodule
