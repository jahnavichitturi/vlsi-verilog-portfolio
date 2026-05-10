module nand4_using_nand2_tb;

reg a;
reg b;
reg c;
reg d;
wire y;

nand4_using_nand2_gatelevel uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
);

initial
begin
    a = 0; b = 0; c = 0; d = 0;
    #10;

    a = 1; b = 0; c = 0; d = 0;
    #10;

    a = 1; b = 1; c = 0; d = 0;
    #10;

    a = 1; b = 1; c = 1; d = 0;
    #10;

    a = 1; b = 1; c = 1; d = 1;
    #10;

    $finish;
end

initial
begin
    $monitor("sim time=%0t a=%b b=%b c=%b d=%b y=%b",
              $time, a, b, c, d, y);
end

endmodule
