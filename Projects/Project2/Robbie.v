// File Name: Robbie.v
module Robbie(
	input ls, fs, rs,				// Left, forward, and right sensors
	output lwa, rwa			// Left and right wheel actuators
	);

	// Logic: 
	// rwa = ls + fs
	// lwa = rs + fs

	or or1(rwa, ls, fs);
	or or2(lwa, rs, fs);
	
endmodule // Robbie