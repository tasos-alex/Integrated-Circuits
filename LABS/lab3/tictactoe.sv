module tictactoe (
input logic [8:0] x,
input logic [8:0] o,
output logic error,
output logic full,
output logic winX,
output logic winO,
output logic noWin);


logic [8:0] er;
logic [8:0] fu;


  //error comb logic
  always_comb begin
    er = x&o;
    if (er != 9'b000000000) error = 1;
    else error = 0;
  end
  
  //full comb logic
  always_comb begin
    fu = x|o;
    if (fu == 9'b111111111) full = 1;
	 else full = 0;
  end
  
  //winX comb logic
  always_comb begin
    if (x==9'b000000111 | x==9'b000111000 | x==9'b111000000 | x==9'b100010001 | x==9'b001010100) winX = 1;
	 else winX = 0;
  end
  
  //winO comb logic
  always_comb begin
    if (o==9'b000000111 | o==9'b000111000 | o==9'b111000000 | o==9'b100010001 | o==9'b001010100) winO = 1;
	 else winO = 0;
  end
  
  //noWin comb logic
  always_comb begin
    noWin = !(winO^winX);
  end

endmodule
