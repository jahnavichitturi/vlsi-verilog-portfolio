`timescale 1ns/1ps

module and_gate_tb;

reg a;
reg b;
wire y;

// Instantiate the module
and_gate_behavioral uut (
    .a(a),
    .b(b),
    .y(y)
);

initial
begin
    // Generate waveform
    $dumpfile("dump.vcd");
    $dumpvars(0, and_gate_tb);

    // Display outputs
    $display("Time\t a\t b\t y");
    $monitor("%0t\t %b\t %b\t %b", $time, a, b, y);

    // Test cases
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
