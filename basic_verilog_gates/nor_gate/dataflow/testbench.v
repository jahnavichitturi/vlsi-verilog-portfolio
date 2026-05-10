module nor_gate_dataflow_tb;

reg a;
reg b;
wire y;

nor_gate_dataflow uut (
    .a(a),
    .b(b),
    .y(y)
);

initial
begin

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

initial
begin
    $monitor("sim time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
end

endmodule
