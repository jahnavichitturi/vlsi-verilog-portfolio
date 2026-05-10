module mux2x1_gatelevel(
    input a,
    input b,
    input s,
    output y
);

wire s_not, w1, w2;

not(s_not, s);
and(w1, a, s_not);
and(w2, b, s);
or(y, w1, w2);

endmodule
