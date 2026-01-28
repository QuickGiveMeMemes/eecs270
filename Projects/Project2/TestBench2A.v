// File Name: Testbench2A.v (Robbie)
`timescale 1ns/1ns
module Testbench2A();
	reg [2:0] SW;
	wire [6:0] HEX1, HEX0;
	
	// Instantiate the Project2A module
  wire lwa, rwa;

  Robbie r(.ls(SW[2]), .fs(SW[1]), .rs(SW[0]), .lwa(lwa), .rwa(rwa));
  RobbieAction lw(.action(lwa), .SEG(HEX1));
	RobbieAction rw(.action(rwa), .SEG(HEX0));

  reg test1;
  wire[6:0] out;
  // wire [2:0] a;
  // wire[2:0] b;
  // wire[2:0] res;
  // assign a = 3'b000;
  // assign b = 3'b111;
  // SEL1 stest[2:0](.s(test1), .a(a),.b(b), .f(res));
  RobbieAction test(.action(test1), .SEG(out));

  // Specify your test procedures
  initial begin
    SW = 3'b000; #5;
    SW = 3'b001; #5;
    SW = 3'b010; #5;
    SW = 3'b011; #5;
    SW = 3'b100; #5;
    SW = 3'b101; #5;
    SW = 3'b110; #5;
    SW = 3'b111; #5;
    test1 = 1'b1; #5;
    test1 = 1'b0; #5;
  end
endmodule