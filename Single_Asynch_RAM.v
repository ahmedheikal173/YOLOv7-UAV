`timescale 1ns / 1ps

module Single_Asynch_RAM(
    input [5:0]addr,
    input [31:0]data_in,
    input need_Data,
    input [5:0]Needed_Addr,
    input we,clk,
    output reg [95:0]data_out
    );
    reg [7:0]ram [63:0];
    
    initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram);
    end

    
    always @(posedge clk )
    begin
        if(need_Data)
        begin
            data_out <= {ram[Needed_Addr],ram[Needed_Addr+1],ram[Needed_Addr+2],ram[Needed_Addr+3],ram[Needed_Addr+6],ram[Needed_Addr+7],ram[Needed_Addr+8],ram[Needed_Addr+9],ram[Needed_Addr+12],ram[Needed_Addr+13],ram[Needed_Addr+14],ram[Needed_Addr+15]};
        end
        if(we)
        begin
            ram[addr] <= data_in[31:16];
            ram[addr+1] <= data_in[15:0];
        end
    end
endmodule


