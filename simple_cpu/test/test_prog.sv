
// test assembly code //

task generate_test_vec(ref prog pr);

    pr = new();

    pr.movid(6,9);
    pr.movreg(4,6);
    pr.movid(0,3);
    pr.mulreg(6,0);
    pr.out(6);

endtask

