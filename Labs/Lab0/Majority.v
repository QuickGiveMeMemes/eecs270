// File Name: Majority.v
// Behavioral implementation of 2-out-of-3 majority
module Majority (
  input a, b, c,
  output m
); 
  assign m = a && b || a && c || b && c;
endmodule // Majority