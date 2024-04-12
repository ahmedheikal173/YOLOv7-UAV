`timescale 1ns / 1ps

module Single_Asynch_RAM(
    
    input [18:0]addr,
    
    input [7:0]data_in,
    input read_enable,
    input [9:0]counter_row,
    input [6:0]counter_col,
    input we,clk,finish,rst,
    output reg [7:0]data_out
    
    );
   
    
    reg [7:0]ram [50:0];
    
    
                  
    
    initial begin
        $readmemh("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/mem.txt",ram);
       end

    always @(posedge clk ) begin
        if (rst) begin
            data_out <= 0;
        
        end
        else if (clk) begin
                if(read_enable) begin
                        data_out <= ram[addr]; 
                end
        end
     end
endmodule


