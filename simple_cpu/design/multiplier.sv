
// multiplier 8 bit //

module multiplier(

    input logic [7:0] a,
    input logic [7:0] b,

    output logic [7:0] p

);

    assign p = a * b;

endmodule

