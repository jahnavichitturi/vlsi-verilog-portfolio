
module and_gate_gatelevel_tb;

reg a;
reg b;
wire y;

and_gate_gatelevel uut (
    .a(a),
    .b(b),
    .y(y)
);

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, and_gate_gatelevel_tb);

    $display("Time\t a\t b\t y");
    $monitor("%0t\t %b\t %b\t %b", $time, a, b, y);

    a = 0; b = 0;
    #5;

    a = 0; b = 1;
    #5;

    a = 1; b = 0;
    #5;

    a = 1; b = 1;
    #5;

    # 30 $finish;
end

endmodule
