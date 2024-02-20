`timescale 1ns / 1ps
module CBS1(
    input [239:0]img,
    input [71:0]filter,
    input clk,
    output [119:0]conv_result
    );
    conv3_3 con1(filter[71:0], {img[239:216],img[159:136],img[79:56]}, conv_result[119:104]);
    conv3_3 con2(filter[71:0], {img[231:208],img[151:128],img[71:48]}, conv_result[103:88]);
    conv3_3 con3(filter[71:0], {img[223:200],img[143:120],img[63:40]}, conv_result[87:72]);
    conv3_3 con4(filter[71:0], {img[215:192],img[135:112],img[55:32]}, conv_result[71:56]);
    conv3_3 con5(filter[71:0], {img[207:184],img[127:104],img[47:24]}, conv_result[55:40]);
    conv3_3 con6(filter[71:0], {img[199:176],img[119:96],img[39:16]}, conv_result[39:24]);
    conv3_3 con7(filter[71:0], {img[191:168],img[111:88],img[31:8]}, conv_result[23:8]);
    conv3_3 con8(filter[71:0], {img[183:160],img[103:80],img[23:0]}, conv_result[7:0]);    
    
    
endmodule
