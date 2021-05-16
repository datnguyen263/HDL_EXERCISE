onerror {quit -f}
vlib work
vlog -work work PushdownStack.vo
vlog -work work PushdownStack.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PushdownStack_vlg_vec_tst
vcd file -direction PushdownStack.msim.vcd
vcd add -internal PushdownStack_vlg_vec_tst/*
vcd add -internal PushdownStack_vlg_vec_tst/i1/*
add wave /*
run -all
