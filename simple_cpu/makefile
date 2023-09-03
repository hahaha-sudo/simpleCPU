synth:
	verdi -sv ./design/interface.sv \
	./design/adder.sv \
	./design/multiplier.sv \
	./design/alu.sv \
	./design/regfile.sv \
	./design/cpu_core.sv 

clean:
	rm -r csrc
	rm novas.conf
	rm novas_dump.log
	rm novas.rc
	rm simv
	rm -r simv.daidir
	rm ucli.key
	rm -r verdiLog
	rm waveform.fsdb

simul:
	echo exit | vcs -R \
    	-full64 \
    	+define+FSDB \
    	-timescale=1ns/1ps \
    	-sverilog \
    	-kdb \
    	-debug_acc+all \
	    -debug_region+cell+encrypt \
    	+delay_mode_zero \
    	+define+DISABLE_SV_ASSERTIOn \
    	+define+BEH_MEM  \
    	./design/interface.sv \
    	./design/adder.sv \
    	./design/multiplier.sv \
    	./design/alu.sv \
    	./design/regfile.sv \
	    ./design/cpu_core.sv \
    	./test/utils0.sv \
	    ./test/utils1.sv \
	    ./test/dataflow.sv \
    	./test/test_prog.sv \
		./test/tb.sv \
	    -top tb

wave:
	verdi -play ./script/see_wave.tcl


