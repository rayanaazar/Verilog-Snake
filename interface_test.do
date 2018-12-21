vlib work

vlog -timescale 1s/1s SnakeInterface.v

vsim SnakeInterface -L altera_mf_ver snakeram

log {/*}
add wave {/*}


force {clk} 0 0, 1 5 -r 10
force {reset} 0 0, 1 11
force {dirIn} 2#1000
force {start_game} 0 0, 1 100
run 200s