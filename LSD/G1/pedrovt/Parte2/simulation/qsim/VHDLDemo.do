onerror {exit -code 1}
vlib work
vlog -work work VHDLDemo.vo
vlog -work work VHDLDemo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.NAND2Gate_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction VHDLDemo.msim.vcd
vcd add -internal NAND2Gate_1_vlg_vec_tst/*
vcd add -internal NAND2Gate_1_vlg_vec_tst/i1/*
run -all
quit -f
