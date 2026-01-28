// FiLe Name:Project2A.v (Robbie)
module Project2A(
	input [2:0] SW,
	output [6:0] HEX1, HEX0
	);

	wire lwa, rwa;
	Robbie r(.ls(SW[2]), .fs(SW[1]), .rs(SW[0]), .lwa(lwa), .rwa(rwa));
	RobbieAction lw(.action(lwa), .SEG(HEX1));
	RobbieAction rw(.action(rwa), .SEG(HEX0));
	
endmodule // Project2A