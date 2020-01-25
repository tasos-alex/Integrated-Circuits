module top_module(
    input logic clk,
	input logic rst_i,
	input logic [7:0] reqs_i,
	
	output logic [6:0] q_o_disp,
	output logic [6:0] cnt_o_disp,
	output logic [7:0] grants_o_disp,
	output logic [6:0] disp1,
	output logic [6:0] disp2);
	
	logic [2:0] q_o;
	logic any_grant_o;
	logic [2:0] grants_o;
	logic [3:0] cnt_o;
	// logic [6:0] disp1;
    // logic [6:0] disp2;

	
	
	
	rr_arbiter rr_arb(.clk (clk), .rst_i (rst_i), .reqs_i (reqs_i), .cnt_o (cnt_o), .any_grant_o (any_grant_o), .grants_o (grants_o), .q_o (q_o));
    decoder_wb_to_7seg #(.N(3)) dec1 (.weight_bin (q_o), .seg7 (q_o_disp));
    decoder_wb_to_7seg #(.N(4)) dec2 (.weight_bin (cnt_o), .seg7 (cnt_o_disp));
	decoder d(.binary_in (grants_o), .decoder_out (grants_o_disp), .en_i (any_grant_o));
	
	//unused displays should stay off all the time
	always begin
	    disp1 = 7'b1111111;
	    disp2 = 7'b1111111;
	end

endmodule

// TOGGLE SWITCHES[7:0] FOR REQUESTS[7:0]

// GREEN LEDS[7:0] FOR GRANTS[7:0]

// SEGMENT 0 FOR LOWEST REQUEST

// SEGMENT 2 FOR COUNTED REQUESTS

// TOGGLE SWITCH 9 FOR RESET

// PUSH BUTTON 0 FOR CLOCK OR AUTOMATED
