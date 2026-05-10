module or_using_nor_gatelevel(
    input a,
    input b,
    output y
);

wire w;

nor(w, a, b);
nor(y, w, w);

endmodule
