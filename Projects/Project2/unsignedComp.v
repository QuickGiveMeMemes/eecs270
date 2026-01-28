// File Name: unsignedComp.v
// 3-bit unigned comparator
module unsignedComp(
	input [2:0] X, Y,
	output XeqY, XgtY, XltY
	);

	assign XeqY = (X[2] ~^ Y[2]) & (X[1] ~^ Y[1]) & (X[0] ~^ Y[0]);
	assign XgtY = 
	(X[2] ~^ Y[2]) ?
		(
			(X[1] ~^ Y[1]) ?
				(X[0] & !Y[0]):
				(X[1] & !Y[1])
		) :
		(X[2] & !Y[2]);
	assign XltY = 
	(X[2] ~^ Y[2]) ?
		(
			(X[1] ~^ Y[1]) ?
				(!X[0] & Y[0]):
				(!X[1] & Y[1])
		) :
		(!X[2] & Y[2]);

endmodule// unsignedComp