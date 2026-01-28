// File Name: ReneeAction.v
// Map wheel action: Action[2] --> F, Action[1] --> R, Action[0] --> S
module ReneeAction(
	input [2:0] action,					// Wheel action
	output [6:0] SEG
	);

	assign SEG =
	(action[2] & !action[1] & !action[0]) ?		// 1 0 0
		7'b0001110 :
		(!action[2] & action[1] & !action[0]) ?	// 0 1 0
			7'b0101111 :
			7'b0010010;

endmodule // ReneeAction