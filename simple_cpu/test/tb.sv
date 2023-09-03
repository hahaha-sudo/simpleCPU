
// test bench of the simple cpu //

`timescale 1ns/1ps

module tb;

    // signals //

    logic clk = 0;
    always #5 clk = ~clk;

    logic [1:0] alu_sel;
    logic w_en;
    address a1();
    address a2();
    number din();
    logic din_sel;
    logic d2_sel;

    number dout();

    cpu_core cpu0(

        alu_sel,w_en,
        a1,a2,din,
        din_sel,d2_sel,clk,
        dout

    );

    prog pr;

    initial begin 
    
        generate_test_vec(pr);
        // pr.print_info();
        pr.print_prog();

        foreach(pr.content[i]) begin
            
            @(negedge clk);
            driver(
                pr.content[i],
                alu_sel,w_en,
                a1.bits,a2.bits,din.bits,
                din_sel,d2_sel
            );

        end

        @(negedge clk);

        monitor(dout.bits);

        $finish();

    end

    // generate waveform file //

    `ifdef FSDB
        initial begin
            $fsdbDumpfile("waveform.fsdb");
            $fsdbDumpvars;
        end
    `endif

endmodule

