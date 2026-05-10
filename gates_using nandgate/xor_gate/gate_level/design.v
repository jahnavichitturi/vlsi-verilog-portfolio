module xor_using_nand_gatelevel(
    input a,
    input b,
    output y
);

wire w1, w2, w3;

nand(w1, a, b);
nand(w2, a, w1);
nand(w3, b, w1);
nand(y, w2, w3);

endmodule
