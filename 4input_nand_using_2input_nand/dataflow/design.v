module nand4_using_nand2_dataflow(
    input a,
    input b,
    input c,
    input d,
    output y
);

assign y = ~((~(a & b)) & (~(c & d)));

endmodule
