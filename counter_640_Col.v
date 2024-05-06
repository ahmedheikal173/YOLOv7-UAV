`timescale 1ns / 1ps
module counter_640_Col(
    input clk,
    input reset,
    output reg [14:0] count,
    output reg finish,
    output reg zero_col,
    output reg final_col

);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 15'b0;
            finish <= 0;
            zero_col<=0;
            final_col<=0;
        end
    else
        begin
            if(count==0 && zero_col==0)
                begin
                    zero_col<=1;
                    count<=count;
                end
            else if (count==0 && zero_col==1) 
                begin
                    count<=count+1;
                    zero_col<=0;
                end
            else if(count==637 && final_col==0)
                begin
                    count<=count;
                    final_col<=1;
                end
            else if(count==637 && final_col==1)
                begin
                    finish <= 1'b1;  
                    count <= 15'b0;
                    final_col<=0;
                end
            else
                begin
                    count <= count + 1;
                    finish <= 1'b0;
                end    
        end
end
endmodule

                                                                          