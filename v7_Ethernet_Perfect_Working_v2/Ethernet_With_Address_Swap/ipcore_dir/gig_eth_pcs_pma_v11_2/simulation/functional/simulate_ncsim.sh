#!/bin/sh
mkdir work

echo "Compiling Core Simulation Models"
ncvlog -work work ../../../gig_eth_pcs_pma_v11_2.v

echo "Compiling Example Design"
ncvlog -work work \
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
ncvlog -work work ../stimulus_tb.v ../demo_tb.v

echo "Elaborating design"
ncelab -access +rw work.demo_tb glbl

echo "Starting simulation"
ncsim -gui work.demo_tb -input @"simvision -input wave_ncsim.sv"
