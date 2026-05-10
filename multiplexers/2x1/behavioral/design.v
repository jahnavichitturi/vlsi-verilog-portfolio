module mux2x1_behavioral(
    input a,
    input b,
    input s,
    output reg y
);

always @(*)
begin
    if(s == 0)
        y = a;
    else
        y = b;
end

endmodule
