module xor_using_nand_dataflow(
    input a,
    input b,
    output y
);

assign y = ~((~(a & ~(a & b))) & (~(b & ~(a & b))));

endmodule
