module nor_using_nand_dataflow(
    input a,
    input b,
    output y
);

wire nota, notb, or_temp;

assign nota = ~(a & a);
assign notb = ~(b & b);
assign or_temp = ~(nota & notb);
assign y = ~(or_temp & or_temp);

endmodule
