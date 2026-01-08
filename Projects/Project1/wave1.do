onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TestBench1/SW
add wave -noupdate /TestBench1/ToLEDR/A
add wave -noupdate /TestBench1/ToLEDR/B
add wave -noupdate /TestBench1/KEY
add wave -noupdate /TestBench1/ToLEDR/s
add wave -noupdate /TestBench1/LEDR
add wave -noupdate /TestBench1/ToLEDR/F
add wave -noupdate /TestBench1/HEX0
add wave -noupdate /TestBench1/ToHEX/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 379
configure wave -valuecolwidth 393
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
WaveRestoreZoom {0 ns} {52 ns}
