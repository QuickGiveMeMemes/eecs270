// File Name: SEL1.v
// Structural 1-bit 2-way selector
module SEL1(
	input s,					// Selector control input
	input a, b,			// Selector data inputs
	output f				 // Selector data output
	);

	// Bool expr is: (!S && A) || (S && B)
	// S = 0 -> A, S = 1 -> B

	wire ns, nsa, sb;
	not n0(ns, s);
	and a0(nsa, ns, a);
	and a1(sb, s, b);
	or o(f, nsa, sb);
	
endmodule // SEL1