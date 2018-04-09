# This value should be modified to match your device
#CONFIG PART = xc7v285t-ffg1761-1;


#***********************************************************
# The following constraints target the Transceiver Physical*
# Interface which is instantiated in the Example Design.   *
#***********************************************************

#-----------------------------------------------------------
# Clock source used for the IDELAY Controller (if present) -
# and for the transceiver reset circuitry                  -
#-----------------------------------------------------------


create_clock -name independent_clock -period 5.000 [get_ports independent_clock]
set_propagated_clock independent_clock

#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------

create_clock -name gtrefclk -period 8.000 [get_pins ibufds_gtrefclk/O]
set_propagated_clock gtrefclk

create_clock -name TXOUTCLK_OUT -period 16.000 [get_pins core_wrapper/transceiver_inst/gtwizard_inst/gt0_gtwizard_i/gtxe2_i/TXOUTCLK]
set_propagated_clock TXOUTCLK_OUT


set_false_path -from [get_clocks independent_clock] -to [get_clocks {gtrefclk TXOUTCLK_OUT}]
set_false_path -from [get_clocks gtrefclk] -to [get_clocks {independent_clock TXOUTCLK_OUT}]
set_false_path -from [get_clocks TXOUTCLK_OUT] -to [get_clocks {independent_clock gtrefclk}]

#-----------------------------------------------------------
# Transceiver I/O placement:                               -
#-----------------------------------------------------------

# Place the transceiver components, chosen for this example design
# *** These values should be modified according to your specific design ***
#set_property LOC AK8 [get_ports gtrefclk_p]
#set_property LOC AK7 [get_ports gtrefclk_n]
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells core_wrapper/transceiver_inst/gtwizard_inst/gt0_gtwizard_i/gtxe2_i]


#-----------------------------------------------------------
# Fabric Rx Elastic Buffer Timing Constraints:             -
#-----------------------------------------------------------

# Clock period for the recovered Rx clock
create_clock -name RXOUTCLK_OUT -period 8.000 [get_pins core_wrapper/transceiver_inst/gtwizard_inst/gt0_gtwizard_i/gtxe2_i/RXOUTCLK]
set_propagated_clock RXOUTCLK_OUT

set_false_path -from [get_clocks independent_clock] -to [get_clocks RXOUTCLK_OUT]
set_false_path -from [get_clocks gtrefclk] -to [get_clocks RXOUTCLK_OUT]
set_false_path -from [get_clocks -include_generated_clocks TXOUTCLK_OUT] -to [get_clocks -include_generated_clocks RXOUTCLK_OUT]
set_false_path -from [get_clocks -include_generated_clocks RXOUTCLK_OUT] -to [get_clocks -include_generated_clocks {independent_clock gtrefclk TXOUTCLK_OUT}]

# Control Gray Code delay and skew across clock boundary
set_max_delay 14.000 -from [get_cells -hier -filter {name =~ core_wrapper/transceiver_inst/rx_elastic_buffer_inst/wr_addr_gray*}] -to [all_registers -edge_triggered]
set_max_delay 14.000 -from [get_cells -hier -filter {name =~ core_wrapper/transceiver_inst/rx_elastic_buffer_inst/rd_addr_gray*}] -to [all_registers -edge_triggered]

# Constrain between Distributed Memory (output data) and the 1st set of flip-flops
set_max_delay 6.000 -from [all_rams] -to [get_cells -hier -filter {name =~ core_wrapper/transceiver_inst/rx_elastic_buffer_inst/rd_data*}]


#***********************************************************
# The following constraints target the GMII implemented in *
# the Example Design.                                      *
#***********************************************************
# The GMII is intended to be an internal interface.        *
# The GMII signals should be connected directly to user    *
# logic and all of the following constraints in this file  *
# should be removed.                                       *
#***********************************************************


#-----------------------------------------------------------
# Fast Skew maximises output setup and hold timing         -
#-----------------------------------------------------------
set_property SLEW FAST [get_ports {gmii_rxd[*]}]
set_property SLEW FAST [get_ports gmii_rx_dv]
set_property SLEW FAST [get_ports gmii_rx_er]


#-----------------------------------------------------------
# GMII Transmitter Constraints:  place flip-flops in IOB   -
#-----------------------------------------------------------
set_property IOB TRUE [get_cells gmii_txd*]
set_property IOB TRUE [get_cells gmii_tx_en*]
set_property IOB TRUE [get_cells gmii_tx_er*]

#-----------------------------------------------------------
# GMII Receiver Constraints:  place flip-flops in IOB      -
#-----------------------------------------------------------
set_property IOB TRUE [get_cells gmii_rxd*]
set_property IOB TRUE [get_cells gmii_rx_dv*]
set_property IOB TRUE [get_cells gmii_rx_er*]



