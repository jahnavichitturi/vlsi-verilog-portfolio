module and_using_nand_behavioral(
    input a,
    input b,
    output reg y
);

reg w;

always @(*)
begin
    w = ~(a & b);
    y = ~(w & w);
end

endmodule
