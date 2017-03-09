onerror {exit -code 1}
vlib work
vlog -work work FlipFlopD_Demo.vo
vlog -work work FlipFlopD.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.FlipFlopD_vlg_vec_tst -voptargs="+acc"
vcd file -direction FlipFlopD_Demo.msim.vcd
vcd add -internal FlipFlopD_vlg_vec_tst/*
vcd add -internal FlipFlopD_vlg_vec_tst/i1/*
run -all
quit -f
