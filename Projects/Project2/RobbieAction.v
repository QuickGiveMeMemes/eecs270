// File Name: RobbieAction.v
// Map wheel action: 1 --> F, 0 --> S
module RobbieAction(
	input action, 
	output [6:0] SEG
	);

	// wire S[6:0];
	// wire F[6:0];
	
	// 0010010 (S)
	// assign S[6] = 0;
	// assign S[5] = 0;
	// assign S[4] = 1;
	// assign S[3] = 0;
	// assign S[2] = 0;
	// assign S[1] = 1;
	// assign S[0] = 0;
	// wire[6:0] S;
	// assign S[6:0] = 7'b0010010;

	// // 0001110 (F)
	// // assign F[6] = 0;
	// // assign F[5] = 0;
	// // assign F[4] = 1;
	// // assign F[3] = 0;
	// // assign F[2] = 0;
	// // assign F[1] = 1;
	// // assign F[0] = 0;
	// wire[6:0] F;
	// assign F[6:0] = 7'b0001110;

	SEL1 s1[6:0](.s(action), .a(7'b0010010), .b(7'b0001110), .f(SEG[6:0]));


endmodule // RobbieAction