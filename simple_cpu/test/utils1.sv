
// scoreboard //

class scoreboard;

    int total_num;
    int correct_num;
    int wrong_num;

    function new();
        total_num = 0;
        correct_num = 0;
        wrong_num = 0;
    endfunction

    function correct();
        total_num++;
        correct_num++;
    endfunction

    function wrong();
        total_num++;
        wrong_num++;
    endfunction

    function print_info();
        $display("===== scoreboard info =====");
        $display("total num: %d", total_num);
        $display("correct num: %d", correct_num);
        $display("wrong num: %d", wrong_num);
        $display("===========================");
    endfunction

endclass

// prog //

class prog;

    // The user writes the assembly code
    // and the function translates the info
    // append the info into content

    commandinfo content [$]; 

    function new();
    endfunction

    function movid(int reg_index,int id);
        commandinfo temp;
        temp = new();
        temp.com.edit("movid");
        temp.inf.edit(reg_index,'bx,id);
        content.push_back(temp);
    endfunction

    function movreg(int reg_index1,int reg_index2);
        commandinfo temp;
        temp = new();
        temp.com.edit("movreg");
        temp.inf.edit(reg_index1,reg_index2,'bx);
        content.push_back(temp);
    endfunction

    function addid(int reg_index,int id);
        commandinfo temp;
        temp = new();
        temp.com.edit("addid");
        temp.inf.edit(reg_index,'bx,id);
        content.push_back(temp);
    endfunction

    function addreg(int reg0,int reg1);
        commandinfo temp;
        temp = new();
        temp.com.edit("addreg");
        temp.inf.edit(reg0,reg1,'bx);
        content.push_back(temp);
    endfunction

    function subid(int reg_index,int id);
        commandinfo temp;
        temp = new();
        temp.com.edit("subid");
        temp.inf.edit(reg_index,'bx,id);
        content.push_back(temp);
    endfunction

    function subreg(int reg0,int reg1);
        commandinfo temp;
        temp = new();
        temp.com.edit("subreg");
        temp.inf.edit(reg0,reg1,'bx);
        content.push_back(temp);
    endfunction

    function mulid(int reg_index,int id);
        commandinfo temp;
        temp = new();
        temp.com.edit("mulid");
        temp.inf.edit(reg_index,'bx,id);
        content.push_back(temp);
    endfunction

    function mulreg(int reg0,int reg1);
        commandinfo temp;
        temp = new();
        temp.com.edit("mulreg");
        temp.inf.edit(reg0,reg1,'bx);
        content.push_back(temp);
    endfunction

    function out(int reg_index);
        commandinfo temp;
        temp = new();
        temp.com.edit("out");
        temp.inf.edit(reg_index,'bx,'bx);
        content.push_back(temp);
    endfunction

    function nop();
        commandinfo temp;
        temp = new();
        temp.com.edit("nop");
        temp.inf.edit('bx,'bx,'bx);
        content.push_back(temp);
    endfunction

    function print_info();
        foreach(content[i]) content[i].print_info();
    endfunction

    function print_prog();
        $display("===== assemble code =====");
        foreach(content[i]) content[i].print_details();
        $display("=========================");
    endfunction

endclass

