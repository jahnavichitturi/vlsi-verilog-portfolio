`timescale 1ns/1ps

module and_gate_behavioral_tb;

reg a;
reg b;
wire y;

and_gate_behavioral uut (
    .a(a),
    .b(b),
    .y(y)
);

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0, and_gate_behavioral_tb);

    $display("Time\t a\t b\t y");
    $monitor("%0t\t %b\t %b\t %b", $time, a, b, y);

    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;
end

endmodule
