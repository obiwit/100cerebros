onerror {exit -code 1}
vlib work
vlog -work work ALUDemo.vo
vlog -work work Bin2BCD.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Bin2BCD_vlg_vec_tst -voptargs="+acc"
vcd file -direction ALUDemo.msim.vcd
vcd add -internal Bin2BCD_vlg_vec_tst/*
vcd add -internal Bin2BCD_vlg_vec_tst/i1/*
run -all
quit -f
