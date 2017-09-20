transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/bea/Desktop/lsdig/aula7/ALU16/ALU16.vhd}

