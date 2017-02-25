onerror {exit -code 1}
vlib work
vlog -work work AND2Gate.vo
vlog -work work AND2Gate.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.AND2Gate_vlg_vec_tst -voptargs="+acc"
vcd file -direction VHDLDemo.msim.vcd
vcd add -internal AND2Gate_vlg_vec_tst/*
vcd add -internal AND2Gate_vlg_vec_tst/i1/*
run -all
quit -f
