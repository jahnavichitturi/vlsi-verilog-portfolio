module or_using_nand(
    input a,
    input b,
    output y
);

wire nota, notb;

nand(nota, a, a);
nand(notb, b, b);
nand(y, nota, notb);

endmodule
