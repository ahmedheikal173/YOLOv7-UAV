`timescale 1ns / 1ps
module counter_640_Row(
    input clk,
    input reset,
    output reg [14:0] count,
    output reg finish,
    output reg zero_row,
    output reg final_row
);

always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 15'b0;
            finish <= 0;
            zero_row <= 0;
            final_row <= 0;
        end
    else
        begin
            if(count==0 && zero_row==0)
                begin
                    zero_row<=1;
                    count<=count;
                end
            else if (count==0 && zero_row==1) 
                begin
                    count<=count+1;
                    zero_row<=0;
                end
            else if(count==637 && final_row==0)
                begin
                    count<=count;
                    final_row<=1;
                end
            else if(count==637 && final_row==1)
                begin
                    finish <= 1'b1;  
                    count <= 15'b0;
                    final_row<=0;
                end
            else
                begin
                    count <= count + 1;
                    finish <= 1'b0;
                end                
        end
end
endmodule
