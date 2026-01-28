module MegaComparator (
    input  [2:0] a,
    input  [2:0] b,
    output       gt,
    output       ge,
    output       lt,
    output       le,
    output       eq,
    output       ne
);
    // please finish quickly - your manager

    assign eq = (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0] ~^ b[0]);
    assign ne = ~eq;
	assign gt = 
	(a[2] ~^ b[2]) ?
		(
			(a[1] ~^ b[1]) ?
				(a[0] & !b[0]):
				(a[1] & !b[1])
		) :
		(a[2] & !b[2]);
    assign ge = gt | eq;
    assign lt = ~ge;
    assign le = lt | eq;
	// assign lt = 
	// (a[2] ~^ b[2]) ?
	// 	(
	// 		(a[1] ~^ b[1]) ?
	// 			(!a[0] & b[0]):
	// 			(!a[1] & b[1])
	// 	) :
	// 	(!a[2] & b[2]);

endmodule
