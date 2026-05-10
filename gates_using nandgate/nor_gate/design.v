module nor_using_nand(
    input a,
    input b,
    output y
);

wire nota, notb, or_temp;

// NOT using NAND
nand(nota, a, a);
nand(notb, b, b);

// OR using NAND (De Morgan)
nand(or_temp, nota, notb);

// Final NOT using NAND
nand(y, or_temp, or_temp);

endmodule
