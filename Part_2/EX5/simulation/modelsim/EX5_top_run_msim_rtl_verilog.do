transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+//icnas2.cc.ic.ac.uk/dm2515/Digital\ 2/Part_2/EX5 {//icnas2.cc.ic.ac.uk/dm2515/Digital 2/Part_2/EX5/counter_8.v}

