transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/d_flipflop.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/MemoryCell.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/d_latch.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/decoder3to8.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/m21.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/sr_latch_gated.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/dff_setrst.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/HAS.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/PushdownStack.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/mc8bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/decoder4to16.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/m21_10bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/RAM.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/decoder5to32.v}
vlog -vlog01compat -work work +incdir+C:/Users/DN/Desktop/PushdownStack {C:/Users/DN/Desktop/PushdownStack/decoder10to1024.v}

