module xor_using_nand_behavioral(
    input a,
    input b,
    output reg y
);

reg w1, w2, w3;

always @(*)
begin
    w1 = ~(a & b);
    w2 = ~(a & w1);
    w3 = ~(b & w1);
    y  = ~(w2 & w3);
end

endmodule
