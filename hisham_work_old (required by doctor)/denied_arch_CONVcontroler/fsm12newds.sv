//module conv_FSM(img,filts,filtindex, mult_Loc_in,mult_Loc_out, clk,rstn,en,     outdatimg,outdatflt,OUT_mult_Loc);
module conv_FSM(conv_done_partial,conv_done_full, img,filts,filtindex,mult_en,convindex, mult_Loc_in, clk,rstn,en, multcount,    outdatimg,outdatflt,OUT_mult_Loc,result_ready);
//module conv_FSM(img,filts,filtindex, S,N,K, mult_Loc_in,mult_Loc_out,free_mult_no, clk,rstn,en,     outdatimg,outdatflt);
//moore fsm


//parameters
localparam IDLE = 3'b000;
//localparam START = 3'b001; // so far momken ashelha waseeb el idle bas
//localparam LOAD = 3'b010; // momken ashelha mesh mehtagha separate keda keda 7atet-ha fel mult_ass bardo
localparam MULT_ASS = 3'b001;
localparam EXECUTE_full = 3'b010;
localparam EXECUTE_partial = 3'b011;
localparam READY = 3'b100;
localparam WAIT = 3'b101; // momkmlen ashekha wa5ally wel mult ass yerga3 le nafso directly

parameter N = 32;
parameter F = 3;
parameter NF = 3;
parameter K=3;
parameter P=0;
parameter S=1;
parameter Nmult = 64; parameter Mmult = 6;
parameter W=24;

parameter MaxConvNum=16588800;
parameter Maxconvindexbits=24; // n5aleeha log2(K) 

parameter xxx = 24;

//input ports
//input [1:0] S,K; // ya2ema 1 aw 3
//input [63:0] N; // mesh aref a3melo kam lessa

input [Nmult-1:0] mult_Loc_in; // 0 free, 1 occupied
//output reg [Nmult-1:0] mult_Loc_out; // 0 free, 1 occupied
//output reg [Mmult-1:0] OUT_mult_Loc [Nmult-1:0];
output reg [Mmult-1:0] OUT_mult_Loc [Nmult-1:0];
reg [Mmult-1:0] free_mult_no;
input [NF-1:0] filtindex;

// input [W-1:0] filts [F-1:0][F-1:0][K-1:0];
// input [W-1:0] img [N-1:0][N-1:0][K-1:0];

input [F-1:0][F-1:0][W-1:0] filts [K];
input [N-1:0][N-1:0][W-1:0] img [K];


input conv_done_partial,conv_done_full; // from multipliers

input clk,rstn,en;
reg go_exec_mult_ass_done_full;  // di lazem a5aleeha equal zero fe states we teb2a 1 fe a5er state el MULT_ASS
reg go_exec_mult_ass_done_partial;
//reg go_exec;

//output ports

//output reg [N-F+1-1:0][N-F+1-1:0][W-1:0] outdatimg [K];
output reg [N-F+1-1:0][F-1:0][F-1:0][W-1:0] outdatimg [K];
output reg [F-1:0][F-1:0][W-1:0] outdatflt [K];
// output reg [W-1:0] outdatimg [N-F+1-1:0][F-1:0][F-1:0][K-1:0];
// output reg [W-1:0] outdatflt [F-1:0][F-1:0][K-1:0];
//output reg [Maxconvindexbits-1:0] convindex [(((N-F+2P)/S)+1)*(((N-F+2P)/S)+1)*K-1:0];
//output reg [Maxconvindexbits-1:0] convindex [MaxConvNum-1:0];
//output reg [Maxconvindexbits-1:0] convindex [K-1:0];
//output reg [Mmult-1:0] convindex [Nmult-1:0];
output reg [Maxconvindexbits-1:0] convindex [Nmult-1:0];

output reg result_ready;
// state regs
//integer out_size;
//integer need_mults;
reg [xxx-1:0] need_mults;

integer iflt,jflt,kflt, ii,jj,iii,jjj,kkk, kk;

integer i,j,k;
//integer convno;
reg [N-1:0] ireg,jreg;   reg [K-1:0] kreg;///////////////

reg [2:0] cs,ns;
output reg [Mmult-1:0] multcount;
output reg mult_en;



//assign out_size = (N-F+2*P)/S +1;
//assign need_mults = out_size*out_size*NF;
// next state logic
always@(*) begin
    case (cs)
        IDLE:
            begin
                if (!en || go_exec_mult_ass_done_full) begin //if (!en) begin
                    ns=IDLE;
                end
                else begin
                    ns=MULT_ASS;
                end           
            end
        MULT_ASS://TODO:///////////////////////////////////////////////////////////////////
            begin
                if(!en) begin
                    ns=IDLE;
                end
                else if(go_exec_mult_ass_done_full) begin
                    ns=EXECUTE_full;
                end
                else if (go_exec_mult_ass_done_partial) begin
                    ns=EXECUTE_partial;
                end
                else begin //if(!go_exec) begin
                    ns=WAIT;
                end
            end
        WAIT:
            begin
                if (!en) begin
                    ns=IDLE;
                end
                else begin
                    ns=MULT_ASS;
                end
            end
        EXECUTE_partial:
            begin
                if (!en) begin
                    ns=IDLE;
                end
                else if (conv_done_partial && !conv_done_full) begin
                    ns=MULT_ASS;
                end
            end
        EXECUTE_full:
            begin
                if (!en) begin
                    ns=IDLE;
                end
                else if (conv_done_full) begin
                    ns=READY;
                end
            end
        READY:
            begin
                if (!en) begin
                    ns=IDLE;
                end
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



 //need_mults = out_size*out_size*NF;
 need_mults = ((N-F+2*P)/S +1)*((N-F+2*P)/S +1)*NF;

    if (cs==IDLE) begin
        multcount=0;
                            ireg=0;
                            jreg=0;
                            kreg=0;
        free_mult_no=0;
        go_exec_mult_ass_done_full=0;
        go_exec_mult_ass_done_partial=0;
        
        mult_en=0; 
        result_ready=0;
        //convno=0;
        for (jj=0;jj<Nmult;jj=jj+1) begin
            convindex[jj]=0;
        end
        // OUT_mult_Loc=Z;
        // outdatflt=Z;
        // outdatimg=Z;
    end
    else if (cs==MULT_ASS) begin
        mult_en=0; 
        result_ready=0;
        //go_exec mawgood fel a5er hena
        // select free mults (FULL)
        //if (free_mult_no>=need_mults) begin
            jj=0; kk=0;
          //  mult_Loc_out=0;
            for (ii=0;ii<Nmult;ii=ii+1) begin
                if (mult_Loc_in[ii]==0) begin
                   // mult_Loc_out[ii]=1;//!mult_Loc_in[ii];
                    free_mult_no=free_mult_no+1;
                 //jj=jj+1;
                end
            end
            while (multcount<need_mults) begin ///me7tag ashoof law el free a2al mel need
                for(k=kreg; k<K; k=k+1) begin
                    kreg=k;

                    convindex[kk]=k;   //convindex[kk]=kreg;
                    k=kk+1;
                    for(j=jreg; j<N-F+1; j=j+S) begin
                        jreg=j;
                        for(i=ireg; i<N-F+1; i=i+S) begin
                            ireg=i;
                            //convindex[convno]=convno;
                            //for (kkk=0;kkk<K;kkk=kkk+1) begin
                                for (jjj=0;jjj<F;jjj=jjj+1) begin
                                    for (iii=0;iii<F;iii=iii+1) begin
                                        //outdatimg[multcount][iii][jjj][k]=img[i+iii][j+jjj][k];
                                        outdatimg[k][multcount][iii][jjj]=img[k][i+iii][j+jjj];
                                    end
                                end
                            //end
                            
                            if (free_mult_no!=0) begin
                                multcount=multcount+1;
                            end
                            else begin
                                break;
                            end

                    //---------------------------------------------------------------------------------------------------------------------------------------------------------    
                            if (free_mult_no<need_mults) begin
                                for (ii=0;ii<Nmult;ii=ii+1) begin
                                    if (mult_Loc_in[ii]==0) begin
                                        OUT_mult_Loc[jj]=ii;
                                        jj=jj+1;
                                        //for(k=0; k<K; k=k+1) begin
                                            for(jflt=0;jflt<F;jflt=jflt+1) begin
                                                for (iflt=0;iflt<F;iflt=iflt+1) begin
                                                    //outdatimg[i][j][k] = img [i][j][k];
                                                    //outdatflt[iflt][jflt][k] = filts[iflt][jflt][k];//TODO:///////////////////////////////////
                                                    outdatflt[k][iflt][jflt] = filts[k][iflt][jflt];
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
                                                    //outdatimg[i][j][k] = img [i][j][k];
                                                    //outdatflt[iflt][jflt][k] = filts[iflt][jflt][k];//TODO:///////////////////////////////////
                                                    outdatflt[k][iflt][jflt] = filts[k][iflt][jflt];
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

            
            //mult_en=0;
            if (multcount==need_mults) begin    
                go_exec_mult_ass_done_full=1;
                go_exec_mult_ass_done_partial=0;
            end
            else if (multcount==0) begin
                go_exec_mult_ass_done_full=0;
                go_exec_mult_ass_done_partial=0;
            end
            else begin
                go_exec_mult_ass_done_full=0;
                go_exec_mult_ass_done_partial=1;
            end

        //end
    end
    else if (cs==WAIT) begin
        go_exec_mult_ass_done_full=0;
        go_exec_mult_ass_done_partial=0;
        mult_en=1;
        result_ready=0;
    end
    else if (cs==EXECUTE_partial) begin
        go_exec_mult_ass_done_full=0;
        go_exec_mult_ass_done_partial=0;
        mult_en=1; 
        result_ready=0;     
    end
    else if (cs==EXECUTE_full) begin

        go_exec_mult_ass_done_full=0;
        go_exec_mult_ass_done_partial=0;
        mult_en=1;    
        result_ready=0;
    end
    else begin //if (cs==READY) begin

        go_exec_mult_ass_done_full=0;
        go_exec_mult_ass_done_partial=0;
        mult_en=0;
        result_ready=1;    
    end
end


//////////////////////////////////



endmodule








