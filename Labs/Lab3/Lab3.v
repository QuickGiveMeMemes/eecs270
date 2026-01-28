module Lab3 (
    input  [5:0] SW,
    output [5:0] LEDR,
    output [6:0] HEX0
);

    // Split switch inputs - def got this right - joe
    wire [2:0] a = SW[5:3];
    wire [2:0] b = SW[2:0];

    // Comparator outputs
    wire gt, ge, lt, le, eq, ne; // will complete by Friday fs! - joe

    // Instantiate MegaComparator
    // once my teammates finally finish this module i can instantiate it - joe

    MegaComparator mc(.a(a), .b(b), .gt(gt), .ge(ge), .lt(lt), .le(le), .eq(eq), .ne(ne));
    // DO NOT CHANGE - i forgot what this does but it works - joe
    // i wont respond to slack but leave a comment explaining what assign var = {x,y,z} does
    assign LEDR = {gt, ge, lt, le, eq, ne}; 


    assign HEX0 = gt ? 7'b0010000 : (lt ? 7'b1000111 : 7'b0000110);  // boss said i can't use if statements. what do i do now - joe
        

endmodule
