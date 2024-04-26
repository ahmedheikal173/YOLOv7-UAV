`timescale 1ns / 1ps
module CBS_File(
    input clk,reset,
    output [11:0] state_out,
    output final_state_reached,cout2,
    output [24:0]S,
    output [7:0]Out_Memory,
    output [71:0]Out_Memory_9
    
    );
    wire clk_db,finish_flag,finish_Img,finish_row;
    wire final_state_reached_9;
    wire [3:0]state_out_address;
    wire [24:0]Add_Gen;
    reg [24:0]Add_Gen_sum;
    wire c_out,For_Memory;
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
                    .final_state_reached(final_state_reached),
                    .For_Memory(For_Memory)
     );

     c_addsub_0 instsum(
                        .A(Add_Gen),
                        .B({13'b0,state_out}),
                        .CLK(clk),
                        .SCLR(reset),
                        .C_OUT(cout2),
                        .S(S)
     );
    image_page1 inst_img(
                    .addr1_1(S),
                    .r_enable(1'b1),
                    .we(1'b0),
                    .clk(finish_flag),
                    .rst(reset),
                    .data_out1_1(Out_Memory)
    );
    FSM_9 inst_FSM_9(
                    .clk(finish_flag),
                    .main_clk(clk),
                    .reset(reset),
                    .For_Memory(For_Memory),
                    .state_out(state_out_address),
                    .final_state_reached(final_state_reached_9)
    );
    Storage_Conv_Mem Storage_Conv_Mem_inst(
                    .clk(clk_db),
                    .reset(reset),
                    .we(For_Memory),
                    .re(final_state_reached_9),
                    .address(state_out_address),
                    .In_Memory(Out_Memory),
                    .Out_Memory(Out_Memory_9)
    );
     always @(posedge clk , posedge reset) begin
        if(reset)
            Add_Gen_sum<=0;
        else if(clk)
            Add_Gen_sum<=Add_Gen;
     end
endmodule