
// adder 8 bit //

module adder(

    input logic [7:0] a,
    input logic [7:0] b,

    output logic [7:0] s

);

    assign s = a + b;

endmodule

