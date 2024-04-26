`timescale 1ns / 1ps
module counter_640(
    input clk,
    input reset,
    output reg [14:0] count,
    output reg finish
);
reg counter_2;
always @(posedge clk or posedge reset ) 
begin
    if(reset) 
        begin
            count <= 15'b0;
            finish <= 0;
            counter_2<=0;
        end
    else
        begin
            if(count == 638)
            begin
                if(counter_2==0)
                begin
                    counter_2<=1;
                end
                else if(counter_2==1)
                begin
                    finish <= 1'b1;
                end    
                count <= 15'b0;
            end
            else
            begin
                count <= count + 1;
                finish <= 1'b0;
            end
                
        end
end
endmodule
