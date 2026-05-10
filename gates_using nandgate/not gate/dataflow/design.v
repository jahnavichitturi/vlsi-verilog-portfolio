module not_using_nand_dataflow(
    input a,
    output y
);

assign y = ~(a & a);

endmodule
