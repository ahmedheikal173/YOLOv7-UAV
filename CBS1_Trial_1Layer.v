`timescale 1ns / 1ps
module CBS1_Trial_1Layer(
    input [71:0]filter,
    input clk,rst,
    output [15:0]conv_result1,conv_result2
    );
    wire [95:0]img;
    wire [1:0]counter2,counter3;
    reg [5:0]Needed_Addr;
    reg we,need_Data;
    wire finish;
    reg[5:0] addr;
    FSM_Counter_640_3 inst1(
        .clk(finish),
        .reset(rst),
        .count(counter3)
    );

    Counter_2 inst2(
        .clk(clk),
        .reset(rst),
        .count(counter2),
        .finish(finish)
    );
    
    CBS1_5X5_Trial inst4(
        .img(img),
        .filter(filter),
        .conv_result1(conv_result1),
        .conv_result2(conv_result2)
    );
    Single_Asynch_RAM inst3(
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in({conv_result1,conv_result2}),
        .need_Data(need_Data),
        .Needed_Addr(Needed_Addr),
        .data_out(img)
    );
    always @(posedge clk or posedge rst ) begin
        if(rst) begin
            //conv_result <= 32'b0;
            Needed_Addr <= 6'b0;
            we<=1'b0;
            need_Data<=1'b1;
            addr<=6'b0;
        end
        else 
        begin
            if(we==1'b0 && need_Data==1'b1)
            begin
                addr<= addr + 2;
                we<=1'b1;
                Needed_Addr <= Needed_Addr + 2;
                addr<=6'b0;
            end
            else if(counter2 == 2'b00 && counter3==2'b00)
            begin
                if(addr==6'b000000)
                begin
                    we<=1'b1;
                    need_Data<=1'b1;
                end
                else
                    we<=1'b0;
            end
            else
            if(counter2 == 2'b01 && counter3==2'b11)
            begin
                need_Data<=1'b0;
                addr<= addr + 2;
            end
            else if(counter2==2'b01 && we==1'b1 )
            begin
                addr<= addr + 2;
                Needed_Addr <= Needed_Addr + 4;
                need_Data<=1'b1;
                we<=1'b1;
            end
            else if(counter2==2'b00 && we==1'b1 )
            begin
                addr<= addr + 2;
                Needed_Addr <= Needed_Addr + 2;
                need_Data<=1'b1;
                we<=1'b1;
            end
            
        end
    end
endmodule
//000000010000000100000001000000010000000100000001000000010000000100000001