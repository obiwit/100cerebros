onerror {exit -code 1}
vlib work
vlog -work work Counter_Demo.vo
vlog -work work CounterDown4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.CounterDown4_vlg_vec_tst -voptargs="+acc"
vcd file -direction Counter_Demo.msim.vcd
vcd add -internal CounterDown4_vlg_vec_tst/*
vcd add -internal CounterDown4_vlg_vec_tst/i1/*
run -all
quit -f
