module CBS_File_TB;

reg clk,reset;

wire [18:0] convolution_result;
wire [14:0] counter_Row_output;
wire [14:0] counter_Col_output;

wire clk6;

CBS_File inst(
    .clk(clk),
    .reset(reset),
    .convolution_result(convolution_result),
    .counter_Row_output(counter_Row_output),
    .counter_Col_output(counter_Col_output),
    .clk6(clk6)
);



initial begin
  clk=0;
     forever #50 clk = ~clk;  
end

initial begin
  reset = 1;
  #100;
  reset = 0;
end


integer file,i;
initial begin
  file = $fopen("C:/Users/hp/Desktop/GP_YOLO_2018/GP_Yolo_2018/GP_Yolo_2018.srcs/sources_1/new/Result.txt", "w");

  @(negedge reset); //Wait for reset to be released
  @(posedge clk);   //Wait for fisrt clock out of reset

  for (i = 0; i<50000; i=i+1) begin
    @(posedge clk6);
    $fwrite(file,"%d\n",convolution_result);
  end

  $fclose(file);  
end

endmodule
