module or_using_nor_dataflow(
    input a,
    input b,
    output y
);

assign y = ~((~(a | b)) | (~(a | b)));

endmodule
