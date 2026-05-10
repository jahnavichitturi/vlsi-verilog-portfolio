module nor_using_nand_behavioral(
    input a,
    input b,
    output reg y
);

reg nota, notb, or_temp;

always @(*)
begin
    // NOT using NAND logic
    nota = ~(a & a);
    notb = ~(b & b);

    // OR using NAND logic
    or_temp = ~(nota & notb);

    // NOR final stage
    y = ~(or_temp & or_temp);
end

endmodule
