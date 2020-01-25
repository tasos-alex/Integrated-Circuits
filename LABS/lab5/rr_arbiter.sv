module rr_arbiter(
    input logic clk,
    input logic rst_i,
	 input logic [7:0] reqs_i,
	 
	 output logic [3:0] cnt_o,
	 output logic any_grant_o,
	 output logic [2:0] grants_o,
	 output logic [2:0] q_o
);

//logic [2:0] lowp;

arbiter arb (.lowp_i (q_o), .reqs_i (reqs_i), .any_grant_o (any_grant_o), .grants_o (grants_o), .cnt_o (cnt_o));
priority_reg pr (.clk (clk), .rst_i (rst_i), .en_i (any_grant_o), .d_i (grants_o), .q_o (q_o));

endmodule
