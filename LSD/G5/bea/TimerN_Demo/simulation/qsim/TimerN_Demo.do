onerror {exit -code 1}
vlib work
vlog -work work TimerN_Demo.vo
vlog -work work TimerN.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.TimerN_vlg_vec_tst -voptargs="+acc"
vcd file -direction TimerN_Demo.msim.vcd
vcd add -internal TimerN_vlg_vec_tst/*
vcd add -internal TimerN_vlg_vec_tst/i1/*
run -all
quit -f
