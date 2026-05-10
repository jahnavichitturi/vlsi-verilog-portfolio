module nor_using_nand_gatelevel(
    input a,
    input b,
    output y
);

wire nota, notb, or_temp;

// NOT using NAND
nand(nota, a, a);
nand(notb, b, b);

// OR using NAND
nand(or_temp, nota, notb);

// Final NOR using NAND
nand(y, or_temp, or_temp);

endmodule
