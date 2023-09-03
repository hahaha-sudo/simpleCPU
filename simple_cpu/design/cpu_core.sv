
// cpu core //

module cpu_core(

    input logic [1:0] alu_sel,
    input logic w_en,
    
    address a1,
    address a2,
    number din,

    input logic din_sel,
    input logic d2_sel,
    input logic clk,

    number dout

);

    number a();
    number b();
    number c();
    number d();

    assign b.bits = din_sel ? din.bits : a.bits;
    assign d.bits = d2_sel ? din.bits : c.bits;

    regfile reg0(clk,w_en,a1,a2,b,dout,c);
    alu alu0(dout,d,alu_sel,a);
    
endmodule

