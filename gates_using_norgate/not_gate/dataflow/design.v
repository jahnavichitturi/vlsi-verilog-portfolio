module not_using_nor_dataflow(
    input a,
    output y
);

assign y = ~(a | a);

endmodule
