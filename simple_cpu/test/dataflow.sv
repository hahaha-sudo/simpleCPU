
// driver //

task driver(
    
    commandinfo cominf,

    ref logic [1:0] alu_sel,
    ref logic w_en,

    ref logic [3:0] a1,
    ref logic [3:0] a2,
    ref logic [7:0] din,

    ref logic din_sel,
    ref logic d2_sel

);

    alu_sel = cominf.com.alu_sel;
    w_en = cominf.com.w_en;
    din_sel = cominf.com.din_sel;
    d2_sel = cominf.com.d2_sel;

    a1 = cominf.inf.a1;
    a2 = cominf.inf.a2;
    din = cominf.inf.din;

endtask

// monitor //

task monitor(logic [7:0] dout);

    $display("===== dout =====");
    $display("dout: %b",dout);
    $display("================");

endtask


