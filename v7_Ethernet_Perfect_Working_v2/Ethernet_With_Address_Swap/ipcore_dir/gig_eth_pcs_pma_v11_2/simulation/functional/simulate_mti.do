vlib work
vmap work work

echo "Compiling Core Simulation Models"
vlog -work work ../../../gig_eth_pcs_pma_v11_2.v

echo "Compiling Example Design"
vlog -work work \
../../example_design/sync_block.v \
../../example_design/reset_sync.v \
../../example_design/transceiver/gtwizard_gt.v \
../../example_design/transceiver/gtwizard.v \
../../example_design/transceiver/transceiver.v \
../../example_design/sgmii_adapt/johnson_cntr.v \
../../example_design/sgmii_adapt/clk_gen.v \
../../example_design/sgmii_adapt/rx_rate_adapt.v \
../../example_design/sgmii_adapt/tx_rate_adapt.v \
../../example_design/sgmii_adapt/sgmii_adapt.v \
../../example_design/transceiver/rx_elastic_buffer.v \
../../example_design/gig_eth_pcs_pma_v11_2_block.v \
../../example_design/gig_eth_pcs_pma_v11_2_example_design.v

echo "Compiling Test Bench"
vlog -work work -novopt ../stimulus_tb.v ../demo_tb.v

echo "Starting simulation"
vsim -voptargs="+acc" -L unisims_ver -L secureip -t ps work.demo_tb work.glbl
do wave_mti.do
run -all

