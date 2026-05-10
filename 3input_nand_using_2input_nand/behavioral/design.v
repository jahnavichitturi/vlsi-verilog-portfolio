module nand3_using_nand2_behavioral(
    input a,
    input b,
    input c,
    output reg y
);

reg w1, w2;

always @(*)
begin
    w1 = ~(a & b);
    w2 = ~(w1 & c);
    y  = ~(w2 & w2);
end

endmodule
