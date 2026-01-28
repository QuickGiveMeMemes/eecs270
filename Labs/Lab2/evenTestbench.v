
`timescale 1ns / 1ns
module evenTestbench();
	reg [2:0] IN;
    wire P;
	
	evenParity foo(.A(IN[2]), .B(IN[1]), .C(IN[0]), .P(P));

	initial begin		
		IN = 3'b000; #5;
        IN = 3'b001; #5;
        IN = 3'b010; #5;
        IN = 3'b011; #5;
        IN = 3'b100; #5;
        IN = 3'b101; #5;
        IN = 3'b110; #5;
        IN = 3'b111; #5;

	end
endmodule // 