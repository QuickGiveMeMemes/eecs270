// FiLe Name: Project2B.v (Renee)
module Project2B(
	input	[6:0]	SW,
	input	[3:0]	KEY,
	output	[6:0] HEX1, HEX0
	);
	wire	[2:0] lwa, rwa; 	

	Renee r(.ls(SW[6:4]), .rs(SW[2:0]), .lb(KEY[3]), .rb(KEY[2]), .fb(KEY[1]), .bb(KEY[0]), .lwa(lwa), .rwa(rwa));
	ReneeAction la(.SEG(HEX1), .action(lwa));
	ReneeAction ra(.SEG(HEX0), .action(rwa));
	
endmodule // Project2B
