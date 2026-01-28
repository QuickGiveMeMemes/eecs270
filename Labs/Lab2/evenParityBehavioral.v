// File Name: evenParity.v
module evenParityBehavioral (
    input A, B, C,
    output P
    );
    // 0 0 0 -> 1
    // 0 0 1 -> 0
    // 0 1 0 -> 0
    // 0 1 1 -> 1
    // 1 0 0 -> 0
    // 1 0 1 -> 1
    // 1 1 0 -> 1
    // 1 1 1 -> 0
    // A(B xor C) + ~A(B xnor C)
    assign P = (~A & ~B & ~C ) | (!A & B & C) | (A & !B & C) | (A & B & !C);
endmodule