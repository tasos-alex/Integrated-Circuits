module decoder_wb_to_7seg #(
    parameter N)

   (input logic [N-1:0] weight_bin,
	output logic [6:0] seg7);
	
	always @ (weight_bin) begin
        seg7 = 0;
		case (weight_bin)
		3'b000 | 4'b0000: seg7 = 7'b1000000;//1111111 b0000000
        3'b001 | 4'b0001: seg7 = 7'b1111001;//1111001 b0000110
        3'b010 | 4'b0010: seg7 = 7'b0100100;//0100100 b1011011
        3'b011 | 4'b0011: seg7 = 7'b0110000;//0110000 b1001111
        3'b100 | 4'b0100: seg7 = 7'b0011001;//0011001 b1100110
        3'b101 | 4'b0101: seg7 = 7'b0010010;//0010010 b1101101
        3'b110 | 4'b0110: seg7 = 7'b0000010;//0000010 b1111101
        3'b111 | 4'b0111: seg7 = 7'b1111000;//1111000 b0000111
        //4'b0000 : seg7 = 7'b0000000;
        //4'b0001 : seg7 = 7'b0000110;
        //4'b0010 : seg7 = 7'b1011011;
        //4'b0011 : seg7 = 7'b1001111;
        //4'b0100 : seg7 = 7'b1100110;
        //4'b0101 : seg7 = 7'b1101101;
        //4'b0110 : seg7 = 7'b1111101;
        //4'b0111 : seg7 = 7'b0000111;
		4'b1000: seg7 = 7'b0000000;
		  default : seg7 = 7'b1111111;
    endcase
end
    
endmodule