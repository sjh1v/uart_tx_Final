###############################################################################
# Created by write_sdc
# Sun Dec 14 11:56:35 2025
###############################################################################
current_design uart_tx
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 20.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[0]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[1]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[2]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[3]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[4]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[5]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[6]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {data_in[7]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx_start}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx_busy}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {tx_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {tx_busy}]
set_load -pin_load 0.0334 [get_ports {tx_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {tx_start}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {data_in[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
