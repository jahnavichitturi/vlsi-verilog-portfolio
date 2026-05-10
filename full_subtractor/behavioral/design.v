module full_subtractor_behavioral(
    input a,
    input b,
    input bin,
    output reg diff,
    output reg bout
);

always @(*)
begin
    diff = a ^ b ^ bin;
    bout = (~a & b) | (~a & bin) | (b & bin);
end

endmodule
