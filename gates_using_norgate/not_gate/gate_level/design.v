module not_using_nor_gatelevel(
    input a,
    output y
);

nor(y, a, a);

endmodule
