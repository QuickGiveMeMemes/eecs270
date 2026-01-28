// File Name: Renee.v
module Renee(
	input [2:0] ls, rs,		// Left and right sensors
	input lb, rb, fb, bb,	// Left, front, back, and right bumpers
	output [2:0] lwa, rwa	// Left and right wheel actions
												// One-hot: 100 -> F, 010 -> R, 001 -> S
);
	wire [2:0] bumper_cond_l, bumper_cond_r;
	assign bumper_cond_l = 
	(!rb | rb & !fb & !bb) ?
		3'b001 :			// Case S: rb' + rb * fb' * bb'
		(rb & fb & !bb) ?
			3'b100 :		// Case F
			3'b010;			// Case R
	assign bumper_cond_r = 
	(!lb | lb & !fb & !bb) ?
		3'b001 :
		(lb & fb & !bb) ?
			3'b100 :
			3'b010;

	wire ler, lgr, llr;								// Comparison
	unsignedComp c(.X(ls), .Y(rs), .XeqY(ler), .XgtY(lgr), .XltY(llr));

	assign lwa = 
	((lb ~^ rb) & (rb ~^ fb) & (fb ~^ bb)) ?		// If no obstruction or beacon malfunction use beacon logic
		(
			ler ?									// If beacons are equal special logic
				(
					(ls[2] & ls[1] & ls[0]) ?		// If weakest signal (111) stop, else forward
						3'b001 :
						3'b100
				) :									// If they are not equal
				(
					lgr ?							// Left signal higher (weaker) -> go right else go left
						3'b100 : 	// Right
						3'b001		// Left
				)
		) :
		bumper_cond_l;

	assign rwa = 
	((lb ~^ rb) & (rb ~^ fb) & (fb ~^ bb)) ?		// If no obstruction or beacon malfunction use beacon logic
		(
			ler ?									// If beacons are equal special logic
				(
					(ls[2] & ls[1] & ls[0]) ?		// If weakest signal (111) stop, else forward
						3'b001 :
						3'b100
				) :									// If they are not equal
				(
					lgr ?							// Left signal higher (weaker) -> go right else go left
						3'b001 :	// Right
						3'b100		// Left
				)
		) :
		bumper_cond_r;
	
endmodule // Renee