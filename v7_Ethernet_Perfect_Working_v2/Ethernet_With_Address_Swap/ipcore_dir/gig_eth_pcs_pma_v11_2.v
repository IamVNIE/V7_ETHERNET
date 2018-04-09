////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: gig_eth_pcs_pma_v11_2.v
// /___/   /\     Timestamp: Tue Oct 07 05:24:26 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "C:/Users/VNIE-RESEARCH/Google Drive/v-7 Interface Git/Project_Files/Ethernet_Try1/ipcore_dir/tmp/_cg/gig_eth_pcs_pma_v11_2.ngc" "C:/Users/VNIE-RESEARCH/Google Drive/v-7 Interface Git/Project_Files/Ethernet_Try1/ipcore_dir/tmp/_cg/gig_eth_pcs_pma_v11_2.v" 
// Device	: 7vx485tffg1761-2
// Input file	: C:/Users/VNIE-RESEARCH/Google Drive/v-7 Interface Git/Project_Files/Ethernet_Try1/ipcore_dir/tmp/_cg/gig_eth_pcs_pma_v11_2.ngc
// Output file	: C:/Users/VNIE-RESEARCH/Google Drive/v-7 Interface Git/Project_Files/Ethernet_Try1/ipcore_dir/tmp/_cg/gig_eth_pcs_pma_v11_2.v
// # of Modules	: 1
// Design Name	: gig_eth_pcs_pma_v11_2
// Xilinx        : C:\Xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module gig_eth_pcs_pma_v11_2 (
  reset, signal_detect, userclk, userclk2, dcm_locked, rxchariscomma, rxcharisk, rxdisperr, rxnotintable, rxrundisp, txbuferr, gmii_tx_en, gmii_tx_er
, an_restart_config, mgt_rx_reset, mgt_tx_reset, powerdown, txchardispmode, txchardispval, txcharisk, enablealign, gmii_rx_dv, gmii_rx_er, 
gmii_isolate, an_interrupt, link_timer_value, rxbufstatus, rxclkcorcnt, rxdata, gmii_txd, an_adv_config_vector, configuration_vector, txdata, gmii_rxd
, status_vector
)/* synthesis syn_black_box syn_noprune=1 */;
  input reset;
  input signal_detect;
  input userclk;
  input userclk2;
  input dcm_locked;
  input rxchariscomma;
  input rxcharisk;
  input rxdisperr;
  input rxnotintable;
  input rxrundisp;
  input txbuferr;
  input gmii_tx_en;
  input gmii_tx_er;
  input an_restart_config;
  output mgt_rx_reset;
  output mgt_tx_reset;
  output powerdown;
  output txchardispmode;
  output txchardispval;
  output txcharisk;
  output enablealign;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  input [8 : 0] link_timer_value;
  input [1 : 0] rxbufstatus;
  input [2 : 0] rxclkcorcnt;
  input [7 : 0] rxdata;
  input [7 : 0] gmii_txd;
  input [15 : 0] an_adv_config_vector;
  input [4 : 0] configuration_vector;
  output [7 : 0] txdata;
  output [7 : 0] gmii_rxd;
  output [15 : 0] status_vector;
  
  // synthesis translate_off
  
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT ;
  wire \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_12_64 ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_16 ;
  wire \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_REG_69 ;
  wire \U0/xst_options.gpcs_pma_inst/RXDISPERR_REG_70 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RUDI_INVALID_71 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_I_72 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_C_73 ;
  wire \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_1_74 ;
  wire \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_0_75 ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_79 ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_80 ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARISK_81 ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_ER_84 ;
  wire \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE ;
  wire N0;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1-In ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2-In ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3-In ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1-In ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2-In ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3-In ;
  wire \U0/xst_options.gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 ;
  wire \U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o ;
  wire \U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_INT_GND_14_o_MUX_368_o ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_INT_TXEVEN_MUX_367_o ;
  wire \U0/xst_options.gpcs_pma_inst/TXCHARISK_INT_TXEVEN_MUX_366_o ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<3> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<4> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<5> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_GND_14_o_MUX_356_o ;
  wire \U0/xst_options.gpcs_pma_inst/RXDISPERR_GND_14_o_MUX_357_o ;
  wire \U0/xst_options.gpcs_pma_inst/RXCHARISK_TXCHARISK_INT_MUX_359_o ;
  wire \U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_TXCHARISK_INT_MUX_360_o ;
  wire \U0/xst_options.gpcs_pma_inst/RESTART_AN_SET_120 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM[3]_GND_14_o_Mux_12_o ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM[3]_GND_14_o_Mux_8_o ;
  wire \U0/xst_options.gpcs_pma_inst/SRESET_123 ;
  wire \U0/xst_options.gpcs_pma_inst/TXBUFERR_INT_124 ;
  wire \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ;
  wire \U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ;
  wire \U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ;
  wire \U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 ;
  wire \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_REG_141 ;
  wire \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_142 ;
  wire \U0/xst_options.gpcs_pma_inst/SRESET_PIPE_143 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RUDI_INVALID ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ;
  wire \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_SRL ;
  wire \U0/xst_options.gpcs_pma_inst/RXDISPERR_SRL ;
  wire \U0/xst_options.gpcs_pma_inst/RESET_INT_PIPE_167 ;
  wire \U0/xst_options.gpcs_pma_inst/RESET_INT_168 ;
  wire \U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ;
  wire \U0/xst_options.gpcs_pma_inst/DCM_LOCKED_SOFT_RESET_OR_2_o ;
  wire \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ;
  wire \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ;
  wire \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_174 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_175 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK_176 ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<3> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<4> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<5> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/RXBUFSTATUS[1]_GND_14_o_mux_16_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/XMIT_CONFIG ;
  wire \U0/xst_options.gpcs_pma_inst/XMIT_DATA ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_13_200 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[0] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[14] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o11_204 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER121 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_207 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<4>_229 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<3>_230 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<3>_231 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<2>_232 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<2>_233 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<1>_234 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<1>_235 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<0>_236 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<0>_237 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<4>_238 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<3>_239 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<3>_240 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<2>_241 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<2>_242 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<1>_243 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<1>_244 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<0>_245 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<0>_246 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_0 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<8>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<7>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<6>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<5>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<4>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<3>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<2>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<1>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<0>1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER8 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER7 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER6 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER5 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER4 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER3 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER2 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER1 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_LINK_TIMER_SATURATED_OR_38_o_inv ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0552_inv ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_MR_AN_ENABLE_REG2_XOR_49_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_GND_21_o_MUX_34_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_MR_AN_ENABLE_OR_66_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_PWR_17_o_OR_62_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_65_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_68_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_PHY_MODE_RX_CONFIG_REG[15]_AND_47_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_SYNC_STATUS_OR_83_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG4_AND_15_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG2_AND_17_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG2_337 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_338 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_350 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_352 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_366 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_2_367 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_2_369 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_371 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE[3]_GND_21_o_Mux_67_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PWR_17_o_STATE[3]_equal_63_o ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG4_377 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_378 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2_379 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG1_380 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG2_381 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG1_382 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_383 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_384 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_REG_385 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_386 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG2_387 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG1_388 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_389 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG2_396 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_MSB_REG_399 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2_402 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG1_403 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[0] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[1] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[2] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[3] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[4] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[5] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[6] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[7] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[8] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[9] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[10] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[11] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[12] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13] ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[15] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT511 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_95_o_0 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP5 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_97_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_75_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_266_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_23_o_MUX_272_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_107_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<3> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<4> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<5> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_109_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<3> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<4> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<5> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_18_o_MUX_259_o ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_475 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_478 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_479 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_481 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_S_483 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[0] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[1] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[3] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[6] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_490 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[0] ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[14] ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_516 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/_n0103_inv ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_527 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o2 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1_529 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51_530 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_183_o_norst ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_194_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_193_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_139_o_535 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_537 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_163_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_167_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_145_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<0> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<1> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<2> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<3> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<4> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<5> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<6> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<7> ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_234_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_WAIT_FOR_K_AND_203_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_LINK_OK_AND_198_o_553 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_K28p5_REG2_AND_205_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_211_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[11]_RXDATA[3]_MUX_296_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[3]_RXDATA[3]_MUX_288_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[12]_RXDATA[4]_MUX_295_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[4]_RXDATA[4]_MUX_287_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[13]_RXDATA[5]_MUX_294_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[5]_RXDATA[5]_MUX_286_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[14]_RXDATA[6]_MUX_293_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[6]_RXDATA[6]_MUX_285_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[15]_RXDATA[7]_MUX_292_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[7]_RXDATA[7]_MUX_284_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[8]_RXDATA[0]_MUX_299_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[0]_RXDATA[0]_MUX_291_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[9]_RXDATA[1]_MUX_298_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[1]_RXDATA[1]_MUX_290_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[10]_RXDATA[2]_MUX_297_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[2]_RXDATA[2]_MUX_289_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_249_o_572 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_182_o_575 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_194_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_278_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K23p7 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K29p7 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_116_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_587 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_588 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_596 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_K_597 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_598 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_599 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_600 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_601 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_ERR_602 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_603 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_604 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_605 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_606 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_607 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_608 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_609 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_CX_610 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_K_611 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_IDLE_D_612 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_614 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG3_615 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_626 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG2_629 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG2 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG3_634 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1_636 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_637 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG1_638 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_REG_639 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG2_640 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_642 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/I_643 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/T_644 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 ;
  wire N2;
  wire N4;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER21 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB9 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB91_650 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB92_651 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_652 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1-In21_653 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2-In21_654 ;
  wire N6;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o1_656 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o2_657 ;
  wire N10;
  wire N12;
  wire N14;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o1_661 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o2_662 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT2 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT1 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_665 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_666 ;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o1_672 ;
  wire N28;
  wire N30;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o1_675 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o2_676 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o3_677 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o4_678 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o1 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o12_680 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o13_681 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o1_682 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_159_o2_683 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_8_glue_rst_684 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_7_glue_rst_685 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_6_glue_rst_686 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_5_glue_rst_687 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_4_glue_rst_688 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_3_glue_rst_689 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_2_glue_rst_690 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_1_glue_rst_691 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_0_glue_rst_692 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_glue_set_693 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_glue_set_694 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT_glue_set_695 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE_glue_set_696 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_glue_set_697 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_glue_rst_698 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_glue_set_699 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_glue_set_700 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_glue_set_701 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_glue_set_702 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_glue_set_703 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_704 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_glue_set_705 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_706 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_707 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_708 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_709 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV_glue_set_710 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_glue_set_711 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_712 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_713 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>_rt_714 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>_rt_715 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>_rt_716 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>_rt_717 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>_rt_718 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>_rt_719 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>_rt_720 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>_rt_721 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>_rt_722 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>_rt_723 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>_rt_724 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>_rt_725 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>_rt_726 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>_rt_727 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>_rt_728 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>_rt_729 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>_rt_730 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<11>_rt_731 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<8>_rt_732 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_rstpot_733 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_734 ;
  wire \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_rstpot_735 ;
  wire \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_rstpot_736 ;
  wire \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_rstpot_737 ;
  wire \U0/xst_options.gpcs_pma_inst/SRESET_rstpot_738 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_rstpot_739 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_rstpot_740 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_rstpot_741 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_743 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_744 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_745 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_746 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_747 ;
  wire \U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_rstpot_748 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_rstpot_749 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/C_rstpot_750 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_751 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_752 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_753 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ;
  wire N34;
  wire N35;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_0_dpot1_758 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_1_dpot1_759 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_2_dpot1_760 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_3_dpot1_761 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_4_dpot1_762 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_5_dpot1_763 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_6_dpot1_764 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_7_dpot1_765 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_8_dpot1_766 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_9_dpot1_767 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_10_dpot1_768 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_11_dpot1_769 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_12_dpot1_770 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_13_dpot1_771 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_15_dpot1_772 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot_lut_773 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ABILITY_MATCH_2_GND_21_o_MUX_34_o11_lut_774 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_rstpot_775 ;
  wire \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_rstpot_776 ;
  wire N45;
  wire N47;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire N59;
  wire N61;
  wire N63;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_786 ;
  wire \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_787 ;
  wire N65;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire N70;
  wire N71;
  wire N72;
  wire N73;
  wire N74;
  wire \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_798 ;
  wire \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12_799 ;
  wire \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1_800 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_801 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_802 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_803 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_804 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_805 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_806 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_807 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_808 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_809 ;
  wire \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_810 ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2_Q15_UNCONNECTED ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/TXDATA ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD ;
  wire [1 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED ;
  wire [1 : 1] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/BASEX_REMOTE_FAULT ;
  wire [3 : 2] \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG ;
  wire [2 : 0] \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT ;
  wire [1 : 1] \U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/RXDATA_INT ;
  wire [15 : 0] \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG ;
  wire [1 : 0] \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA ;
  wire [8 : 8] NlwRenamedSig_OI_status_vector;
  wire [10 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy ;
  wire [0 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_lut ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy ;
  wire [0 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_lut ;
  wire [8 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy ;
  wire [11 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 ;
  wire [11 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result ;
  wire [1 : 1] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0590 ;
  wire [8 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER ;
  wire [8 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER ;
  wire [2 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE ;
  wire [3 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE ;
  wire [1 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY ;
  wire [15 : 0] \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG ;
  wire [1 : 0] \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Result ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 ;
  wire [1 : 0] \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS ;
  wire [2 : 0] \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG ;
  wire [3 : 0] \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG ;
  wire [7 : 0] \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 ;
  assign
    txdata[7] = \U0/xst_options.gpcs_pma_inst/TXDATA [7],
    txdata[6] = \U0/xst_options.gpcs_pma_inst/TXDATA [6],
    txdata[5] = \U0/xst_options.gpcs_pma_inst/TXDATA [5],
    txdata[4] = \U0/xst_options.gpcs_pma_inst/TXDATA [4],
    txdata[3] = \U0/xst_options.gpcs_pma_inst/TXDATA [3],
    txdata[2] = \U0/xst_options.gpcs_pma_inst/TXDATA [2],
    txdata[1] = \U0/xst_options.gpcs_pma_inst/TXDATA [1],
    txdata[0] = \U0/xst_options.gpcs_pma_inst/TXDATA [0],
    gmii_rxd[7] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [7],
    gmii_rxd[6] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [6],
    gmii_rxd[5] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [5],
    gmii_rxd[4] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [4],
    gmii_rxd[3] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [3],
    gmii_rxd[2] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [2],
    gmii_rxd[1] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [1],
    gmii_rxd[0] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [0],
    status_vector[15] = NlwRenamedSig_OI_status_vector[8],
    status_vector[14] = NlwRenamedSig_OI_status_vector[8],
    status_vector[13] = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT ,
    status_vector[12] = \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_12_64 ,
    status_vector[11] = \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED [1],
    status_vector[10] = \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED [0],
    status_vector[9] = \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/BASEX_REMOTE_FAULT [1],
    status_vector[8] = NlwRenamedSig_OI_status_vector[8],
    status_vector[7] = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_16 ,
    status_vector[6] = \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_REG_69 ,
    status_vector[5] = \U0/xst_options.gpcs_pma_inst/RXDISPERR_REG_70 ,
    status_vector[4] = \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RUDI_INVALID_71 ,
    status_vector[3] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_I_72 ,
    status_vector[2] = \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_C_73 ,
    status_vector[1] = \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_1_74 ,
    status_vector[0] = \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_0_75 ,
    mgt_rx_reset = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ,
    mgt_tx_reset = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ,
    powerdown = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [2],
    txchardispmode = \U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_79 ,
    txchardispval = \U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_80 ,
    txcharisk = \U0/xst_options.gpcs_pma_inst/TXCHARISK_81 ,
    enablealign = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN ,
    gmii_rx_dv = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV ,
    gmii_rx_er = \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_ER_84 ,
    gmii_isolate = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3],
    an_interrupt = \NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(NlwRenamedSig_OI_status_vector[8])
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/DELAY_RXNOTINTABLE  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(N0),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_SRL )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/DELAY_RXDISPERR  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(N0),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDISPERR_SRL )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3-In ),
    .R(\U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync  (
    .C(userclk2),
    .D(signal_detect),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync_reg  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_SRL ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_REG_69 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RXDISPERR_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDISPERR_SRL ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDISPERR_REG_70 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_INT_GND_14_o_MUX_368_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_80 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_INT_TXEVEN_MUX_367_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_79 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [7])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [6])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [5])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [4])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXDATA_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXDATA [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXCHARISK  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TXCHARISK_INT_TXEVEN_MUX_366_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXCHARISK_81 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXCHARISK_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCHARISK_TXCHARISK_INT_MUX_359_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_TXCHARISK_INT_MUX_360_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDATA_INT_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS[1]_GND_14_o_mux_16_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_GND_14_o_MUX_356_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RXDISPERR_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDISPERR_GND_14_o_MUX_357_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_REG  (
    .C(userclk2),
    .D(an_restart_config),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_REG_141 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG_4  (
    .C(userclk2),
    .D(configuration_vector[4]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG_3  (
    .C(userclk2),
    .D(configuration_vector[3]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG_2  (
    .C(userclk2),
    .D(configuration_vector[2]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG_1  (
    .C(userclk2),
    .D(configuration_vector[1]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG_0  (
    .C(userclk2),
    .D(configuration_vector[0]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TXBUFERR_INT  (
    .C(userclk2),
    .D(txbuferr),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TXBUFERR_INT_124 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/SRESET_PIPE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SRESET_PIPE_143 )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TX_RST_SM[3]_GND_14_o_Mux_8_o ),
    .S(\U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RST_SM[3]_GND_14_o_Mux_12_o ),
    .S(\U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT )
  );
  FDP   \U0/xst_options.gpcs_pma_inst/RESET_INT  (
    .C(userclk),
    .D(\U0/xst_options.gpcs_pma_inst/RESET_INT_PIPE_167 ),
    .PRE(\U0/xst_options.gpcs_pma_inst/DCM_LOCKED_SOFT_RESET_OR_2_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 )
  );
  FDP   \U0/xst_options.gpcs_pma_inst/RESET_INT_PIPE  (
    .C(userclk),
    .D(NlwRenamedSig_OI_status_vector[8]),
    .PRE(\U0/xst_options.gpcs_pma_inst/DCM_LOCKED_SOFT_RESET_OR_2_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RESET_INT_PIPE_167 )
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<11>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [10]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<11>_rt_731 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [11])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<10>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [9]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>_rt_714 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [10])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [9]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>_rt_714 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [10])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<9>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [8]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>_rt_715 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [9])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [8]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>_rt_715 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [9])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<8>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [7]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>_rt_716 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [8])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [7]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>_rt_716 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [8])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [6]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>_rt_717 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [7])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [6]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>_rt_717 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [7])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [5]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>_rt_718 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [6])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [5]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>_rt_718 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [6])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [4]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>_rt_719 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [5])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [4]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>_rt_719 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [5])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [3]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>_rt_720 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [4])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [3]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>_rt_720 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [4])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [2]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>_rt_721 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [3])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [2]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>_rt_721 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [3])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [1]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>_rt_722 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [2])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [1]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>_rt_722 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [2])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [0]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>_rt_723 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [1])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [0]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>_rt_723 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [1])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<0>  (
    .CI(NlwRenamedSig_OI_status_vector[8]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [0])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<0>  (
    .CI(NlwRenamedSig_OI_status_vector[8]),
    .DI(N0),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy [0])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<8>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [7]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<8>_rt_732 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<8>1 )
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [6]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>_rt_724 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<7>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [6]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>_rt_724 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [7])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [5]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>_rt_725 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<6>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [5]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>_rt_725 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [6])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [4]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>_rt_726 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<5>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [4]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>_rt_726 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [5])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [3]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>_rt_727 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<4>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [3]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>_rt_727 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [4])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [2]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>_rt_728 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<3>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [2]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>_rt_728 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [3])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [1]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>_rt_729 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<2>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [1]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>_rt_729 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [2])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [0]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>_rt_730 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<1>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [0]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>_rt_730 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [1])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<0>  (
    .CI(NlwRenamedSig_OI_status_vector[8]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<0>1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<0>  (
    .CI(NlwRenamedSig_OI_status_vector[8]),
    .DI(N0),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy [0])
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<3>_230 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<4>_229 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<4>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[12] ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<4>_229 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<2>_232 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<3>_231 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<3>_230 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<3>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[9] ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[10] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[11] ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<3>_231 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<1>_234 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<2>_233 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<2>_232 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<2>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[6] ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[7] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[8] ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<2>_233 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<0>_236 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<1>_235 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<1>_234 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<1>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[3] ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[4] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[5] ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<1>_235 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<0>  (
    .CI(N0),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<0>_237 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_cy<0>_236 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<0>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[0] ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[1] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[2] ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o_lut<0>_237 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<3>_239 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<4>_238 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<4>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [12]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [13]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<4>_238 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<2>_241 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<3>_240 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<3>_239 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<3>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [9]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [10]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [11]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<3>_240 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<1>_243 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<2>_242 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<2>_241 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<2>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [6]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [7]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [8]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<2>_242 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<0>_245 ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<1>_244 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<1>_243 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<1>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [3]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [4]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [5]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<1>_244 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<0>  (
    .CI(N0),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<0>_246 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_cy<0>_245 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<0>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [2]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcompar_RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o_lut<0>_246 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_8  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER8 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [8])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_7  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER7 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [7])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_6  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER6 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [6])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_5  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER5 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [5])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_4  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER4 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [4])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_3  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER3 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [3])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER2 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [2])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER1 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [1])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_11  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [11]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [11])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_10  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [10]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [10])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_9  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [9]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [9])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_8  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [8]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [8])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [7]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [7])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [6]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [6])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [5]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [5])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [4]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [4])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [3]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [2]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [1]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result [0]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [0])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<8>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [7]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER8 )
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [6]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [7]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER7 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<7>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [6]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [7]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [7])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [5]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [6]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER6 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<6>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [5]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [6]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [6])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [4]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER5 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<5>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [4]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [5])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [3]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [4]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER4 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<4>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [3]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [4]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [4])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [2]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER3 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<3>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [2]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [3])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [1]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER2 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<2>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [1]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [2])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [0]),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER1 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<1>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [0]),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [1])
  );
  XORCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_xor<0>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_LINK_TIMER_SATURATED_OR_38_o_inv ),
    .LI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy<0>  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_LINK_TIMER_SATURATED_OR_38_o_inv ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_cy [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG2_396 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT_14  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE[3]_GND_21_o_Mux_67_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER121 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[14] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE[3]_GND_21_o_Mux_67_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0590 [1]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[0] )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PWR_17_o_STATE[3]_equal_63_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [2]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [1]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [0]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [0])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_207 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2_402 ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG2_AND_17_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_366 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2_402 ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG4_AND_15_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_2_367 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG1_380 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2_379 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG1_382 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG2_381 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_MR_AN_ENABLE_REG2_XOR_49_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_389 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o11_204 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_2_369 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0552_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<1> ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED [1])
  );
  FDE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0552_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<0> ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED [0])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_GND_21_o_MUX_34_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_371 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_378 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG4_377 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_383 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG1_380 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_384 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG1_382 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG1_388 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG2_387 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RUDI_INVALID  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY [1]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RUDI_INVALID_71 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_MSB_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [11]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_MSB_REG_399 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG1_403 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2_402 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_338 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_338 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG2_337 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/BASEX_REMOTE_FAULT_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_PHY_MODE_RX_CONFIG_REG[15]_AND_47_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/BASEX_REMOTE_FAULT [1])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_16  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_16 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_13  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_13_200 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_68_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_383 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_65_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_384 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RUDI_INVALID ),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_SYNC_STATUS_OR_83_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_REG_385 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_PWR_17_o_OR_62_o ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RESTART_AN_SET_120 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG1_388 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY [0]),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o1 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_DELAY [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG1_403 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_15  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_15_dpot1_772 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[15] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_13  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_13_dpot1_771 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_12  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_12_dpot1_770 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[12] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_11  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_11_dpot1_769 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[11] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_10  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_10_dpot1_768 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[10] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_9  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_9_dpot1_767 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[9] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_8  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_8_dpot1_766 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[8] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_7  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_7_dpot1_765 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[7] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_6  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_6_dpot1_764 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[6] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_5  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_5_dpot1_763 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[5] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_4  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_4_dpot1_762 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[4] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_3  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_3_dpot1_761 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[3] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_2_dpot1_760 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[2] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_1_dpot1_759 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[1] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_0_dpot1_758 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[0] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_15  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [15])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_14  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [14])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_13  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [13])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_12  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [12])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_11  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [11])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_10  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [10])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_9  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [9])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_8  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [8])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_7  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [7])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_6  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [6])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_5  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [5])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_4  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [4])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_3  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [3])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_2  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [2])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [1])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [0])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Result [1]),
    .S(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Result [0]),
    .S(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [7])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [6])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [5])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [4])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_23_o_MUX_272_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK_176 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<7> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [7])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<6> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [6])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<5> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [5])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<4> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [4])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<3> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [3])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<2> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [2])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<1> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [1])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<0> ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [0])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_266_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_490 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[6] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[3] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[1] )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[0] )
  );
  FDSE   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ),
    .D(\U0/xst_options.gpcs_pma_inst/XMIT_CONFIG ),
    .S(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_109_o ),
    .S(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_175 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ),
    .D(\U0/xst_options.gpcs_pma_inst/XMIT_DATA ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_475 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/T  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_97_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_S  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_75_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_S_483 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1  (
    .C(userclk2),
    .D(gmii_tx_er),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1  (
    .C(userclk2),
    .D(gmii_tx_en),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG_14  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[14] ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[14] )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o ),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[0] ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[0] )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_7  (
    .C(userclk2),
    .D(gmii_txd[7]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [7])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_6  (
    .C(userclk2),
    .D(gmii_txd[6]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [6])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_5  (
    .C(userclk2),
    .D(gmii_txd[5]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [5])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_4  (
    .C(userclk2),
    .D(gmii_txd[4]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [4])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_3  (
    .C(userclk2),
    .D(gmii_txd[3]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [3])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_2  (
    .C(userclk2),
    .D(gmii_txd[2]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [2])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_1  (
    .C(userclk2),
    .D(gmii_txd[1]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [1])
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1_0  (
    .C(userclk2),
    .D(gmii_txd[0]),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 ),
    .R(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 ),
    .R(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_516 ),
    .R(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 ),
    .R(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 )
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS_1  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/_n0103_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1])
  );
  FDRE   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS_0  (
    .C(userclk2),
    .CE(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/_n0103_inv ),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0])
  );
  FD   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_527 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [7])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [6])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [5])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [4])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXD_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXD [0])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG3_634 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG2 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG3_615 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG2_629 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [1]),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [0]),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_600 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_599 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_604 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_603 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_642 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG1_638 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_637 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2]),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [3])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1]),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0]),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_601 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_600 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_605 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_604 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_15  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[15]_RXDATA[7]_MUX_292_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_14  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[14]_RXDATA[6]_MUX_293_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_13  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[13]_RXDATA[5]_MUX_294_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_12  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[12]_RXDATA[4]_MUX_295_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_11  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[11]_RXDATA[3]_MUX_296_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_10  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[10]_RXDATA[2]_MUX_297_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_9  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[9]_RXDATA[1]_MUX_298_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_8  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[8]_RXDATA[0]_MUX_299_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[7]_RXDATA[7]_MUX_284_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[6]_RXDATA[6]_MUX_285_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[5]_RXDATA[5]_MUX_286_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[4]_RXDATA[4]_MUX_287_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[3]_RXDATA[3]_MUX_288_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[2]_RXDATA[2]_MUX_289_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[1]_RXDATA[1]_MUX_290_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[0]_RXDATA[0]_MUX_291_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0])
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_643 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1_636 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_644 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG1_638 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG2_640 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_I  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_194_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_I_72 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_C  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_193_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RUDI_C_73 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_K  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_278_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_K_597 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_598 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_ER  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_249_o_572 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_ER_84 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_ERR  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_163_o ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_ERR_602 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_234_o ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_605 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_608 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_211_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_609 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_145_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_607 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_K  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_K28p5_REG2_AND_205_o ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_K_611 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_IDLE_D  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_WAIT_FOR_K_AND_203_o ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_IDLE_D_612 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_CX  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_139_o_535 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_CX_610 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_614 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/R  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/K23p7 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_116_o ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_537 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_REG_639 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/I  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_182_o_575 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_643 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/S  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/T  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/K29p7 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_644 )
  );
  LUT4 #(
    .INIT ( 16'hEA6A ))
  \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ),
    .O(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hEA6A ))
  \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hE666 ))
  \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'hE666 ))
  \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ),
    .O(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXCHARDISPVAL_INT_GND_14_o_MUX_368_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_174 ),
    .O(\U0/xst_options.gpcs_pma_inst/TXCHARDISPVAL_INT_GND_14_o_MUX_368_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXCHARDISPMODE_INT_TXEVEN_MUX_367_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_175 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXCHARDISPMODE_INT_TXEVEN_MUX_367_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXCHARISK_INT_TXEVEN_MUX_366_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK_176 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXCHARISK_INT_TXEVEN_MUX_366_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [1]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT31  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT41  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT51  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [4]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT61  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [5]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT71  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_TXDATA_INT[7]_GND_14_o_mux_25_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TXDATA_INT[7]_GND_14_o_mux_25_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXCHARISK_TXCHARISK_INT_MUX_359_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxcharisk),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK_176 ),
    .O(\U0/xst_options.gpcs_pma_inst/RXCHARISK_TXCHARISK_INT_MUX_359_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXCHARISCOMMA_TXCHARISK_INT_MUX_360_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxchariscomma),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARISK_176 ),
    .O(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_TXCHARISK_INT_MUX_360_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[0]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [0]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[1]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT31  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[2]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT41  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[3]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT51  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[4]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [4]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT61  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[5]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [5]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT71  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[6]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDATA[7]_TXDATA_INT[7]_mux_15_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdata[7]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXDATA [7]),
    .O(\U0/xst_options.gpcs_pma_inst/RXDATA[7]_TXDATA_INT[7]_mux_15_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXNOTINTABLE_GND_14_o_MUX_356_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxnotintable),
    .O(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_GND_14_o_MUX_356_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXDISPERR_GND_14_o_MUX_357_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxdisperr),
    .O(\U0/xst_options.gpcs_pma_inst/RXDISPERR_GND_14_o_MUX_357_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXBUFSTATUS[1]_GND_14_o_mux_16_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxbufstatus[1]),
    .O(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS[1]_GND_14_o_mux_16_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXCLKCORCNT[2]_GND_14_o_mux_17_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxclkcorcnt[0]),
    .O(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXCLKCORCNT[2]_GND_14_o_mux_17_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxclkcorcnt[1]),
    .O(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/Mmux_RXCLKCORCNT[2]_GND_14_o_mux_17_OUT31  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I1(rxclkcorcnt[2]),
    .O(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT[2]_GND_14_o_mux_17_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \U0/xst_options.gpcs_pma_inst/RX_RST_SM_RX_RST_SM[3]_GND_14_o_Mux_12_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RST_SM[3]_GND_14_o_Mux_12_o )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1-In1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ),
    .O(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \U0/xst_options.gpcs_pma_inst/TX_RST_SM_TX_RST_SM[3]_GND_14_o_Mux_8_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ),
    .O(\U0/xst_options.gpcs_pma_inst/TX_RST_SM[3]_GND_14_o_Mux_8_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RESET_INT_RXBUFSTATUS_INT[1]_OR_196_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TXBUFERR_INT_124 ),
    .O(\U0/xst_options.gpcs_pma_inst/RESET_INT_TXBUFERR_INT_OR_195_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/DCM_LOCKED_SOFT_RESET_OR_2_o1  (
    .I0(reset),
    .I1(dcm_locked),
    .O(\U0/xst_options.gpcs_pma_inst/DCM_LOCKED_SOFT_RESET_OR_2_o )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o111  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [14]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o11_204 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0555_inv )
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_MR_AN_ENABLE_OR_66_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I3(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_MR_AN_ENABLE_OR_66_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER1211  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER121 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_STATE<2>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [2])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_STATE<1>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_STATE<0>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE [0])
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE[3]_GND_21_o_Mux_67_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE[3]_GND_21_o_Mux_67_o )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_PWR_17_o_OR_62_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_PWR_17_o_OR_62_o )
  );
  LUT4 #(
    .INIT ( 16'h2202 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux__n059081  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TX_CONFIG_REG_INT[0] ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0590 [1])
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG2_AND_17_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2_379 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_2_367 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_REMOVED_REG2_381 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG2_AND_17_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mxor_MR_AN_ENABLE_REG1_MR_AN_ENABLE_REG2_XOR_49_o_xo<0>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_338 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG2_337 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_REG1_MR_AN_ENABLE_REG2_XOR_49_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_SGMII_SPEED[1]_PWR_17_o_mux_87_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_SGMII_SPEED[1]_PWR_17_o_mux_87_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_SPEED[1]_PWR_17_o_mux_87_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PWR_17_o_STATE[3]_equal_63_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PWR_17_o_STATE[3]_equal_63_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0581_inv )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0552_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0552_inv )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_65_o<0>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_65_o )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_68_o<0>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_RXCLKCORCNT[0]_AND_68_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_SYNC_STATUS_OR_83_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_SYNC_STATUS_OR_83_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG4_AND_15_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2_379 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG4_377 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_IDLE_INSERTED_REG4_AND_15_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_RX_IDLE_OR_3_o )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT5111  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I1(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT511 )
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_TX_PACKET_CODE_GRP_CNT[1]_MUX_266_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_18_o_MUX_259_o ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_266_o )
  );
  LUT5 #(
    .INIT ( 32'hBFFAEAAF ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_107_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_479 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [6]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [5]),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP5 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_107_o )
  );
  LUT5 #(
    .INIT ( 32'hE881811F ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP51  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [3]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [4]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [2]),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP5 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT41  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_23_o_Mux_5_o )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT51  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [4]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT61  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [5]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [7]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'h4602 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[0] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hA280 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT71  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_CONFIG[14] ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF444044404440 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_97_o1  (
    .I0(gmii_tx_en),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_481 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_97_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF45455545 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_95_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_S_483 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ),
    .I2(gmii_tx_en),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 ),
    .I5(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_95_o_0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mcount_CODE_GRP_CNT_xor<1>11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Result [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000001 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_TX_PACKET_PWR_18_o_MUX_259_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I5(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_18_o_MUX_259_o )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_75_o1  (
    .I0(gmii_tx_en),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_75_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_109_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_490 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_109_o )
  );
  LUT6 #(
    .INIT ( 64'h0000577757770000 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/Mmux_GOOD_CGS[1]_GND_25_o_mux_30_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hA888FFFF ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/_n0103_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/_n0103_inv )
  );
  LUT5 #(
    .INIT ( 32'h01115555 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/Mmux_GOOD_CGS[1]_GND_25_o_mux_30_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_GND_25_o_mux_30_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF2A8F2AAAA28AA2A ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In21  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 )
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_01  (
    .I0(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[1] ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_527 ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o<1>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEFC ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT41  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT31  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT61  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K29p71  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1_529 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K29p7 )
  );
  LUT6 #(
    .INIT ( 64'h5555555500000040 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_642 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1_529 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF4540 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT51  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_ERR_602 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [4]),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'h1110 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o21  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o2 )
  );
  LUT4 #(
    .INIT ( 16'h2002 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_278_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51_530 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_278_o )
  );
  LUT5 #(
    .INIT ( 32'h08080800 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_211_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_588 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_211_o )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_K28p5_REG2_AND_205_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG2_640 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_K28p5_REG2_AND_205_o )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K23p71  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1_529 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K23p7 )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_116_o ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o1_529 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_178_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p52  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51_530 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_26_o_mux_9_OUT71  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [6]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_26_o_mux_9_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[3]_RXDATA[3]_MUX_288_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[3]_RXDATA[3]_MUX_288_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[5]_RXDATA[5]_MUX_286_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[5]_RXDATA[5]_MUX_286_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[4]_RXDATA[4]_MUX_287_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[4]_RXDATA[4]_MUX_287_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[6]_RXDATA[6]_MUX_285_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[6]_RXDATA[6]_MUX_285_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[7]_RXDATA[7]_MUX_284_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[7]_RXDATA[7]_MUX_284_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[0]_RXDATA[0]_MUX_291_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[0]_RXDATA[0]_MUX_291_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[2]_RXDATA[2]_MUX_289_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[2]_RXDATA[2]_MUX_289_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[1]_RXDATA[1]_MUX_290_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_C_AND_185_o ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[1]_RXDATA[1]_MUX_290_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_194_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_194_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_193_o<0>1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_193_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_163_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_626 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG3_615 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_599 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_163_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_145_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_608 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_145_o )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_234_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_644 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_234_o )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_WAIT_FOR_K_AND_203_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_588 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK_WAIT_FOR_K_AND_203_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_194_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_194_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_116_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_116_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o1  (
    .I0(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_371 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000002100000000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [15]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I4(N2),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_207 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [3]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PREVIOUS_STATE [0]),
    .I5(N4),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0545_320 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB91  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [7]),
    .I1(link_timer_value[7]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [6]),
    .I3(link_timer_value[6]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [5]),
    .I5(link_timer_value[5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB9 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB92  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [2]),
    .I1(link_timer_value[2]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [1]),
    .I3(link_timer_value[1]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [8]),
    .I5(link_timer_value[8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB91_650 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB93  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [0]),
    .I1(link_timer_value[0]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [4]),
    .I3(link_timer_value[4]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [3]),
    .I5(link_timer_value[3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB92_651 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB94  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB9 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB91_650 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB92_651 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_COMB )
  );
  LUT4 #(
    .INIT ( 16'h22F0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In3  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_652 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDD000000F000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1-In21  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1-In21_653 )
  );
  LUT6 #(
    .INIT ( 64'h101155553233FFFF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2-In21  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2-In21_654 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381<8>_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [4]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [2]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o1_656 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o2_657 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o3  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o1_656 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o2_657 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT4_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFFBABB55551011 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT4  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I4(N10),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[3] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT7_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hDDDDDCCC11111000 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT7  (
    .I0(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [6]),
    .I4(N12),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[6] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT3_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFBABB55551011 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT3  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I2(N14),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I4(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[7] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o1  (
    .I0(gmii_txd[3]),
    .I1(gmii_txd[7]),
    .I2(gmii_txd[4]),
    .I3(gmii_txd[5]),
    .I4(gmii_txd[6]),
    .I5(gmii_txd[2]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o1_661 )
  );
  LUT6 #(
    .INIT ( 64'hA8AAAAAA20222222 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o2  (
    .I0(gmii_tx_er),
    .I1(gmii_tx_en),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o1_661 ),
    .I3(gmii_txd[0]),
    .I4(gmii_txd[1]),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o2_662 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF5540 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT2 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT22  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT2 ),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[1] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF55555540 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXD_REG1 [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT1 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT12  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_PWR_18_o_CONFIG_DATA[7]_mux_21_OUT1 ),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[0] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/PWR_18_o_CONFIG_DATA[7]_mux_21_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h7777555722220002 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In32  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_665 ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 )
  );
  LUT6 #(
    .INIT ( 64'h91C49BE4DD80DFA0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_666 )
  );
  LUT5 #(
    .INIT ( 32'h4040FF40 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In22  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_666 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_249_o_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_606 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_613 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'h0002020200000200 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_249_o  (
    .I0(\U0/xst_options.gpcs_pma_inst/XMIT_DATA ),
    .I1(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I4(N20),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_249_o_572 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_LINK_OK_AND_198_o_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000010000000000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_LINK_OK_AND_198_o  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_K_597 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_596 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_598 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I4(N22),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_LINK_OK_AND_198_o_553 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_182_o_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_598 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_596 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_K_597 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h00000000AA880808 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_182_o  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I3(N24),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_183_o_norst ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_182_o_575 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h0000000000800000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I5(N26),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p51_530 )
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o1_672 )
  );
  LUT6 #(
    .INIT ( 64'h0013001100030000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o3  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_118_o1_672 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_183_o_norst )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I5(N28),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_537 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_139_o_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA2AFF2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_139_o  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG3_634 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 ),
    .I4(N30),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_139_o_535 )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o1_675 )
  );
  LUT4 #(
    .INIT ( 16'h0254 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o2_676 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o3  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o3_677 )
  );
  LUT6 #(
    .INIT ( 64'hFF171717FF000000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o4  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o3_677 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o2_676 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o1_675 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o4_678 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o5  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o4_678 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_270_o )
  );
  LUT6 #(
    .INIT ( 64'hE8FFFFFFFFFFFFFF ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o13  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o13_681 )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_637 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1_636 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o1_682 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FF80FF80 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/D0p0_REG_639 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o1_682 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_144_o )
  );
  LUT5 #(
    .INIT ( 32'h54545554 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_159_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1_636 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_637 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG1_638 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_159_o2_683 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RESTART_AN_SET  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_142 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RESTART_AN_SET_120 )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_8  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_8_glue_rst_684 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [8])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_7  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_7_glue_rst_685 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [7])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_6  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_6_glue_rst_686 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [6])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_5_glue_rst_687 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [5])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_4_glue_rst_688 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [4])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_3_glue_rst_689 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [3])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_2_glue_rst_690 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [2])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_1_glue_rst_691 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [1])
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_0  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_0_glue_rst_692 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [0])
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_glue_set_693 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_glue_set_694 ),
    .R(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RESET_SYNC_STATUS_OR_83_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT_glue_set_695 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE_glue_set_696 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_glue_set_697 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_glue_rst_698 ),
    .S(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_glue_set_699 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_350 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_glue_set_700 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_glue_set_701 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_352 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_glue_set_702 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/V  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_glue_set_703 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_704 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/R  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_glue_set_705 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 )
  );
  FDS   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_706 ),
    .S(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_707 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_708 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_709 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV_glue_set_710 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_glue_set_711 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_712 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_587 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_713 ),
    .R(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_588 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [10]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<10>_rt_714 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [9]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<9>_rt_715 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<8>_rt_716 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [7]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<7>_rt_717 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [6]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<6>_rt_718 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<5>_rt_719 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [4]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<4>_rt_720 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<3>_rt_721 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<2>_rt_722 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_cy<1>_rt_723 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [7]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<7>_rt_724 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [6]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<6>_rt_725 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<5>_rt_726 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [4]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<4>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<3>_rt_728 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<2>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_cy<1>_rt_730 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<11>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_xor<11>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<8>_rt  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_xor<8>_rt_732 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_RX_CONFIG_REG[15]_equal_17_o ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_rstpot_733 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_rstpot_733 ),
    .R(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 )
  );
  FDR   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_734 ),
    .R(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_rstpot_735 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_rstpot_736 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_rstpot_737 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_142 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_options.gpcs_pma_inst/SRESET_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_PIPE_143 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .O(\U0/xst_options.gpcs_pma_inst/SRESET_rstpot_738 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/SRESET  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SRESET_rstpot_738 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SRESET_123 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_rstpot_739 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_378 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_rstpot_740 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_386 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_rstpot_741 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_743 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_478 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_18_o_MUX_259_o ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_744 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_744 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_745 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_479 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_746 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_174 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_747 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_481 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_95_o_0 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_475 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_rstpot_748 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/S  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_rstpot_748 ),
    .Q(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_rstpot_749 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/C  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_rstpot_750 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_642 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_751 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_596 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_752 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_601 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_753 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_606 )
  );
  LUT5 #(
    .INIT ( 32'h11110001 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I3(\U0/xst_options.gpcs_pma_inst/XMIT_DATA ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o1 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .O(\U0/xst_options.gpcs_pma_inst/XMIT_DATA )
  );
  LUT5 #(
    .INIT ( 32'hFFFFBFBB ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o11_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_350 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_389 ),
    .O(N34)
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o11_SW1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_389 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_350 ),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'hFF44FF45BB00BA00 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o2  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I3(N35),
    .I4(\U0/xst_options.gpcs_pma_inst/XMIT_DATA ),
    .I5(N34),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000054 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG2_396 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER21 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_glue_set_700 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [6]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [8]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [5]),
    .I5(N6),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv )
  );
  LUT6 #(
    .INIT ( 64'h444444444444F444 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_167_o ),
    .I1(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG3_628 ),
    .I4(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I5(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DV_glue_set_710 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_0_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[0] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_0_dpot1_758 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_1_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[1] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_1_dpot1_759 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_2_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[2] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [2]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_2_dpot1_760 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_3_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[3] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [3]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_3_dpot1_761 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_4_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[4] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [4]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_4_dpot1_762 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_5_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[5] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [5]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_5_dpot1_763 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_6_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[6] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [6]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_6_dpot1_764 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_7_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[7] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [7]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_7_dpot1_765 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_8_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[8] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_8_dpot1_766 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_9_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[9] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_9_dpot1_767 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_10_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[10] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_10_dpot1_768 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_11_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[11] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_11_dpot1_769 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_12_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[12] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_12_dpot1_770 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_13_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_13_dpot1_771 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_15_dpot1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[15] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT_15_dpot1_772 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA9999995 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o12  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I5(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o12_680 )
  );
  LUT6 #(
    .INIT ( 64'hFF51FF51FF51FFFF ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_167_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_607 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_167_o )
  );
  LUT4 #(
    .INIT ( 16'hAE00 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK )
  );
  LUT5 #(
    .INIT ( 32'h20222222 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv2_rstpot_754 )
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot_lut  (
    .I0(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[15] ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot_lut_773 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot_cy  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_SNAPSHOT[13]_RX_CONFIG_REG[13]_equal_16_o ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot_lut_773 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_rstpot )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ABILITY_MATCH_2_GND_21_o_MUX_34_o11_lut  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [15]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ABILITY_MATCH_2_GND_21_o_MUX_34_o11_lut_774 )
  );
  MUXCY   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ABILITY_MATCH_2_GND_21_o_MUX_34_o11_cy  (
    .CI(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG[13]_RX_CONFIG_REG[13]_equal_8_o ),
    .DI(NlwRenamedSig_OI_status_vector[8]),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ABILITY_MATCH_2_GND_21_o_MUX_34_o11_lut_774 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_GND_21_o_MUX_34_o )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<0>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [0])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<1>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<2>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [2]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<3>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [3]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<4>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [4]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<5>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [5]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<6>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_rstpot_775 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_rstpot_776 ),
    .Q(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_8_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [8]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<8>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_8_glue_rst_684 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_7_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<7>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_7_glue_rst_685 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_6_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [6]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<6>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_6_glue_rst_686 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_5_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<5>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_5_glue_rst_687 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_4_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [4]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<4>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_4_glue_rst_688 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_3_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [3]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<3>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_3_glue_rst_689 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_2_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<2>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_2_glue_rst_690 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<7>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [7]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_LINK_TIMER_SATURATED_OR_38_o_inv1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_LINK_TIMER_SATURATED_OR_38_o_inv )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_1_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<1>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_1_glue_rst_691 )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_350 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GND_21_o_MR_AN_ENABLE_OR_66_o ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG1_388 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_SET_REG2_387 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_RESTART_AN_INT_glue_set_699 )
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_476 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_734 )
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_707 )
  );
  LUT6 #(
    .INIT ( 64'h0001010101010101 ))
  \U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_91 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd2_89 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd3_90 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd1_88 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RST_SM_FSM_FFd4_rstpot_735 )
  );
  LUT6 #(
    .INIT ( 64'h0001010101010101 ))
  \U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RESET_INT_168 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TXBUFERR_INT_124 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_98 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd2_96 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd3_97 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd1_95 ),
    .O(\U0/xst_options.gpcs_pma_inst/TX_RST_SM_FSM_FFd4_rstpot_736 )
  );
  LUT6 #(
    .INIT ( 64'hFF555555FF3FFFFF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER22_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(N45)
  );
  LUT5 #(
    .INIT ( 32'h0002CC02 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER22  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I4(N45),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER21 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_glue_set_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 ),
    .O(N47)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_glue_set_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1]),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2]),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAA222A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_RUDI_INVALID_REG_385 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I3(\U0/xst_options.gpcs_pma_inst/XMIT_DATA ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .I5(N51),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_glue_set_694 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_glue_set_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [6]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [7]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [8]),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'hFFFF8AAA8AAA8AAA ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I1(N53),
    .I2(N6),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [0]),
    .I4(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_glue_set_697 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut<8>  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER_REG_397 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER [8]),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_LINK_TIMER_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_145 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_glue_set_702 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_704 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/EOP_608 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG2_629 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_708 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG1  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .O(\U0/xst_options.gpcs_pma_inst/XMIT_CONFIG )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT_glue_set  (
    .I0(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_16 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_386 ),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_REMOTE_FAULT_glue_set_695 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_rstpot  (
    .I0(an_restart_config),
    .I1(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_REG_141 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .O(\U0/xst_options.gpcs_pma_inst/RESTART_AN_EN_rstpot_737 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG2_379 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_IDLE_REG2_402 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_INSERTED_REG3_rstpot_739 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096_MSB_REG_399 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [11]),
    .I2(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_rstpot_741 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CONFIG_DATA[3] ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_745 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ),
    .I1(gmii_tx_en),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_747 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG2_531 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/RXCLKCORCNT_INT [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_rstpot_749 )
  );
  LUT6 #(
    .INIT ( 64'h2222222200020000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_131_o ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_194_o ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_637 ),
    .I5(N55),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_753 )
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_01_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ),
    .I1(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'hFFF4FFF5FBF0FAF0 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_01  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_CLKCOR_339 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I3(N35),
    .I4(N57),
    .I5(N34),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_0 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_glue_set_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RECEIVE_585 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_REG1_636 ),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hFFFF022202220222 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_584 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I4(N59),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_glue_set_711 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/C_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_183_o_norst ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_rstpot_750 )
  );
  LUT6 #(
    .INIT ( 64'hFF3F0000AA2AAA2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_0_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Result<0>1 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/n0381_inv ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER_0_glue_rst_692 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF54FF5454 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_IDLE_D_612 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_K_611 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/FROM_RX_CX_610 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_709 )
  );
  LUT6 #(
    .INIT ( 64'h0010000000000010 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_2_371 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RECEIVED_IDLE_355 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [15]),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/_n0569_inv1_rstpot_757 )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_2_369 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_REG [14]),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_340 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_GND_21_o_MUX_42_o )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRPISK_GND_23_o_MUX_272_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_478 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_23_o_MUX_272_o )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT11  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [0]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT21  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT31  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT41  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [3]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h2AEA ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT51  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [4]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT61  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [5]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT71  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [6]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_23_o_mux_24_OUT81  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP [7]),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_23_o_mux_24_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[11]_RXDATA[3]_MUX_296_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [11]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[11]_RXDATA[3]_MUX_296_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[12]_RXDATA[4]_MUX_295_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [12]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[12]_RXDATA[4]_MUX_295_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[13]_RXDATA[5]_MUX_294_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [13]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[13]_RXDATA[5]_MUX_294_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[14]_RXDATA[6]_MUX_293_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [14]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[14]_RXDATA[6]_MUX_293_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[8]_RXDATA[0]_MUX_299_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [8]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[8]_RXDATA[0]_MUX_299_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[15]_RXDATA[7]_MUX_292_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[15]_RXDATA[7]_MUX_292_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[9]_RXDATA[1]_MUX_298_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [9]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[9]_RXDATA[1]_MUX_298_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAABBBAAAAA888A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mmux_RX_CONFIG_REG[10]_RXDATA[2]_MUX_297_o11  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [10]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_633 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_631 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG[10]_RXDATA[2]_MUX_297_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF1011 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_RUDI_INVALID1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_DATA_INT_325 ),
    .I2(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I3(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[0] ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_INVALID_586 ),
    .O(\U0/xst_options.gpcs_pma_inst/RX_RUDI_INVALID )
  );
  LUT6 #(
    .INIT ( 64'hFFF00000FFFF0020 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_665 )
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_587 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_LINK_OK_AND_198_o_553 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_712 )
  );
  LUT5 #(
    .INIT ( 32'h00007530 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1-In21_653 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_0 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_rstpot_775 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCCE00CE ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2-In21_654 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o_0 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_rstpot_776 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o1  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o2 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXBUFSTATUS_INT [1]),
    .I4(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_192_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF8FC ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_rstpot_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1-In21_653 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_652 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o ),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I3(N61),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/GENERATE_REMOTE_FAULT_rstpot_740 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF4440 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_499 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_glue_set_705 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AAA8AAB8BAA8A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_351 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SRESET_123 ),
    .I4(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/XMIT_CONFIG_INT_glue_rst_698 )
  );
  LUT4 #(
    .INIT ( 16'hC8CA ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_COMPLETE_glue_set_696 )
  );
  LUT5 #(
    .INIT ( 32'h5515AA2A ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_480 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_107_o ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_706 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF88A888A888A8 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_475 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_87_o2_662 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_500 ),
    .I3(N47),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_glue_set_703 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_SW0  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/I_REG_146 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_603 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/C_REG1_635 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG3_615 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_159_o2_683 ),
    .O(N55)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_SW1  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TX_PACKET_473 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/T_482 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/S_484 ),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/V_471 ),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'h55545554FFFE5554 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_474 ),
    .I1(N63),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG [3]),
    .I3(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/R_472 ),
    .I4(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I5(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_743 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF08081908 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mmux_START_LINK_TIMER23  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(N45),
    .I3(\U0/xst_options.gpcs_pma_inst/CONFIGURATION_VECTOR_REG[4] ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_AN_ENABLE_CHANGE_RX_RUDI_INVALID_INT_OR_51_o ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/START_LINK_TIMER )
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_352 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_glue_set_701 )
  );
  LUT5 #(
    .INIT ( 32'hFFEAFF2A ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_353 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/PULSE4096_400 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_SATURATED_398 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SYNC_STATUS_HELD_352 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/AN_SYNC_STATUS_glue_set_693 )
  );
  LUT5 #(
    .INIT ( 32'h2A2AFF2A ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_588 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_641 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/EVEN_164 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_614 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_713 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_490 ),
    .I1(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/DISPARITY_470 ),
    .I2(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_TX_RESET_INT ),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_746 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .I2(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/MGT_RX_RESET_INT ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_194_o ),
    .I4(\U0/xst_options.gpcs_pma_inst/RECEIVER/R_617 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RECEIVER/S_645 ),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_752 )
  );
  FD   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_786 ),
    .Q(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS  (
    .C(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_787 ),
    .Q(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 )
  );
  INV   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_lut<0>_INV_0  (
    .I(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/TIMER4096 [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_TIMER4096_lut [0])
  );
  INV   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_lut<0>_INV_0  (
    .I(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MASK_RUDI_BUFERR_TIMER [0]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/Mcount_MASK_RUDI_BUFERR_TIMER_lut [0])
  );
  INV   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_PHY_MODE_RX_CONFIG_REG[15]_AND_47_o1_INV_0  (
    .I(\U0/xst_options.gpcs_pma_inst/RECEIVER/RX_CONFIG_REG [15]),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/SGMII_PHY_MODE_RX_CONFIG_REG[15]_AND_47_o )
  );
  INV   \U0/xst_options.gpcs_pma_inst/TRANSMITTER/Mcount_CODE_GRP_CNT_xor<0>11_INV_0  (
    .I(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/xst_options.gpcs_pma_inst/TRANSMITTER/Result [0])
  );
  MUXF7   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2  (
    .I0(N65),
    .I1(N66),
    .S(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_516 )
  );
  LUT6 #(
    .INIT ( 64'hF0F4540400040404 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_F  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_20_o_equal_19_o ),
    .O(N65)
  );
  LUT5 #(
    .INIT ( 32'hDBDB8988 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_G  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXCHARISCOMMA_INT_140 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .O(N66)
  );
  MUXF7   \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot  (
    .I0(N67),
    .I1(N68),
    .S(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .O(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_751 )
  );
  LUT6 #(
    .INIT ( 64'h0404040004000000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_F  (
    .I0(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o12_680 ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o13_681 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RXDISPERR_INT_130 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .I5(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .O(N67)
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_G  (
    .I0(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .I1(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o12_680 ),
    .I2(\U0/xst_options.gpcs_pma_inst/RXNOTINTABLE_INT_129 ),
    .I3(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_188_o1 ),
    .I4(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .O(N68)
  );
  MUXF7   \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2  (
    .I0(N69),
    .I1(N70),
    .S(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3_250 ),
    .O(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_652 )
  );
  LUT6 #(
    .INIT ( 64'h1191111111111111 ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_F  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/CONSISTENCY_MATCH_404 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ACKNOWLEDGE_MATCH_3_368 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'h11559BFF9BFF9BFF ))
  \U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd3-In2_G  (
    .I0(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd1_248 ),
    .I1(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/STATE_FSM_FFd2_249 ),
    .I2(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/IDLE_MATCH_366 ),
    .I3(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/LINK_TIMER_DONE_354 ),
    .I4(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/ABILITY_MATCH_370 ),
    .I5(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/RX_CONFIG_REG_NULL_365 ),
    .O(N70)
  );
  MUXF7   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot  (
    .I0(N71),
    .I1(N72),
    .S(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_786 )
  );
  LUT6 #(
    .INIT ( 64'hAA8AAAAAAA8AAAAF ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_F  (
    .I0(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN ),
    .I1(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I5(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .O(N71)
  );
  LUT5 #(
    .INIT ( 32'hFFFFAA81 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_G  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\NlwRenamedSig_OI_U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN ),
    .O(N72)
  );
  MUXF7   \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot  (
    .I0(N73),
    .I1(N74),
    .S(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_787 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA8AAEAAAE8 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_F  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I5(\U0/xst_options.gpcs_pma_inst/RXCHARISK_INT_139 ),
    .O(N73)
  );
  LUT5 #(
    .INIT ( 32'h222A22A8 ))
  \U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_G  (
    .I0(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .I1(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_512 ),
    .I2(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_514 ),
    .I3(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_513 ),
    .I4(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_515 ),
    .O(N74)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/LINK_OK ),
    .Q(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_798 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_0  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_798 ),
    .Q(\U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_0_75 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/HAS_AUTO_NEG.AUTO_NEGOTIATION/MR_LP_ADV_ABILITY_INT_13_200 ),
    .Q(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12_799 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_12  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_12_799 ),
    .Q(\U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_12_64 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_163 ),
    .Q(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1_800 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_1  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/Mshreg_STATUS_VECTOR_1_800 ),
    .Q(\U0/xst_options.gpcs_pma_inst/STATUS_VECTOR_1_74 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [7]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_801 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_7  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_801 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [6]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_802 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_6  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_802 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [5]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_803 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_5  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_803 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [4]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_804 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_4  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_804 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [3]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_805 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_3  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_805 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [2]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_806 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_2  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_806 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [1]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_807 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_1  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_807 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RXDATA_INT [0]),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_808 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5_0  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_808 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/RXDATA_REG5 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG1_627 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_809 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_809 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/EXTEND_REG3_626 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_616 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/CGBAD_REG2 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2  (
    .A0(NlwRenamedSig_OI_status_vector[8]),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_609 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_810 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_Q15_UNCONNECTED )
  );
  FDE   \U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG2  (
    .C(userclk2),
    .CE(N0),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_810 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/SOP_REG2_629 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_status_vector[8]),
    .A2(NlwRenamedSig_OI_status_vector[8]),
    .A3(NlwRenamedSig_OI_status_vector[8]),
    .CE(N0),
    .CLK(userclk2),
    .D(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_587 ),
    .Q(\U0/xst_options.gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ),
    .Q15(\NLW_U0/xst_options.gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2_Q15_UNCONNECTED )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
