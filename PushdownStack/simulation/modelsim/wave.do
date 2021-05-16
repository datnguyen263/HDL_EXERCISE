onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Testbench/I
add wave -noupdate /Testbench/O
add wave -noupdate /Testbench/Reset
add wave -noupdate /Testbench/PushPop
add wave -noupdate /Testbench/CLK
add wave -noupdate /Testbench/Empty
add wave -noupdate /Testbench/Full
add wave -noupdate /Testbench/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {163800000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {118060 ns} {168460 ns}
