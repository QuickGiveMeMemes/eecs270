// File Name: TestBench2B.v
`timescale 1ns/1ns
module TestBench2B();
  reg [2:0] ls, rs;		// Left and right sensors
  reg lb, rb, fb, bb;	// Left, front, back, and right bumpers
	wire [2:0] lwa, rwa; // Left and right wheel actions
												// One-hot: 100 -> F, 010 -> R, 001 -> S
                        
  // TODO: Instantiate Renee and connect the appropriate signals

  wire [6:0] HEX1, HEX0;

  Renee r(.ls(ls), .rs(rs), .lb(lb), .rb(rb), .fb(fb), .bb(bb), .lwa(lwa), .rwa(rwa));
	// ReneeAction la(.SEG(HEX1), .action(lwa));
	// ReneeAction ra(.SEG(HEX0), .action(rwa));

  // Specify your test procedures
  initial begin
    // first test: check LB and BB bumpers only
    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b0; 
    rb = 1'b0;
    fb = 1'b0; 
    bb = 1'b0;
    #10; // remember to add delays between testcases!

    // TODO: Add more testcases

    ls = 3'b010; // remember: you can provide numbers in decimal too!
    rs = 3'b100;
    lb = 1'b1; 
    rb = 1'b1;
    fb = 1'b1; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b1;
    fb = 1'b0; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b0;
    fb = 1'b1; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b010; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b0;
    fb = 1'b0; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b100;
    lb = 1'b1; 
    rb = 1'b0;
    fb = 1'b0; 
    bb = 1'b0;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b0;
    fb = 1'b1; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b0; 
    rb = 1'b0;
    fb = 1'b0; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b0;
    fb = 1'b1; 
    bb = 1'b0;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b1; 
    rb = 1'b1;
    fb = 1'b0; 
    bb = 1'b0;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b0; 
    rb = 1'b0;
    fb = 1'b0; 
    bb = 1'b1;
    #10; // remember to add delays between testcases!

    ls = 3'b000; // remember: you can provide numbers in decimal too!
    rs = 3'b000;
    lb = 1'b0; 
    rb = 1'b0;
    fb = 1'b1; 
    bb = 1'b0;
    #10; // remember to add delays between testcases!

    

  end

endmodule // TestBench2B