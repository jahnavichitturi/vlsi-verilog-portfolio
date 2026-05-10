module and_using_nand_dataflow(
    input a,
    input b,
    output y
);

assign y = ~(~(a & b) & ~(a & b));

endmodule
