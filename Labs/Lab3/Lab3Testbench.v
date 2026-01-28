`timescale 1ns/1ns

module Lab3Testbench;

    reg  [5:0] SW;
    wire [5:0] LEDR;
    wire [6:0] HEX0;

    // Instantiate DUT
    
    Lab3 l3(.SW(SW), .LEDR(LEDR), .HEX0(HEX0));

    /* These might be useful... */
    // Expected HEX encodings (active-low)
    localparam HEX_G = 7'b0010000;  // g
    localparam HEX_L = 7'b1000111; // L
    localparam HEX_E = 7'b0000110;  // E

    // integer errors = 0;

    reg exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne;
    reg [6:0] exp_hex;

    initial begin
        SW = 6'b000000; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b010110; exp_hex = HEX_E; #5;
        SW = 6'b001001; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b010110; exp_hex = HEX_E; #5;
        SW = 6'b111111; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b010110; exp_hex = HEX_E; #5;

        SW = 6'b001000; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b110001; exp_hex = HEX_E; #5;
        SW = 6'b100010; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b110001; exp_hex = HEX_E; #5;
        SW = 6'b111110; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b110001; exp_hex = HEX_E; #5;

        SW = 6'b000001; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b001101; exp_hex = HEX_E; #5;
        SW = 6'b010100; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b001101; exp_hex = HEX_E; #5;
        SW = 6'b110111; {exp_gt, exp_ge, exp_lt, exp_le, exp_eq, exp_ne} = 6'b001101; exp_hex = HEX_E; #5;


    end

endmodule
