module tictactoe_tb;
logic[8:0] x;
logic [8:0] o;
logic error;
logic full;
logic winX;
logic winO;
logic noWin;

tictactoe 

tictactoe_awesome (
.x (x),
.o (o),
.error (error),
.full (full),
.winX (winX),
.winO (winO),
.noWin (noWin));

initial begin 
x<= 9'b000000000;
o<= 9'b000000000;

//winX
#5ns x = 9'b000000111;
#5ns o = 9'b010100000;

//win0
#5ns x = 9'b000000110;
#5ns o = 9'b100010001;

//error
#5ns x = 9'b000000110;
#5ns o = 9'b000000011;

//noWin 
#5ns x = 9'b101100011;
#5ns o = 9'b010011100;

end 

endmodule 
