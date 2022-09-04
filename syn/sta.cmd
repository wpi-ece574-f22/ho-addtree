read_liberty /mnt/volume_nyc1_01/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_100C_1v80.lib
read_verilog addtree_gl.v
link_design addtree

create_clock -name clk -period 20 {clk}
set_input_delay -clock  clk 2 {reset}
set_input_delay -clock  clk 2 {a}
set_input_delay -clock  clk 2 {b}
set_input_delay -clock  clk 2 {c}
set_input_delay -clock  clk 2 {d}
set_output_delay -clock clk 2 {q}
report_checks
exit
