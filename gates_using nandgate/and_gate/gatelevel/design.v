module and_using_nand(
    input a,
    input b,
    output y
);

wire w;

nand(w, a, b);
nand(y, w, w);

endmodule
