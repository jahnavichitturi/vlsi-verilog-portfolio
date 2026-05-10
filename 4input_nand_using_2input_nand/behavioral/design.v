module nand4_using_nand2_behavioral(
    input a,
    input b,
    input c,
    input d,
    output reg y
);

reg w1, w2, w3;

always @(*)
begin
    w1 = ~(a & b);
    w2 = ~(c & d);
    w3 = ~(w1 & w2);
    y  = ~(w3 & w3);
end

endmodule
