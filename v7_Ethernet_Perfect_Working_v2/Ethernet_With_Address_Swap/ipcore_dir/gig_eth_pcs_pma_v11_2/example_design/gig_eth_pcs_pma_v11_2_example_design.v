//------------------------------------------------------------------------------
// File       : gig_eth_pcs_pma_v11_2_example_design.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// 
// 
//------------------------------------------------------------------------------
// Description: This is the top level Verilog example design for the
//              Ethernet 1000BASE-X PCS/PMA core.
//
//              This design example instantiates IOB flip-flops
//              and input/output buffers on the GMII.
//
//              A Transmitter Elastic Buffer is instantiated on the Tx
//              GMII path to perform clock compenstation between the
//              core and the external MAC driving the Tx GMII.
//
//              This design example can be synthesised.
//
//
//
//    ----------------------------------------------------------------
//    |                             Example Design                   |
//    |                                                              |
//    |             ----------------------------------------------   |
//    |             |           Core Block (wrapper)             |   |
//    |             |                                            |   |
//    |             |   --------------          --------------   |   |
//    |             |   |    Core    |          | tranceiver |   |   |
//    |             |   |            |          |            |   |   |
//    |  ---------  |   |            |          |            |   |   |
//    |  |       |  |   |            |          |            |   |   |
//    |  |  Tx   |  |   |            |          |            |   |   |
//  ---->|Elastic|----->| GMII       |--------->|        TXP |--------->
//    |  |Buffer |  |   | Tx         |          |        TXN |   |   |
//    |  |       |  |   |            |          |            |   |   |
//    |  ---------  |   |            |tranceiver|            |   |   |
//    | GMII        |   |            |    I/F   |            |   |   |
//    | IOBs        |   |            |          |            |   |   |
//    |             |   |            |          |            |   |   |
//    |             |   | GMII       |          |        RXP |   |   |
//  <-------------------| Rx         |<---------|        RXN |<---------
//    |             |   |            |          |            |   |   |
//    |             |   --------------          --------------   |   |
//    |             |                                            |   |
//    |             ----------------------------------------------   |
//    |                                                              |
//    ----------------------------------------------------------------
//
//


`timescale 1 ps/1 ps


//------------------------------------------------------------------------------
// The module declaration for the example design
//------------------------------------------------------------------------------

module gig_eth_pcs_pma_v11_2_example_design
   (

      // An independent clock source used as the reference clock for an
      // IDELAYCTRL (if present) and for the main GT transceiver reset logic.
      // This example design assumes that this is of frequency 200MHz.
      input            independent_clock,

      // Tranceiver Interface
      //---------------------

      input            gtrefclk_p,            // Differential +ve of reference clock for MGT: 125MHz, very high quality.
      input            gtrefclk_n,            // Differential -ve of reference clock for MGT: 125MHz, very high quality.
      output           txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output           txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input            rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input            rxn,                   // Differential -ve for serial reception from PMD to PMA.

      // GMII Interface (client MAC <=> PCS)
      //------------------------------------
      output           sgmii_clk,             // Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      input [7:0]      gmii_txd,              // Transmit data from client MAC.
      input            gmii_tx_en,            // Transmit control signal from client MAC.
      input            gmii_tx_er,            // Transmit control signal from client MAC.
      output reg [7:0] gmii_rxd,              // Received Data to client MAC.
      output reg       gmii_rx_dv,            // Received control signal to client MAC.
      output reg       gmii_rx_er,            // Received control signal to client MAC.
      // Management: Alternative to MDIO Interface
      //------------------------------------------

      input [4:0]      configuration_vector,  // Alternative to MDIO interface.

      output           an_interrupt,          // Interrupt to processor to signal that Auto-Negotiation has completed
      input [15:0]     an_adv_config_vector,  // Alternate interface to program REG4 (AN ADV)
      input            an_restart_config,     // Alternate signal to modify AN restart bit in REG0
      input [8:0]      link_timer_value,      // Programmable Auto-Negotiation Link Timer Control

      // Speed Control
      //--------------
      input            speed_is_10_100,       // Core should operate at either 10Mbps or 100Mbps speeds
      input            speed_is_100,          // Core should operate at 100Mbps speed

      // General IO's
      //-------------
      output reg [15:0] status_vector,         // Core status.
      input            reset,                 // Asynchronous reset for entire core.
      input            signal_detect          // Input from PMD to indicate presence of optical input.

   );



  //----------------------------------------------------------------------------
  // internal signals used in this top level example design.
  //----------------------------------------------------------------------------

   // clock generation signals for tranceiver
   wire         gtrefclk;                 // gtrefclk routed through an IBUFG.
   wire         txoutclk;                 // txoutclk from GT transceiver.
   wire         resetdone;                // To indicate that the GT transceiver has completed its reset cycle
   wire         mmcm_reset;               // MMCM reset signal.
   wire         clkfbout;                 // MMCM feedback clock
   wire         clkout0;                  // MMCM clock0 output (62.5MHz).
   wire         clkout1;                  // MMCM clock1 output (125MHz).
   wire         userclk;                  // 62.5MHz clock for GT transceiver Tx/Rx user clocks
   wire         userclk2;                 // 125MHz clock for core reference clock.

   (* ASYNC_REG = "TRUE" *)
   reg   [3:0]  pma_reset_pipe;           // flip-flop pipeline for reset duration stretch

   wire         pma_reset;                // Synchronous transcevier PMA reset

   // An independent clock source used as the reference clock for an
   // IDELAYCTRL (if present) and for the main GT transceiver reset logic.
   wire         independent_clock_bufg;

   // clock generation signals for SGMII clock
   wire         sgmii_clk_r;              // Clock to client MAC (125MHz, 12.5MHz or 1.25MHz) (to rising edge DDR).
   wire         sgmii_clk_f;              // Clock to client MAC (125MHz, 12.5MHz or 1.25MHz) (to falling edge DDR).

   // GMII signals
   wire         gmii_isolate;             // internal gmii_isolate signal.
   reg   [7:0]  gmii_txd_int;             // internal gmii_txd signal.
   reg          gmii_tx_en_int;           // internal gmii_tx_en signal.
   reg          gmii_tx_er_int;           // internal gmii_tx_er signal.
   wire  [7:0]  gmii_rxd_int;             // internal gmii_rxd signal.
   wire         gmii_rx_dv_int;           // internal gmii_rx_dv signal.
   wire         gmii_rx_er_int;           // internal gmii_rx_er signal.

   // Extra registers to ease IOB placement
   wire  [15:0]  status_vector_int;



   //---------------------------------------------------------------------------
   // An independent clock source used as the reference clock for an
   // IDELAYCTRL (if present) and for the main GT transceiver reset logic.
   //---------------------------------------------------------------------------

   // Route independent_clock input through a BUFG
   BUFG  bufg_independent_clock (
      .I         (independent_clock),
      .O         (independent_clock_bufg)
   );


   //---------------------------------------------------------------------------
   // Transceiver Clock Management
   //---------------------------------------------------------------------------

   // Clock circuitry for the Transceiver uses a differential input clock.
   // gtrefclk is routed to the tranceiver.
   IBUFDS_GTE2 ibufds_gtrefclk (
      .I     (gtrefclk_p),
      .IB    (gtrefclk_n),
      .CEB   (1'b0),
      .O     (gtrefclk),
      .ODIV2 ()
   );


  // The GT transceiver provides a 62.5MHz clock to the FPGA fabrix.  This is 
  // routed to an MMCM module where it is used to create phase and frequency
  // related 62.5MHz and 125MHz clock sources
  MMCME2_ADV # (
    .BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (10.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (10.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.5),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (5),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.5),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (16.0),
    .REF_JITTER1          (0.010)
  ) mmcm_adv_inst (
    // Output clocks
    .CLKFBOUT             (clkfbout),
    .CLKFBOUTB            (),
    .CLKOUT0              (clkout0),
    .CLKOUT0B             (),
    .CLKOUT1              (clkout1),
    .CLKOUT1B             (),
    .CLKOUT2              (),
    .CLKOUT2B             (),
    .CLKOUT3              (),
    .CLKOUT3B             (),
    .CLKOUT4              (),
    .CLKOUT5              (),
    .CLKOUT6              (),
    // Input clock control
    .CLKFBIN              (clkfbout),
    .CLKIN1               (txoutclk),
    .CLKIN2               (1'b0),
    // Tied to always select the primary input clock
    .CLKINSEL             (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR                (7'h0),
    .DCLK                 (1'b0),
    .DEN                  (1'b0),
    .DI                   (16'h0),
    .DO                   (),
    .DRDY                 (),
    .DWE                  (1'b0),
    // Ports for dynamic phase shift
    .PSCLK                (1'b0),
    .PSEN                 (1'b0),
    .PSINCDEC             (1'b0),
    .PSDONE               (),
    // Other control and status signals
    .LOCKED               (),
    .CLKINSTOPPED         (),
    .CLKFBSTOPPED         (),
    .PWRDWN               (1'b0),
    .RST                  (mmcm_reset)
   );

    assign mmcm_reset = reset||!resetdone;

   // This 62.5MHz clock is placed onto global clock routing and is then used
   // for tranceiver TXUSRCLK/RXUSRCLK.
   BUFG bufg_userclk (
      .I     (clkout0),
      .O     (userclk)
   );


   // This 125MHz clock is placed onto global clock routing and is then used
   // to clock all Ethernet core logic.
   BUFG bufg_userclk2 (
      .I     (clkout1),
      .O     (userclk2)
   );


   //---------------------------------------------------------------------------
   // Transceiver PMA reset circuitry
   //---------------------------------------------------------------------------

   always@(posedge independent_clock_bufg or posedge reset)
      if (reset == 1'b1)
         pma_reset_pipe <= 4'b1111;
      else
         pma_reset_pipe <= {pma_reset_pipe[2:0], reset};

   assign pma_reset = pma_reset_pipe[3];


  //----------------------------------------------------------------------------
  // Instantiate the Core Block (core wrapper).
  //----------------------------------------------------------------------------
 gig_eth_pcs_pma_v11_2_block core_wrapper
     (
      .gtrefclk              (gtrefclk),
      .txp                   (txp),
      .txn                   (txn),
      .rxp                   (rxp),
      .rxn                   (rxn),
      .txoutclk              (txoutclk),
      .resetdone             (resetdone),
      .userclk               (userclk),
      .userclk2              (userclk2),
      .independent_clock_bufg(independent_clock_bufg),
      .pma_reset             (pma_reset),
      .sgmii_clk_r           (sgmii_clk_r),
      .sgmii_clk_f           (sgmii_clk_f),
      .sgmii_clk_en          (),
      .gmii_txd              (gmii_txd_int),
      .gmii_tx_en            (gmii_tx_en_int),
      .gmii_tx_er            (gmii_tx_er_int),
      .gmii_rxd              (gmii_rxd_int),
      .gmii_rx_dv            (gmii_rx_dv_int),
      .gmii_rx_er            (gmii_rx_er_int),
      .gmii_isolate          (gmii_isolate),
      .configuration_vector  (configuration_vector),
      .an_interrupt          (an_interrupt),
      .an_adv_config_vector  (an_adv_config_vector),
      .an_restart_config     (an_restart_config),
      .link_timer_value      (link_timer_value),
      .speed_is_10_100       (speed_is_10_100),
      .speed_is_100          (speed_is_100),
      .status_vector         (status_vector_int),
      .reset                 (reset),
      .signal_detect         (signal_detect)
      );



   //---------------------------------------------------------------------------
   // GMII transmitter data logic
   //---------------------------------------------------------------------------


   // Drive input GMII signals through IOB input flip-flops (inferred).
   always @ (posedge userclk2)
     begin
         gmii_txd_int    <= gmii_txd;
         gmii_tx_en_int  <= gmii_tx_en;
         gmii_tx_er_int  <= gmii_tx_er;
     end



   //---------------------------------------------------------------------------
   // SGMII clock logic
   //---------------------------------------------------------------------------

   // All GMII transmitter input signals must be synchronous to this
   // clock.

   // All GMII receiver output signals are synchrounous to this clock.

   // This instantiates a DDR output register.  This is a nice way to
   // drive the output clock since the clock-to-PAD delay will the
   // same as that of data driven from an IOB Ouput flip-flop.

   ODDR sgclk_ddr_iob (
      .Q  (sgmii_clk),
      .C  (userclk2),
      .CE (1'b1),
      .D1 (sgmii_clk_r),
      .D2 (sgmii_clk_f),
      .R  (1'b0),
      .S  (1'b0)
   );



   //---------------------------------------------------------------------------
   // GMII receiver data logic
   //---------------------------------------------------------------------------


   // Drive input GMII signals through IOB output flip-flops (inferred).
   always @ (posedge userclk2)
     begin
         gmii_rxd    <= gmii_rxd_int;
         gmii_rx_dv  <= gmii_rx_dv_int;
         gmii_rx_er  <= gmii_rx_er_int;
     end



   //---------------------------------------------------------------------------
   // Extra registers to ease IOB placement
   //---------------------------------------------------------------------------
   always @ (posedge userclk2)
   begin
     status_vector <= status_vector_int;
   end


endmodule // gig_eth_pcs_pma_v11_2_example_design
