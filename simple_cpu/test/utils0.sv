
// command //

class command;

    // what operation to do 

    logic [1:0] alu_sel;
    logic w_en;
    logic din_sel;
    logic d2_sel;

    string what_it_does;

    function new();
            
        alu_sel = 2'bxx;
        w_en = 0;
        din_sel = 'bx;
        d2_sel = 'bx;

        what_it_does = "nop";

    endfunction

    function edit(string str);

        what_it_does = str;

        // mov immediate data //

        if(str == "movid") begin
            alu_sel = 2'bxx;
            w_en = 1;
            din_sel = 1;
            d2_sel = 'bx;
        end

        // mov reg //

        else if(str == "movreg") begin
            alu_sel = 2'b11;
            w_en = 1;
            din_sel = 0;
            d2_sel = 0;
        end

        // add immediate data //

        else if(str == "addid") begin
            alu_sel = 2'b01;
            w_en = 1;
            din_sel = 0;
            d2_sel = 1;
        end

        // add reg //

        else if(str == "addreg") begin
            alu_sel = 2'b01;
            w_en = 1;
            din_sel = 0;
            d2_sel = 0; 
        end

        // sub immediate data //

        else if(str == "subid") begin
            alu_sel = 2'b00;
            w_en = 1;
            din_sel = 0;
            d2_sel = 1;
        end

        // sub reg //

        else if(str == "subreg") begin
            alu_sel = 2'b00;
            w_en = 1;
            din_sel = 0;
            d2_sel = 0; 
        end

        // mul immediate data //

        else if(str == "mulid") begin
            alu_sel = 2'b10;
            w_en = 1;
            din_sel = 0;
            d2_sel = 1;
        end

        // mul reg //

        else if(str == "mulreg") begin
            alu_sel = 2'b10;
            w_en = 1;
            din_sel = 0;
            d2_sel = 0; 
        end

        // output //

        else if(str == "out") begin
            alu_sel = 2'bxx;
            w_en = 0;
            din_sel = 'bx;
            d2_sel = 'bx;
        end

        // empty operation //

        else if(str == "nop") begin
            alu_sel = 2'bxx;
            w_en = 0;
            din_sel = 'bx;
            d2_sel = 'bx;
        end

        // wrong command //

        else begin
            alu_sel = 2'bxx;
            w_en = 0;
            din_sel = 'bx;
            d2_sel = 'bx;
        end

    endfunction

    function print_info();

        $display("===== command info =====");
        $display("alu_sel: %b",alu_sel);
        $display("w_en: %b",w_en);
        $display("din_sel: %b",din_sel);
        $display("d2_sel: %b",d2_sel);
        $display("what it does: %s",what_it_does);
        $display("========================");

    endfunction

endclass

// info //

class info;

    // reg address and data

    logic [3:0] a1;
    logic [3:0] a2;

    logic [7:0] din;

    function new();
        a1 = 0;
        a2 = 0;
        din = 0;
    endfunction

    function edit(logic [3:0] temp_a1,logic [3:0] temp_a2,logic [7:0] temp_din);
        a1 = temp_a1;
        a2 = temp_a2;
        din = temp_din;
    endfunction

    function print_info(string option);

        if (option == "bit") begin

            $display("===== info info =====");
            $display("a1: %b",a1);
            $display("a2: %b",a2);
            $display("din: %b",din);
            $display("=====================");

        end
        else if (option == "dec") begin

            $display("===== info info =====");
            $display("a1: %d",a1);
            $display("a2: %d",a2);
            $display("din: %d",din);
            $display("=====================");

        end
        else begin
            $display("===== error in info =====");
            $display("Invalid option");
            $display("=========================");
        end
    
    endfunction

endclass

// command and info //

class commandinfo;

    // This forms a complete assemble code command 

    command com;
    info inf;

    function new();
        com = new();
        inf = new();
    endfunction

    function print_info();
        com.print_info();
        inf.print_info("dec");
    endfunction

    function print_details();

        // string temp = "";

        if (com.what_it_does == "movid") begin
            // temp = "mov " + a1 + " " + din;
            $display("mov A%d %d", inf.a1,inf.din);
        end
        else if (com.what_it_does == "movreg") begin
            // temp = "mov " + a1 + " " + a2;
            $display("mov A%d A%d", inf.a1,inf.a2);
        end
        else if (com.what_it_does == "addid") begin
            // temp = "add " + a1 + " " + din;
            $display("add A%d %d", inf.a1,inf.din);
        end
        else if (com.what_it_does == "addreg") begin
            // temp = "add " + a1 + " " + a2;
            $display("add A%d A%d", inf.a1,inf.a2);
        end
        else if (com.what_it_does == "subid") begin
            // temp = "sub " + a1 + " " + din;
            $display("sub A%d %d", inf.a1,inf.din);
        end
        else if (com.what_it_does == "subreg") begin
            // temp = "sub " + a1 + " " + a2;
            $display("sub A%d A%d", inf.a1,inf.a2);
        end
        else if (com.what_it_does == "mulid") begin
            // temp = "mul " + a1 + " " + din;
            $display("mul A%d %d", inf.a1,inf.din);
        end
        else if (com.what_it_does == "mulreg") begin
            // temp = "mul " + a1 + " " + a2;
            $display("mul A%d A%d", inf.a1,inf.a2);
        end
        else if (com.what_it_does == "out") begin
            // temp = "out " + a1;
            $display("out A%d",inf.a1);
        end
        else if (com.what_it_does == "nop" ) begin
            $display("nop");
        end

    endfunction

endclass

