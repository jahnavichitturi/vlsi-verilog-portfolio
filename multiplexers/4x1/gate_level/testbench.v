module mux4x1_tb;

reg a, b, c, d;
reg s1, s0;
wire y;

mux4x1_gatelevel uut (
    .a(a), .b(b), .c(c), .d(d),
    .s1(s1), .s0(s0),
    .y(y)
);

initial
begin
    a=0; b=1; c=0; d=1;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
end

initial
begin
    $monitor("time=%0t s1=%b s0=%b y=%b",
              $time, s1, s0, y);
end

endmodule
