
// alu //

module alu(
    
    number d1,
    number d2,

    input logic [1:0] alu_option,
    number result

);

    logic [7:0] not_d2,add_b;
    logic [7:0] add_out,mul_out;
    logic [7:0] cal_result;

    logic inv_sel,mul_sel,pass_sel;

    assign not_d2 = (~d2.bits) + 1;
    // assign add_b = inv_sel ? not_d2 : d2.bits;
    assign add_b = inv_sel ? d2.bits : not_d2;
    assign cal_result = mul_sel ? mul_out : add_out;
    assign result.bits = pass_sel ? d2.bits : cal_result;

    assign pass_sel = alu_option[1] & alu_option[0];
    assign mul_sel = alu_option[1];
    assign inv_sel = alu_option[0];

    adder adder0(
        d1.bits,
        add_b,
        add_out
    );
    multiplier mul0(
        d1.bits,
        d2.bits,
        mul_out
    );

endmodule
