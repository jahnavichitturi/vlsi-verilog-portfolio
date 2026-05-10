`timescale 1ns/1ps

module not_gate_dataflow_tb;

reg a;
wire y;

not_gate_dataflow uut (
    .a(a),
    .y(y)
);

initial
begin

    a = 0;
    #10;

    a = 1;
    #10;

    $finish;
end
  initial
    begin
      $monitor("sim time=%0t,a=%b,y=%b",$time,a,y);
    end
endmodule
