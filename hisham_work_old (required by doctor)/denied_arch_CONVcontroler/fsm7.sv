//module conv_FSM(img,filts,filtindex, mult_Loc_in,mult_Loc_out, clk,rstn,en,     outdatimg,outdatflt,OUT_mult_Loc);
module conv_FSM(img,filts,filtindex, mult_Loc_in, clk,rstn,en,     outdatimg,outdatflt,OUT_mult_Loc);
//module conv_FSM(img,filts,filtindex, S,N,K, mult_Loc_in,mult_Loc_out,free_mult_no, clk,rstn,en,     outdatimg,outdatflt);
//moore fsm

//parameters
parameter IDLE = 3'b000;
parameter START = 3'b001;
parameter FLT_ASS = 3'b010; // momken ashelha mesh mehtagha separate keda keda 7atet-ha fel mult_ass bardo
parameter MULT_ASS = 3'b011;
parameter EXECUTE_full = 3'b100;
parameter EXECUTE_partial = 3'b101;
parameter READY = 3'b110;

parameter N = 32;
parameter F = 3;
parameter NF = 3;
parameter K=3;
parameter P=1;
parameter S=1;
parameter Nmult = 64; parameter Mmult = 6;
parameter W=64;


//input ports
//input [1:0] S,K; // ya2ema 1 aw 3
//input [63:0] N; // mesh aref a3melo kam lessa

input [Nmult-1:0] mult_Loc_in; // 0 free, 1 occupied
//output reg [Nmult-1:0] mult_Loc_out; // 0 free, 1 occupied
//output reg [Mmult-1:0] OUT_mult_Loc [Nmult-1:0];
output reg [Mmult-1:0] OUT_mult_Loc [Nmult-1:0];
reg [Mmult-1:0] free_mult_no;
input [NF-1:0] filtindex;
input [W-1:0] filts [F-1:0][F-1:0][K-1:0];
input [W-1:0] img [N-1:0][N-1:0][K-1:0];
//input [W-1:0] filts [F*F*K-1:0];
//input [W-1:0] img [N*N*K-1:0];
input clk,rstn,en;
reg mult_ass_done; // di lazem a5aleeha equal zero fe states we teb2a 1 fe a5er state el MULT_ASS


//output ports
output reg [W-1:0] outdatimg [N-1:0][N-1:0][K-1:0];
output reg [W-1:0] outdatflt [F-1:0][F-1:0][K-1:0];

//reg [need_mults*need_mults-1:0] multcount;

// state regs
integer out_size,need_mults,i,j,k,iflt,jflt,kflt, ii,jj;
reg [2:0] cs,ns;
reg [Mmult-1:0] multcount;

assign out_size = (N-F+2*P)/S +1;
assign need_mults = out_size*out_size*NF;
// next state logic
always@(*) begin
    case (cs)
        IDLE:
            begin
            
            
            end
        START:
            begin
                if (!en)
                    ns=IDLE;
                if (!mult_ass_done)
                    ns=MULT_ASS;

            end
        FLT_ASS: // momken ashelha mesh mehtagha separate keda keda 7atet-ha fel mult_ass bardo
            begin
                if (!en)
                    ns=IDLE;

            end
        MULT_ASS://TODO:///////////////////////////////////////////////////////////////////
            begin
                // if (!en)
                //     ns=IDLE;
                // if (free_mult_no>=need_mults) begin
                //     // select free mults (FULL)
                //     for(k=0; k<K; k=k+1) begin
                //         for(j=0; j<N; j=j+S) begin
                //             for(i=0; i<N; i=i+S) begin
                //                 for (jflt=0,jflt<F,jflt=jflt+1)begin
                //                     for(iflt=0,iflt<F,iflt=iflt+1) begin
                //                         outdatimg = 
                //                     end
                //                 end
                //             end
                //         end
                //     end
                    
                // end
                // else begin
                //     //select free mults (PARTIAL)
                // end
            end
        EXECUTE_full:
            begin
                if (!en)
                    ns=IDLE;
                //for () begin


                //end

            end
        EXECUTE_partial:
            begin
                if (!en)
                    ns=IDLE;

            end
        READY:
            begin
                if (!en)
                    ns=IDLE;
                
            end
        default:
            begin
                ns=IDLE;
            end
    endcase    
end





///////////////////////////////

// state memory
always @ (posedge clk, negedge rstn) begin
    if (!rstn) begin
        cs <= IDLE;
    end
    else begin
        cs<=ns;
    end
end
////////////////////////////////


// output logic
always @(*) begin
    // for (ii=0;ii<Nmult;ii=ii+1) begin
    //     if (mult_Loc_in[ii]==0) begin
    //         free_mult_no=free_mult_no+1;
    //     end
    // end
    if (cs==IDLE) begin
        multcount=0;
        //free_mult_no=0;
    end
    else if (cs==START) begin
    end
    else if (cs==FLT_ASS) begin // momken ashelha mesh mehtagha separate keda keda 7atet-ha fel mult_ass bardo
    end
    else if (cs==MULT_ASS) begin
        // select free mults (FULL)
        //if (free_mult_no>=need_mults) begin
            jj=0;
          //  mult_Loc_out=0;
            for (ii=0;ii<Nmult;ii=ii+1) begin
                if (mult_Loc_in[ii]==0) begin
                   // mult_Loc_out[ii]=1;//!mult_Loc_in[ii];
                    free_mult_no=free_mult_no+1;
                 //jj=jj+1;
                end
            end
            while (multcount<need_mults) begin ///me7tag ashoof law el free a2al mel need
                for(k=0; k<K; k=k+1) begin
                    for(j=0; j<N; j=j+S) begin
                        for(i=0; i<N; i=i+S) begin
                            // for (ii=0;ii<Nmult;ii=ii+1) begin
                            //     if (mult_Loc_in==0) begin
                            //     // mult_Loc_out[jj]=mult_Loc_in[ii];
                            //     // jj=jj+1;
                            //     mult_Loc_out[ii]=!mult_Loc_in[ii];
                            //     jj=jj+1;
                            //     end
                            // end
                            multcount=multcount+1;

                    //---------------------------------------------------------------------------------------------------------------------------------------------------------    
                            if (free_mult_no<need_mults) begin
                                for (ii=0;ii<Nmult;ii=ii+1) begin
                                    if (mult_Loc_in[ii]==0) begin
                                        OUT_mult_Loc[jj]=ii;
                                        jj=jj+1;
                                        //for(k=0; k<K; k=k+1) begin
                                            for(jflt=0;jflt<F;jflt=jflt+1) begin
                                                for (iflt=0;iflt<F;iflt=iflt+1) begin
                                                    outdatimg[i][j][k] = img [i][j][k];
                                                    outdatflt[iflt][jflt][k] = filts[iflt][jflt][k];//TODO:///////////////////////////////////
                                                end
                                            end
                                        //end
                                    end
                                end
                                break;
                            end
                            else begin //if(free_mult_no>=need_mults) begin
                                for (ii=0;ii<Nmult;ii=ii+1) begin
                                    if (mult_Loc_in[ii]==0) begin
                                        OUT_mult_Loc[jj]=ii;
                                        jj=jj+1;
                                        //for(k=0; k<K; k=k+1) begin
                                            for(jflt=0;jflt<F;jflt=jflt+1) begin
                                                for (iflt=0;iflt<F;iflt=iflt+1) begin
                                                    outdatimg[i][j][k] = img [i][j][k];
                                                    outdatflt[iflt][jflt][k] = filts[iflt][jflt][k];//TODO:///////////////////////////////////
                                                    if(multcount==need_mults) begin
                                                        break;
                                                    end
                                                end
                                            end
                                        //end
                                    end
                                end
                                break;
                            end

                            //---------------------------------------------------------------------------------------------------------------------------------------------------------    
                        end
                    end
                end
            end
            mult_ass_done=1;
        //end
    end
    else if (cs==EXECUTE_full) begin
    end
    else if (cs==EXECUTE_partial) begin
    end
    else begin //if (cs==READY) begin
    end
end


//////////////////////////////////



endmodule



