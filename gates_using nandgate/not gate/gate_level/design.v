module not_using_nand(
    input a,
    output y
);

nand(y, a, a);

endmodule
