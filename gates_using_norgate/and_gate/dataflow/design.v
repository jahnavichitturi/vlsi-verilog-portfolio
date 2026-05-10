module and_using_nor_dataflow(
    input a,
    input b,
    output y
);

assign y = ~((~a) | (~b));

endmodule
