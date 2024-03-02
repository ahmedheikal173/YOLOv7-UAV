`timescale 1ns / 1ps
module CBS1_Trial_1Layer(
    input [71:0]filter,
    input clk,rst,
    output [15:0] res1,res2,res3,res4,res5,res6,res7,res8
    );
    wire [79:0]img_R1,img_R2,img_R3;
    wire [79:0]img_R1_2,img_R2_2,img_R3_2;
    wire [79:0]img_R1_3,img_R2_3,img_R3_3;
    wire [15:0]conv_result1,conv_result2,conv_result3,conv_result4,conv_result5,conv_result6,conv_result7,conv_result8;
    wire [15:0]conv_result1_2,conv_result2_2,conv_result3_2,conv_result4_2,conv_result5_2,conv_result6_2,conv_result7_2,conv_result8_2;
    wire [15:0]conv_result1_3,conv_result2_3,conv_result3_3,conv_result4_3,conv_result5_3,conv_result6_3,conv_result7_3,conv_result8_3;
    
    wire [6:0]counter_col;
    wire [9:0]counter_row;
    reg [25:0]Needed_Addr;
    reg we,need_Data;
    wire finish,enable_reg;
    reg[5:0] addr;
    wire [7:0] data_stored;
    reg [7:0] store_in ;
    Adder_16_3 add1(conv_result1,conv_result1_2,conv_result1_3,1'b0,res1);
    Adder_16_3 add2(conv_result2,conv_result2_2,conv_result2_3,1'b0,res2);
    Adder_16_3 add3(conv_result3,conv_result3_2,conv_result3_3,1'b0,res3);
    Adder_16_3 add4(conv_result4,conv_result4_2,conv_result4_3,1'b0,res4);
    Adder_16_3 add5(conv_result5,conv_result5_2,conv_result5_3,1'b0,res5);
    Adder_16_3 add6(conv_result6,conv_result6_2,conv_result6_3,1'b0,res6);
    Adder_16_3 add7(conv_result7,conv_result7_2,conv_result7_3,1'b0,res7);
    Adder_16_3 add8(conv_result8,conv_result8_2,conv_result8_3,1'b0,res8);


Single_Asynch_RAM inst6(
        .clk(clk),
        .we(we),
        .rst(rst),
        .addr(addr),
        .data_in({res1,res2,res3,res4,res5,res6,res7,res8}),
        .need_Data(need_Data),
        .Needed_Addr(Needed_Addr),
        .finish(finish),
        .counter_row(counter_row),
        .counter_col(counter_col),
        .data_out({img_R1,img_R2,img_R3,img_R1_2,img_R2_2,img_R3_2,img_R1_3,img_R2_3,img_R3_3})
        //.data_out2({}),
        //.data_out3({})
    );


    counter_640 inst1(
        .clk(finish),
        .reset(rst),
        .count(counter_row)
    );

    Counter_2 inst2(
        .clk(clk),
        .reset(rst),
        .count(counter_col),
        .finish(finish)
    );
    CBS1 inst3(
            .img_R1(img_R1_2),
            .img_R2(img_R2_2),
            .img_R3(img_R3_2),
            .filter(filter),
            .clk(clk),
            .conv_result1(conv_result1_2),
            .conv_result2(conv_result2_2),
            .conv_result3(conv_result3_2),
            .conv_result4(conv_result4_2),
            .conv_result5(conv_result5_2),
            .conv_result6(conv_result6_2),
            .conv_result7(conv_result7_2),
            .conv_result8(conv_result8_2)
        );
        
        CBS1 inst4(
                .img_R1(img_R1_3),
                .img_R2(img_R2_3),
                .img_R3(img_R3_3),
                .filter(filter),
                .clk(clk),
                .conv_result1(conv_result1_3),
                .conv_result2(conv_result2_3),
                .conv_result3(conv_result3_3),
                .conv_result4(conv_result4_3),
                .conv_result5(conv_result5_3),
                .conv_result6(conv_result6_3),
                .conv_result7(conv_result7_3),
                .conv_result8(conv_result8_3)
            );
    
    CBS1 inst5(
        .img_R1(img_R1),
        .img_R2(img_R2),
        .img_R3(img_R3),
        .filter(filter),
        .clk(clk),
        .conv_result1(conv_result1),
        .conv_result2(conv_result2),
        .conv_result3(conv_result3),
        .conv_result4(conv_result4),
        .conv_result5(conv_result5),
        .conv_result6(conv_result6),
        .conv_result7(conv_result7),
        .conv_result8(conv_result8)
    );


    
    
    always @(posedge clk or posedge rst ) 
    begin
        if(rst) 
            begin
                Needed_Addr <= 26'b0;
                we<=1'b0;
                need_Data<=1'b1;
              
            end
        else 
            begin
                case (counter_row)
                    0: case (counter_col)
                            0: Needed_Addr<=Needed_Addr+7;
                            79: Needed_Addr<=0;
                            default: Needed_Addr<=Needed_Addr+8;
                        endcase
                    default: case (counter_col)
                                0: Needed_Addr<=Needed_Addr+7;
                                79: Needed_Addr<=Needed_Addr+9;
                                default: Needed_Addr<=Needed_Addr+8;
                             endcase
                endcase
            end
    end
endmodule



//000000010000000100000001000000010000000100000001000000010000000100000001
