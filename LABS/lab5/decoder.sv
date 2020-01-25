module decoder(
    binary_in ,  //  3 bit binary input
	en_i ,
    decoder_out  //  8-bit  out
    //enable        //  Enable for the decoder
);

input [2:0] binary_in;
input logic en_i;
//input  enable ;
output [7:0] decoder_out ;
//logic [7:0] decoder_out ;

always @ (binary_in) begin
    decoder_out = 0;
    if (en_i) begin
    case (binary_in)
        3'h0 : decoder_out = 8'h001;
        3'h1 : decoder_out = 8'h002;
        3'h2 : decoder_out = 8'h004;
        3'h3 : decoder_out = 8'h008;
        3'h4 : decoder_out = 8'h010;
        3'h5 : decoder_out = 8'h020;
        3'h6 : decoder_out = 8'h040;
        3'h7 : decoder_out = 8'h080;
        /*4'h8 : decoder_out = 16'h0100;
        4'h9 : decoder_out = 16'h0200;
        4'hA : decoder_out = 16'h0400;
        4'hB : decoder_out = 16'h0800;
        4'hC : decoder_out = 16'h1000;
        4'hD : decoder_out = 16'h2000;
        4'hE : decoder_out = 16'h4000;
        4'hF : decoder_out = 16'h8000;*/
    endcase
    end
	//else for led outputs to be off
	else begin
	    decoder_out = 8'h000;
	end
end
endmodule
