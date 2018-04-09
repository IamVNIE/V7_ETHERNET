#!/bin/sh

rm -rf simv* csrc DVEfiles AN.DB

echo "Compiling Core Simulation Models"
vlogan +v2k \
      ../../../gig_eth_pcs_pma_v11_2.v \
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
      ../../example_design/gig_eth_pcs_pma_v11_2_example_design.v \
      ../stimulus_tb.v \
      ../demo_tb.v

echo "Elaborating design"
vcs +vcs+lic+wait \
    -debug \
    demo_tb glbl

echo "Starting simulation"
./simv -ucli -i ucli_commands.key

dve -vpd vcdplus.vpd -session vcs_session.tcl
