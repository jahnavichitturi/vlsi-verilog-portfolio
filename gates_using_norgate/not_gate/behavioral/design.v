module not_using_nor_behavioral(
    input a,
    output reg y
);

always @(*)
begin
    y = ~(a | a);
end

endmodule
