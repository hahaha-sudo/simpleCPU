
// reg file //

module regfile(

    input logic clk,

    input logic w_en1,
    
    address a1,
    address a2,

    number din,

    number d1,
    number d2

);

    reg [7:0] regs [15:0];

    always @(posedge clk) begin

        if(w_en1) begin

            regs[a1.bits] <= din.bits;

        end

    end

    assign d1.bits = regs[a1.bits];
    assign d2.bits = regs[a2.bits];

endmodule

