// File Name: evenParity.v
module evenParity (
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
    wire xbc, xnbc, axbc,  na, naxnbc;

    xor bc_xor(xbc, B, C);
    xnor bc_xnor(xnbc, B, C);
    and xbc_and(axbc, A, xbc);
    not a_not(na, A);
    and xnbc_and(naxnbc, na, xnbc);
    or final(P, axbc,naxnbc);
endmodule