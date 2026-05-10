module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

assign sum = a ^ b;
assign carry = a & b;

endmodule

module full_adder_using_half_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

wire s1, c1, c2;

// First Half Adder
half_adder HA1 (
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

// Second Half Adder
half_adder HA2 (
    .a(s1),
    .b(cin),
    .sum(sum),
    .carry(c2)
);

// Final carry
assign cout = c1 | c2;

endmodule
