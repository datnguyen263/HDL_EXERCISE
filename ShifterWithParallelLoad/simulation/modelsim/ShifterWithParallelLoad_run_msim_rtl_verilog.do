transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad {E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad/mux4_1.v}
vlog -vlog01compat -work work +incdir+E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad {E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad/D_ff.v}
vlog -vlog01compat -work work +incdir+E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad {E:/TAILIEUHOCTAP/VerilogHDL/BaiTap/ShifterWithParallelLoad/SRwPL.v}

