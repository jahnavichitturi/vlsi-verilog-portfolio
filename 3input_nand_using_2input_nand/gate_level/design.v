module nand3_using_nand2_gatelevel(
    input a,
    input b,
    input c,
    output y
);

wire w1, w2;

// step 1: NAND of A and B
nand(w1, a, b);

// step 2: NAND of w1 and C
nand(w2, w1, c);

// step 3: final NAND inversion trick
nand(y, w2, w2);

endmodule
