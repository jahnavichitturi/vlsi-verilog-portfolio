module and_using_nor_behavioral(
    input a,
    input b,
    output reg y
);

reg nota, notb;

always @(*)
begin
    nota = ~(a | a);
    notb = ~(b | b);
    y = ~(nota | notb);
end

endmodule
