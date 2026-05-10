module mux2x1_tb;

reg a;
reg b;
reg s;
wire y;

mux2x1_gatelevel uut (
    .a(a),
    .b(b),
    .s(s),
    .y(y)
);

initial
begin
    a = 0; b = 1; s = 0;
    #10;

    a = 0; b = 1; s = 1;
    #10;

    a = 1; b = 0; s = 0;
    #10;

    a = 1; b = 0; s = 1;
    #10;

    $finish;
end

initial
begin
    $monitor("time=%0t a=%b b=%b s=%b y=%b",
              $time, a, b, s, y);
end

endmodule
