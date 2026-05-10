module mux4x1_behavioral(
    input a,
    input b,
    input c,
    input d,
    input s1,
    input s0,
    output reg y
);

always @(*)
begin
    case({s1, s0})
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        2'b11: y = d;
    endcase
end

endmodule
