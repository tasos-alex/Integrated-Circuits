module rr_arbiter_tb;


   logic [7:0] reqs_i;
   logic [2:0] grants_o;
   logic clk, rst_i, any_grant_o;
   logic [3:0] cnt_o;
	logic [2:0] q_o;

	
	always begin
      clk = 0;
		#5ns;
		clk = 1;
		#5ns;
	end
	
	/*priority_reg
	my_pri_reg(
	);
	
	arbiter
	my_arb(
	);*/
	
	rr_arbiter
   my_rr_arb
	   (.clk (clk),
		 .rst_i (rst_i),
		 .reqs_i (reqs_i),
		 .grants_o (grants_o),
		 .any_grant_o (any_grant_o),
     .cnt_o (cnt_o),
		 .q_o (q_o));
		 
	initial begin
	   rst_i <= 1;
		@(posedge clk);
		rst_i <= 0;
		reqs_i <= 8'b00000000;
	   repeat(5) @(posedge clk);
	   @(posedge clk);
		
		@(posedge clk);
		rst_i <= 0;
		reqs_i <= 8'b00000001;
	   repeat(5) @(posedge clk);
	   @(posedge clk);
		
	   ////rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00000010;
	   repeat (5) @(posedge clk);	
		
		////rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00000100;
	   repeat (5) @(posedge clk);	
		
		////rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00001000;
	   repeat (5) @(posedge clk);

      ////rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00010000;
	   repeat (5) @(posedge clk);
		
		////rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00100000;
	   repeat (5) @(posedge clk);
		
		//rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b01000000;
	   repeat (5) @(posedge clk);
		
		//rst_i <= 1;
	   @(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b10000000;
	   repeat (5) @(posedge clk);
		
		@(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b10011100;
	   repeat (5) @(posedge clk);
		
		
		@(posedge clk);
	   rst_i <= 0;
	   reqs_i <= 8'b00000000;
	   repeat (5) @(posedge clk);
	
			
	end
	
endmodule
