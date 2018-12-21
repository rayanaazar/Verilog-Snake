vlib work

vlog -timescale 1ns/1ns SnakeInterface.v

vsim SnakeInterface -L altera_mf_ver snakeram

log {/*}
add wave {/*}
	

force {clk} 0 0, 1 1 -r 2
force {reset} 0 0, 1 2
force {dirIn} 2#1000
force {title_done} 0 0, 1 100
run 2000000000000000ns
