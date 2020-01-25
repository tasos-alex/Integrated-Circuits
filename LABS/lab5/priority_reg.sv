module priority_reg(
    input logic clk,
	 input logic rst_i,
	 input logic en_i,
	 input logic [2:0] d_i,
	 
	 output logic [2:0] q_o
);

//logic [2:0] lpweight;

always_ff@(negedge clk) begin
    if (rst_i) q_o <= 3'b111;
	 else begin
	     if (en_i) q_o <= d_i;
        
	 end 
end

//assign q_o = lpweight
endmodule
