module EDA(CLK,RST,DIN,DOUT);
    input CLK,RST;
    input[7:0] DIN;
    output DOUT;
    reg[7:0] DIN_r;
    reg dins_r;
    wire dins;
    reg[2:0] cnt8;
    always@(posedge CLK or posedge RST)  begin
        if(RST) cnt8<=3'd0;
        else cnt8<=cnt8+1'b1;
    end
    always@(posedge CLK or posedge RST)  begin
        if(RST) begin DIN_r[7:0]<=3'd0;dins_r<=1'b0;end
        else if(cnt8==3'd0) begin dins_r<=DIN[7];DIN_r[7:1]<=DIN[6:0];end
        else begin dins_r<=DIN_r[7];DIN_r[7:1]<=DIN_r[6:0];end
        end
        assign dins=dins_r;
        SCHK X0(.CLK(CLK), .DIN(dins), .RST(RST), .SOUT(DOUT));
    endmodule 