module full_subtractor_tb;

reg a;
reg b;
reg bin;
wire diff;
wire bout;

full_subtractor_gatelevel uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .bout(bout)
);

initial
begin
    a = 0; b = 0; bin = 0;
    #10;

    a = 0; b = 0; bin = 1;
    #10;

    a = 0; b = 1; bin = 0;
    #10;

    a = 0; b = 1; bin = 1;
    #10;

    a = 1; b = 0; bin = 0;
    #10;

    a = 1; b = 1; bin = 1;
    #10;

    $finish;
end

initial
begin
    $monitor("sim time=%0t a=%b b=%b bin=%b diff=%b bout=%b",
              $time, a, b, bin, diff, bout);
end

endmodule
