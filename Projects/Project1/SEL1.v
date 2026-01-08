// Single-bit SEL module
module SEL1(s, a, b, f);
	input s;					// Selector control input
	input a, b;			// Selector data inputs
	output f;				// Selector data output

	// Bool expr is: (!S && A) || (S && B)

	wire ns, nsa, sb;
	not n0(ns, s);
	and a0(nsa, ns, a);
	and a1(sb, s, b);
	or o(f, nsa, sb);
	

endmodule // SEL1