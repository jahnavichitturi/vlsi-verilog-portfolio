module nand3_using_nand2_dataflow(
    input a,
    input b,
    input c,
    output y
);

assign y = ~((~(a & b) & c));

endmodule
