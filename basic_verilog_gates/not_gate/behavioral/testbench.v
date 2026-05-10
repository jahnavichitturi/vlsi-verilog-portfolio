module not_gate_behavioral_tb;

reg a;
wire y;

not_gate_behavioral uut (
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
