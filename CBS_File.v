`timescale 1ns / 1ps
module CBS_File(
    input clk,reset,
    output [19:0] convolution_result
    
    
    );
    

    wire final_state_reached,finish_row,finish_flag,clk_db,For_Memory,final_state_reached_9;
    wire zero_col,final_col,finish_Img,zero_row,final_row,final_filter_24;
    wire [14:0] counter_Col,counter_Row;
    wire [24:0] Add_Gen,S;
    wire [3:0] state_out_filters,state_out_address;
    wire [4:0] state_out24;
    wire [8:0] filter_address;
    wire [7:0] Out_Memory,filter_out;
    wire [10:0] state_out;
    wire [105:0] Out_Memory_9;
    wire [71:0] from_filter,to_conv;
    wire [4:0]q;

    

    counter_640_Col inst_row(
                    .clk(final_state_reached),
                    .reset(reset),
                    .count(counter_Col),
                    .finish(finish_row),
                    .zero_col(zero_col),
                    .final_col(final_col)
    );
    
    counter_640_Row inst_col(
                    .clk(finish_row),
                    .reset(reset),
                    .count(counter_Row),
                    .finish(finish_Img),
                    .zero_row(zero_row),
                    .final_row(final_row)
    );

    Address_Generator inst(
                    .clk(clk),
                    .reset(reset),
                    .counter_Row(counter_Row),
                    .counter_Col(counter_Col),
                    .S(Add_Gen),
                    .clk_db(clk_db),
                    .finish_flag(finish_flag)
     );

    FSM_9_Filters inst_FSM_9_Filters(
                    .clk(finish_flag),
                    .reset(reset),
                    .state_out_ff(state_out_filters)
    );

    Counter_24 inst_counter_24(
                    .clk(finish_Img),
                    .reset(reset),
                    .state_out24(state_out24),
                    .final_filter_24(final_filter_24)
    );

    filter_address_generator inst_filter_address_generator(
                    .clk_mul(clk),
                    .clk_add(clk_db),
                    .counter_9(state_out_filters),
                    .counter_24(state_out24),
                    .Res_Coun(filter_address)
    );

    (* dont_touch = "true" *)
     FSM_Img inst_FSM(
                    .clk(finish_flag),
                    .reset(reset),
                    .state_out(state_out),
                    .final_state_reached(final_state_reached),
                    .For_Memory(For_Memory)
     );


     c_addsub_0 instsum(
                        .A(Add_Gen),
                        .B({14'b0,state_out}),
                        .CLK(clk),
                        .SCLR(reset),
                        .S(S)
     );
   (* dont_touch = "true" *)
    FSM_9 inst_FSM_9(
                    .clk(finish_flag),
                    .main_clk(clk),
                    .reset(reset),
                    .For_Memory(For_Memory),
                    .state_out_9(state_out_address),
                    .final_state_reached(final_state_reached_9)
    );

    
    image_page1 inst_img(
                    .addr1_1(S),
                    .clk(finish_flag),
                    .rst(reset),
                  .data_out1_1(Out_Memory)
  );
    //(* dont_touch = "true" *)
    //blk_mem_gen_1 inst_img_mem(
      //             .addra(S[18:0]),
        //           .clka(finish_flag),
          //         .douta(Out_Memory)
        //);

    (* dont_touch = "true" *)
    Filters inst_filters(
                    .clk(finish_flag),
                    .reset(reset),
                    .address(filter_address),
                    .filter_out(filter_out)
    );

    (* dont_touch = "true" *)
    Storage_Conv_Mem Storage_Conv_Mem_inst(
                    .clk(clk),
                    .reset(reset),
                    .we(For_Memory),
                    .re(final_state_reached_9),
                    .address(state_out_address),
                    .counter_col_640(counter_Col),
                    .counter_Row_640(counter_Row),
                    .In_Memory(Out_Memory),
                    .zero_col(zero_col),
                    .zero_row(zero_row),
                    .final_col(final_col),
                    .final_row(final_row),
                    .Out_Memory(Out_Memory_9)
    );

    (* dont_touch = "true" *)
    Storage_filter_Mem Storage_filter_Mem_inst(
                    .clk(clk),
                    .reset(reset),
                    .we(For_Memory),
                    .re(final_state_reached_9),
                    .In_Memory(filter_out),
                    .address(state_out_address),
                    .Out_Memory(from_filter)
    );

    Padding_CBS_File padding_inst(
                    .clk(final_state_reached),
                    .reset(reset),
                    .from_9_Reg(Out_Memory_9),
                    .to_conv(to_conv)
    );

    clk_Domain instclks(
        .clk(clk),
        .rst(reset),
        .SIPO(final_state_reached_9),
        .q(q[4:0])
    );

    

    Convolution_Process inst_conv(
        .Image(to_conv),
        .filter(from_filter),
       // .clk(clk),
        //.reset(reset),
        .clks(q[4:0]),
        .clk1(final_state_reached_9),
        .convolution_result(convolution_result)
    );


endmodule