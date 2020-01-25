module encoder(
    output reg  [2:0]  binary_out , //  3 bit binary Output
    input  wire [7:0] encoder_in  //  8-bit Input
    //input  wire        enable       //  Enable for the encoder
); 

always_comb begin 
    binary_out = 0; 
    //if (enable) begin
    if (encoder_in == 8'h002) begin
        binary_out = 1;
    end
    if (encoder_in == 8'h004) begin 
        binary_out = 2; 
    end
	if (encoder_in == 8'h008) begin 
        binary_out = 3; 
    end
	if (encoder_in == 8'h010) begin 
        binary_out = 4; 
    end
	if (encoder_in == 8'h020) begin 
        binary_out = 5; 
    end  
	if (encoder_in == 8'h040) begin 
        binary_out = 6; 
    end  
	if (encoder_in == 8'h080) begin 
        binary_out = 7; 
    end  /*if (encoder_in == 16'h0100) begin 
 binary_out = 8; 
   end  if (encoder_in == 16'h0200) begin 
 binary_out = 9; 
  end if (encoder_in == 16'h0400) begin 
binary_out = 10; 
  end  if (encoder_in == 16'h0800) begin 
   binary_out = 11; 
 end  if (encoder_in == 16'h1000) begin
    binary_out = 12; 
   end  if (encoder_in == 16'h2000) begin 
  binary_out = 13;
  end  if (encoder_in == 16'h4000) begin 
  binary_out = 14; 
end if (encoder_in == 16'h8000) begin 	
       binary_out = 15; 
end*/
 	//end
end
endmodule
