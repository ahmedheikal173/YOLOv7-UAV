
module conv(img,flt,out);

parameter N=5;
parameter C=1;
parameter F=3;
parameter S=1;
parameter P=0;
parameter bias=0;
parameter indatawidth=8;
parameter outdatawidth=8;


input [indatawidth-1:0] img [N-1:0][N-1:0][C-1:0];
input [indatawidth-1:0] flt [F-1:0][F-1:0][C-1:0];

output reg [outdatawidth-1:0] out [ ( N - F + 2*P ) / S + 1 - 1 :0] [ ( N - F + 2*P ) / S + 1 - 1 :0];

//reg [] iO;

integer iN,jN,k,iF,jF, iO,jO;

reg [indatawidth-1:0] temp; //8bit number

always@(*) begin

	jO=0;
	for(jN=0  ;  jN<N+2*P-F+1 ;  jN=jN+S) begin
		iO=0;
		for(iN=0  ;  iN<N+2*P-F+1 ;  iN=iN+S) begin


			temp=0;
			for(k=0  ;  k<C  ;  k=k+1) begin
					for(jF=0  ;  jF<F  ;  jF=jF+1) begin
						for(iF=0  ;  iF<F  ;  iF=iF+1) begin
							temp  = temp +  flt[iF][jF][k] * img[iN+iF][jN+jF][k];
						end
					end
			end
			out[iO][jO]= temp + bias;
			iO=iO+1;
		end
		jO=jO+1;
	end
end

endmodule
