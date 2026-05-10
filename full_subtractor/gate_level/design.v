module full_subtractor_gatelevel(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);

wire x1, b1, b2, b3;

xor(x1, a, b);
xor(diff, x1, bin);

not(nota, a);

and(b1, nota, b);
and(b2, nota, bin);
and(b3, b, bin);

or(bout, b1, b2, b3);

endmodule
