module nand3_using_nand2_tb;

reg a;
reg b;
reg c;
wire y;

nand3_using_nand2_gatelevel uut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial
begin
    a = 0; b = 0; c = 0;
    #10;

    a = 0; b = 0; c = 1;
    #10;

    a = 0; b = 1; c = 1;
    #10;

    a = 1; b = 1; c = 1;
    #10;

    $finish;
end

initial
begin
    $monitor("sim time=%0t, a=%b, b=%b, c=%b, y=%b", $time, a, b, c, y);
end

endmodule
