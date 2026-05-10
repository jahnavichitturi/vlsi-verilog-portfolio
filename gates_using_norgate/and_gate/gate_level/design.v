module and_using_nor_gatelevel(
    input a,
    input b,
    output y
);

wire nota, notb;

nor(nota, a, a);
nor(notb, b, b);
nor(y, nota, notb);

endmodule
