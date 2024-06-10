(* dont_touch = "true" *)
module Convolution_Process(
    input [71:0] Image,filter,
    input [4:0]clks,
    input clk1,
    output [19:0] convolution_result
        );
    reg [3:0] counter_clk;
    reg [9:0]index;
    reg clk2,clk3,clk4,clk5;
    wire [7:0]Image1,Image2,Image3,Image4,Image5,Image6,Image7,Image8,Image9;
    wire [7:0]filter1,filter2,filter3,filter4,filter5,filter6,filter7,filter8,filter9;
    wire [4:0]q;
    
    assign q[4:0] = clks[4:0];
    assign Image1=Image[71:64];
    assign Image2=Image[63:56];
    assign Image3=Image[55:48];
    assign Image4=Image[47:40];
    assign Image5=Image[39:32];
    assign Image6=Image[31:24];
    assign Image7=Image[23:16];
    assign Image8=Image[15:8];
    assign Image9=Image[7:0];

    assign filter1=filter[71:64];
    assign filter2=filter[63:56];
    assign filter3=filter[55:48];
    assign filter4=filter[47:40];
    assign filter5=filter[39:32];
    assign filter6=filter[31:24];
    assign filter7=filter[23:16];
    assign filter8=filter[15:8];
    assign filter9=filter[7:0];
    

   

    wire [15:0] Mul_stg_1,Mul_stg_2,Mul_stg_3,Mul_stg_4,Mul_stg_5,Mul_stg_6,Mul_stg_7,Mul_stg_8,Mul_stg_9;
    wire [16:0] Add_stg_2_1,Add_stg_2_2,Add_stg_2_3,Add_stg_2_4,Add_stg_2_5;
    wire [17:0] Add_stg_3_1,Add_stg_3_2,Add_stg_3_3;
    wire [18:0] Add_stg_4_1,Add_stg_4_2;
    MUL_Conv_stg1 inst_Mul_1(
        .CLK(clk1),
        .A(Image1),
        .B(filter1),
        .P(Mul_stg_1)
    );

    MUL_Conv_stg1 inst_Mul_2(
        .CLK(clk1),
        .A(Image2),
        .B(filter2),
        .P(Mul_stg_2)
    );

    MUL_Conv_stg1 inst_Mul_3(
        .CLK(clk1),
        .A(Image3),
        .B(filter3),
        .P(Mul_stg_3)
    );

    MUL_Conv_stg1 inst_Mul_4(
        .CLK(clk1),
        .A(Image4),
        .B(filter4),
        .P(Mul_stg_4)
    );

    MUL_Conv_stg1 inst_Mul_5(
        .CLK(clk1),
        .A(Image5),
        .B(filter5),
        .P(Mul_stg_5)
    );

    MUL_Conv_stg1 inst_Mul_6(
        .CLK(clk1),
        .A(Image6),
        .B(filter6),
        .P(Mul_stg_6)
    );

    MUL_Conv_stg1 inst_Mul_7(
        .CLK(clk1),
        .A(Image7),
        .B(filter7),
        .P(Mul_stg_7)
    );

    MUL_Conv_stg1 inst_Mul_8(
        .CLK(clk1),
        .A(Image8),
        .B(filter8),
        .P(Mul_stg_8)
    );

    MUL_Conv_stg1 inst_Mul_9(
        .CLK(clk1),
        .A(Image9),
        .B(filter9),
        .P(Mul_stg_9)
    );

    Add_Conv_stg2 inst_Add_1(
        .CLK(q[4]),
        .A(Mul_stg_1),
        .B(Mul_stg_2),
        .S(Add_stg_2_1)
    );

    Add_Conv_stg2 inst_Add_2(
        .CLK(q[4]),
        .A(Mul_stg_3),
        .B(Mul_stg_4),
        .S(Add_stg_2_2)
    );

    Add_Conv_stg2 inst_Add_3(
        .CLK(q[4]),
        .A(Mul_stg_5),
        .B(Mul_stg_6),
        .S(Add_stg_2_3)
    );

    Add_Conv_stg2 inst_Add_4(
        .CLK(q[4]),
        .A(Mul_stg_7),
        .B(Mul_stg_8),
        .S(Add_stg_2_4)
    );

    Add_Conv_stg2 inst_Add_5(
        .CLK(q[4]),
        .A(Mul_stg_9),
        .B(16'b0),
        .S(Add_stg_2_5)
    );

    wire [79:0] Add_stg_2;
    ADD_Conv_stg3 inst_Add_6(
        .CLK(q[3]),
        .A(Add_stg_2_1),
        .B(Add_stg_2_2),
        .S(Add_stg_3_1)
    );

    ADD_Conv_stg3 inst_Add_7(
        .CLK(q[3]),
        .A(Add_stg_2_3),
        .B(Add_stg_2_4),
        .S(Add_stg_3_2)
    );

    ADD_Conv_stg3 inst_Add_8(
        .CLK(q[3]),
        .A(Add_stg_2_5),
        .B(17'b0),
        .S(Add_stg_3_3)
    );

    ADD_Conv_stg4 inst_Add_9(
        .CLK(q[2]),
        .A(Add_stg_3_1),
        .B(Add_stg_3_2),
        .S(Add_stg_4_1)
    );

    ADD_Conv_stg4 inst_Add_10(
        .CLK(q[2]),
        .A(Add_stg_3_3),
        .B(18'b0),
        .S(Add_stg_4_2)
    );

    ADD_Conv_stg5 inst_Add_11(
        .CLK(q[1]),
        .A(Add_stg_4_1),
        .B(Add_stg_4_2),
        .S(convolution_result)
    );




endmodule
