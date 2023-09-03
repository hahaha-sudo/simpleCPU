debLoadSimResult "waveform.fsdb"

# wvRenameGroup {G1} {top}
wvAddGroup "top"

wvAddSignal "/tb/clk"
wvRenameSignal "/tb/clk" "clk"
wvSetPosition {("top"0)}

# wvRenameGroup {G2} {reg}
wvAddGroup "reg"

wvAddSignal "/tb/cpu0/reg0/a1/bits"
wvRenameSignal "/tb/cpu0/reg0/a1/bits" "a1"
wvSetPosition {("reg"0)}

wvAddSignal "/tb/cpu0/reg0/a2/bits"
wvRenameSignal "/tb/cpu0/reg0/a2/bits" "a2"
wvSetPosition {("reg"1)}

wvAddSignal "/tb/cpu0/reg0/din/bits"
wvRenameSignal "/tb/cpu0/reg0/din/bits" "din"
wvSetPosition {("reg"2)}

wvAddSignal "/tb/cpu0/reg0/d1/bits"
wvRenameSignal "/tb/cpu0/reg0/d1/bits" "d1"
wvSetPosition {("reg"3)}

wvAddSignal "/tb/cpu0/reg0/d2/bits"
wvRenameSignal "/tb/cpu0/reg0/d2/bits" "d2"
wvSetPosition {("reg"4)}

# wvRenameGroup {G3} {alu} 
wvAddGroup "alu"

wvAddSignal "/tb/cpu0/alu0/alu_option"
wvRenameSignal "/tb/cpu0/alu0/alu_option" "alu_option"
wvSetPosition {("alu"0)}

wvAddSignal "/tb/cpu0/alu0/d1/bits"
wvRenameSignal "/tb/cpu0/alu0/d1/bits" "d1"
wvSetPosition {("alu"1)} 

wvAddSignal "/tb/cpu0/alu0/d2/bits"
wvRenameSignal "/tb/cpu0/alu0/d2/bits" "d2"
wvSetPosition {("alu"2)}

wvAddSignal "/tb/cpu0/alu0/result/bits"
wvRenameSignal "/tb/cpu0/alu0/result/bits" "result"
wvSetPosition {("alu"3)}

# alu adder 
wvAddGroup "alu adder"

wvAddSignal "/tb/cpu0/alu0/adder0/a"
wvRenameSignal "/tb/cpu0/alu0/adder0/a" "a"
wvSetPosition {("alu adder"0)}

wvAddSignal "/tb/cpu0/alu0/adder0/b"
wvRenameSignal "/tb/cpu0/alu0/adder0/b" "b"
wvSetPosition {("alu adder"1)}

wvAddSignal "/tb/cpu0/alu0/adder0/s"
wvRenameSignal "/tb/cpu0/alu0/adder0/s" "s"
wvSetPosition {("alu adder"2)}

# alu mul
wvAddGroup "alu mul"

wvAddSignal "/tb/cpu0/alu0/mul0/a"
wvRenameSignal "/tb/cpu0/alu0/mul0/a" "a"
wvSetPosition {("alu mul"0)}

wvAddSignal "/tb/cpu0/alu0/mul0/b"
wvRenameSignal "/tb/cpu0/alu0/mul0/b" "b"
wvSetPosition {("alu mul"1)}

wvAddSignal "/tb/cpu0/alu0/mul0/p"
wvRenameSignal "/tb/cpu0/alu0/mul0/p" "p"
wvSetPosition {("alu mul"0)}





