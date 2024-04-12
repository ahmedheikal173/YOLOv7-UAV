`timescale 1ns / 1ps
module CBS1(
    input [239:0] data_in1,
    input [71:0]filter,
    output [127:0] data_out1
    );
    conv3_3 conv3_3_inst1(
        .img({data_in1[239:216],data_in1[159:136],data_in1[79:56]}),
        .filter(filter),
        .conv_res(data_out1[127:112])
    );

    conv3_3 conv3_3_inst2(
        .img({data_in1[231:208],data_in1[151:128],data_in1[71:48]}),
        .filter(filter),
        .conv_res(data_out1[111:96])
    );

    conv3_3 conv3_3_inst3(
        .img({data_in1[223:200],data_in1[143:120],data_in1[63:40]}),
        .filter(filter),
        .conv_res(data_out1[95:80])
    );

    conv3_3 conv3_3_inst4(
        .img({data_in1[215:192],data_in1[135:112],data_in1[55:32]}),
        .filter(filter),
        .conv_res(data_out1[79:64])
    );

    conv3_3 conv3_3_inst5(
        .img({data_in1[207:184],data_in1[127:104],data_in1[47:24]}),
        .filter(filter),
        .conv_res(data_out1[63:48])
    );

    conv3_3 conv3_3_inst6(
        .img({data_in1[199:176],data_in1[119:96],data_in1[39:16]}),
        .filter(filter),
        .conv_res(data_out1[47:32])
    );

    conv3_3 conv3_3_inst7(
        .img({data_in1[191:168],data_in1[111:88],data_in1[31:8]}),
        .filter(filter),
        .conv_res(data_out1[31:16])
    );

    conv3_3 conv3_3_inst8(
        .img({data_in1[183:160],data_in1[103:90],data_in1[23:0]}),
        .filter(filter),
        .conv_res(data_out1[15:0])
    );    
endmodule
