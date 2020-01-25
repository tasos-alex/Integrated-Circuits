module arbiter(
    //input logic clk;
    input logic [2:0] lowp_i,
	 input logic [7:0] reqs_i,
	 
	 output logic any_grant_o,
	 output logic [2:0] grants_o,
	 output logic [3:0] cnt_o 
);

//logic [7:0] highp_oh;
logic [2:0] high_req;
//logic [7:0] grants_oh;
int i;
int j;


always_comb begin
	grants_o = 3'b000;
	cnt_o = 4'b0000;
    high_req = lowp_i+ 3'b001;
    //grants_oh = reqs_i & highp_oh;
	for (i=0; i<8; i=i+1) begin
	    if (reqs_i[high_req]) begin
    	    high_req = high_req;
	        grants_o = high_req;
			  break;
	    end
		else begin
		    high_req = high_req+3'b001;
			grants_o = grants_o;
		end
	end
	
	for (j=0; j<8; j=j+1) begin
	    if (reqs_i[j]) cnt_o = cnt_o+1'b1;
		else cnt_o = cnt_o;
	end
	if (cnt_o) any_grant_o = 1'b1;
	else any_grant_o = 1'b0;
end

endmodule
