module nand4_using_nand2_gatelevel(
    input a,
    input b,
    input c,
    input d,
    output y
);

wire w1, w2, w3;

// Step 1
nand(w1, a, b);

// Step 2
nand(w2, c, d);

// Step 3
nand(w3, w1, w2);

// Final inversion
nand(y, w3, w3);

endmodule
