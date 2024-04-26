
module counter_9(clk, rst, count);
    input wire clk, rst;
    output reg [7:0] count;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 8'b0; 
    end else begin
        if (count == 8'd207) begin
              count <= 8'b0; 
        end else begin
            count <= count +8'd9; 
        end
    end
end

endmodule
