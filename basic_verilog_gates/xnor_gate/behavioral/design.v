module xnor_gate_behavioral(
    input a,
    input b,
    output reg y
);

always @(*)
begin
    y = ~(a ^ b);
end

endmodule
