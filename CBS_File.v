`timescale 1ns / 1ps
module CBS_File(
    input clk,reset,
    output [11:0] state_out,
    output final_state_reached,cout2,
    output [24:0]S,
    output [7:0]Out_Memory
    );
    wire clk_db,finish_flag,finish_Img,finish_row;
    wire [24:0]Add_Gen;
    reg [24:0]Add_Gen_sum;
    wire c_out;
    wire [14:0] counter_Row;
    wire [14:0] counter_Col;


    counter_640 inst_row(
                    .clk(final_state_reached),
                    .reset(reset),
                    .count(counter_Col),
                    .finish(finish_row)
    );
    counter_640 inst_col(
                    .clk(finish_row),
                    .reset(reset),
                    .count(counter_Row),
                    .finish(finish_Img)
    );

    Address_Generator inst(
                    .clk(clk),
                    .reset(reset),
                    .counter_Row(counter_Row),
                    .counter_Col(counter_Col),
                    .S(Add_Gen),
                    .c_out(c_out),
                    .clk_db(clk_db),
                    .finish_flag(finish_flag)
     );

     FSM_Img inst_FSM(
                    .clk(finish_flag),
                    .reset(reset),
                    .state_out(state_out),
                    .final_state_reached(final_state_reached)
     );

     c_addsub_0 instsum(
                        .A(Add_Gen),
                        .B({13'b0,state_out}),
                        .CLK(finish_flag),
                        .SCLR(reset),
                        .C_OUT(cout2),
                        .S(S)
     );
    image_page1 inst_img(
                    .addr1_1(S),
                    .r_enable(finish_flag),
                    .we(1'b0),
                    .clk(clk),
                    .rst(reset),
                    .data_out1_1(Out_Memory)
    );

     always @(posedge clk , posedge reset) begin
        if(reset)
            Add_Gen_sum<=0;
        else if(clk)
            Add_Gen_sum<=Add_Gen;
     end
endmodule