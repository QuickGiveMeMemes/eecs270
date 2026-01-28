module Lab2(
    input [2:0] SW,
    output [0:0] LEDR
    );
    evenParity foo(.A(SW[2]), .B(SW[1]), .C(SW[0]), .P(LEDR));
endmodule