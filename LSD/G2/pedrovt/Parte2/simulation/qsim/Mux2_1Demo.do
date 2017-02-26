onerror {exit -code 1}
vlib work
vlog -work work Mux2_1Demo.vo
vlog -work work Mux2_1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Mux2_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction Mux2_1Demo.msim.vcd
vcd add -internal Mux2_1_vlg_vec_tst/*
vcd add -internal Mux2_1_vlg_vec_tst/i1/*
run -all
quit -f
