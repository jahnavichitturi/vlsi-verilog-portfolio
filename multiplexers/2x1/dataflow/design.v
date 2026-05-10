module mux2x1_dataflow(
    input a,
    input b,
    input s,
    output y
);

assign y = (~s & a) | (s & b);

endmodule
