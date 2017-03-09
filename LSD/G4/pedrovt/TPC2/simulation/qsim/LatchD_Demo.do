onerror {exit -code 1}
vlib work
vlog -work work LatchD_Demo.vo
vlog -work work LatchD.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.LatchD_vlg_vec_tst -voptargs="+acc"
vcd file -direction LatchD_Demo.msim.vcd
vcd add -internal LatchD_vlg_vec_tst/*
vcd add -internal LatchD_vlg_vec_tst/i1/*
run -all
quit -f
