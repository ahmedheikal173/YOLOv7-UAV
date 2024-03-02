`timescale 1ns / 1ps

module Single_Asynch_RAM(
    input [6:0]addr,
    input [127:0]data_in,
    input need_Data,
    input [25:0]Needed_Addr,
    input [9:0]counter_row,
    input [6:0]counter_col,
    input we,clk,finish,rst,
    output reg [719:0]data_out//,data_out2,data_out3
    );
    reg [7:0]ram [255999:0];
                  
    
    initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram);
    end

    always @(posedge clk )
    begin
        if(rst)
            begin
                data_out<=0;
            end
        else
            if(need_Data)
            begin
                data_out <= {ram[Needed_Addr],ram[Needed_Addr+1],ram[Needed_Addr+2],ram[Needed_Addr+3],ram[Needed_Addr+4],ram[Needed_Addr+5],ram[Needed_Addr+6],ram[Needed_Addr+7],ram[Needed_Addr+8],ram[Needed_Addr+9],ram[Needed_Addr+640],ram[Needed_Addr+641],ram[Needed_Addr+642],ram[Needed_Addr+643],ram[Needed_Addr+644],ram[Needed_Addr+645],ram[Needed_Addr+646],ram[Needed_Addr+647],ram[Needed_Addr+648],ram[Needed_Addr+649],ram[Needed_Addr+1280],ram[Needed_Addr+1281],ram[Needed_Addr+1282],ram[Needed_Addr+1283],ram[Needed_Addr+1284],ram[Needed_Addr+1285],ram[Needed_Addr+1286],ram[Needed_Addr+1287],ram[Needed_Addr+1288],ram[Needed_Addr+1289],ram[Needed_Addr+409600],ram[Needed_Addr+1+409600],ram[Needed_Addr+2+409600],ram[Needed_Addr+3+409600],ram[Needed_Addr+4+409600],ram[Needed_Addr+5+409600],ram[Needed_Addr+6+409600],ram[Needed_Addr+7+409600],ram[Needed_Addr+8+409600],ram[Needed_Addr+9+409600],ram[Needed_Addr+640+409600],ram[Needed_Addr+641+409600],ram[Needed_Addr+642+409600],ram[Needed_Addr+643+409600],ram[Needed_Addr+644+409600],ram[Needed_Addr+645+409600],ram[Needed_Addr+646+409600],ram[Needed_Addr+647+409600],ram[Needed_Addr+648+409600],ram[Needed_Addr+649+409600],ram[Needed_Addr+1280+409600],ram[Needed_Addr+1281+409600],ram[Needed_Addr+1282+409600],ram[Needed_Addr+1283+409600],ram[Needed_Addr+1284+409600],ram[Needed_Addr+1285+409600],ram[Needed_Addr+1286+409600],ram[Needed_Addr+1287+409600],ram[Needed_Addr+1288+409600],ram[Needed_Addr+1289+409600],ram[Needed_Addr+819200],ram[Needed_Addr+1+819200],ram[Needed_Addr+2+819200],ram[Needed_Addr+3+819200],ram[Needed_Addr+4+819200],ram[Needed_Addr+5+819200],ram[Needed_Addr+6+819200],ram[Needed_Addr+7+819200],ram[Needed_Addr+8+819200],ram[Needed_Addr+9+819200],ram[Needed_Addr+640+819200],ram[Needed_Addr+641+819200],ram[Needed_Addr+642+819200],ram[Needed_Addr+643+819200],ram[Needed_Addr+644+819200],ram[Needed_Addr+645+819200],ram[Needed_Addr+646+819200],ram[Needed_Addr+647+819200],ram[Needed_Addr+648+819200],ram[Needed_Addr+649+819200],ram[Needed_Addr+1280+819200],ram[Needed_Addr+1281+819200],ram[Needed_Addr+1282+819200],ram[Needed_Addr+1283+819200],ram[Needed_Addr+1284+819200],ram[Needed_Addr+1285+819200],ram[Needed_Addr+1286+819200],ram[Needed_Addr+1287+819200],ram[Needed_Addr+1288+819200],ram[Needed_Addr+1289+819200]};
            end
            else if(we)
            begin
                ram[addr] <= data_in;
            end
    end
endmodule


