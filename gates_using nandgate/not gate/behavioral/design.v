module not_using_nand_behavioral(
    input a,
    output reg y
);

always @(*)
begin
    y = ~(a & a);
end

endmodule
