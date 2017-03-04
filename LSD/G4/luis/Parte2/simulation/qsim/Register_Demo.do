onerror {exit -code 1}
vlib work
vlog -work work Register_Demo.vo
vlog -work work Register8.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Register8_vlg_vec_tst -voptargs="+acc"
vcd file -direction Register_Demo.msim.vcd
vcd add -internal Register8_vlg_vec_tst/*
vcd add -internal Register8_vlg_vec_tst/i1/*
run -all
quit -f
