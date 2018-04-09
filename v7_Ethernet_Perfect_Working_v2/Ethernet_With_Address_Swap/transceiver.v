//------------------------------------------------------------------------------
// Title      : Top-level Transceiver GT wrapper for Ethernet
// Project    : Ethernet 1000BASE-X PCS/PMA or SGMII LogiCORE
// File       : transceiver.v
// Author     : Xilinx
//------------------------------------------------------------------------------
/// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
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
// Description:  This is the top-level Transceiver GT wrapper. It
//               instantiates the lower-level wrappers produced by
//               the Series-7 FPGA Transceiver GT Wrapper Wizard.
//------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

module transceiver (
   input            encommaalign,
   input            loopback,
   input            powerdown,
   input            usrclk,
   input            usrclk2,
   input            independent_clock_bufg,
   input            txreset,
   input      [7:0] txdata,
   input            txchardispmode,
   input            txchardispval,
   input            txcharisk,
   input            rxreset,
   output           rxchariscomma,
   output           rxcharisk,
   output     [2:0] rxclkcorcnt,
   output     [7:0] rxdata,
   output           rxdisperr,
   output           rxnotintable,
   output           rxrundisp,
   output           rxbuferr,
   output reg       txbuferr,
   output           plllkdet,
   output           txoutclk,
   output           rxelecidle,
   output           txn,
   output           txp,
   input            rxn,
   input            rxp,
   input            gtrefclk,
   input            pmareset,
   output           resetdone,
   input            mmcm_locked

);


  //----------------------------------------------------------------------------
  // Signal declarations
  //----------------------------------------------------------------------------

   wire             cplllock;
   wire             gt_reset;
   wire             resetdone_tx;
   wire             resetdone_rx;

   wire      [2:0]  rxbufstatus;
   wire      [1:0]  txbufstatus;
   reg       [1:0]  txbufstatus_reg;

   // signal used to control sampling during bus width conversions
   reg              toggle;

   // signals reclocked onto the 62.5MHz userclk source of the GT transceiver
   wire             txreset_int;
   wire             rxreset_rec;

   // Register transmitter signals from the core
   reg        [7:0] txdata_reg;
   reg              txchardispmode_reg;
   reg              txchardispval_reg;
   reg              txcharisk_reg;

   // Signals for data bus width doubling on the transmitter path from the core
   // to the GT transceiver
   reg       [15:0] txdata_double;
   reg        [1:0] txchardispmode_double;
   reg        [1:0] txchardispval_double;
   reg        [1:0] txcharisk_double;

   // Double width signals reclocked onto the 62.5MHz userclk source of the GT
   // transceiver
   reg       [15:0] txdata_int;
   reg        [1:0] txchardispmode_int;
   reg        [1:0] txchardispval_int;
   reg        [1:0] txcharisk_int;

   // Signals for GT data reception
   wire             rxrecclk;
   wire             rxrecclk_buf;
   wire             rxrecclk_bufmr;
   wire       [1:0] rxchariscomma_rec;
   wire       [1:0] rxnotintable_rec;
   wire       [1:0] rxcharisk_rec;
   wire       [1:0] rxdisperr_rec;
   wire      [15:0] rxdata_rec;
   wire             encommaalign_rec;
   wire       [1:0] powerdown_int;


   reg   [7:0]  reset_counter;
   reg   [5:0]  reset_pulse;
   wire         cpllreset;
   
   wire        PCS_RESET;


   assign powerdown_int = {2{powerdown}};

   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be reclocked onto the 62.5MHz
   // clock
   //---------------------------------------------------------------------------

  // Reclock encommaalign
  reset_sync_pcs_pma rxrecclk_encommaalign (
     .clk       (rxrecclk_buf),
     .reset_in  (encommaalign),
     .reset_out (encommaalign_rec)
  );


  // Reclock txreset
   reset_sync_pcs_pma reclock_txreset
   (
     .clk       (usrclk),
     .reset_in  (txreset),
     .reset_out (txreset_int)
   );


  // Reclock rxreset
  reset_sync_pcs_pma reclock_rxreset (
     .clk       (rxrecclk_buf),
     .reset_in  (rxreset),
     .reset_out (rxreset_rec)
  );


   //---------------------------------------------------------------------------
   // toggle signal used to control sampling during bus width conversions
   //---------------------------------------------------------------------------

   always @(posedge usrclk2)
   begin
     if (txreset) begin
       toggle <= 1'b0;
     end
     else begin
       toggle <= !toggle;
     end
   end


   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be converted to double width, then
   // resampled on the GT's 62.5MHz clock
   //---------------------------------------------------------------------------

   // Reclock the transmitter signals
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_reg         <= 8'b0;
       txchardispmode_reg <= 1'b0;
       txchardispval_reg  <= 1'b0;
       txcharisk_reg      <= 1'b0;
     end
     else begin
       txdata_reg         <= txdata;
       txchardispmode_reg <= txchardispmode;
       txchardispval_reg  <= txchardispval;
       txcharisk_reg      <= txcharisk;
     end
   end


   // Double the data width
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_double                <= 16'b0;
       txchardispmode_double        <= 2'b0;
       txchardispval_double         <= 2'b0;
       txcharisk_double             <= 2'b0;
     end
     else begin
       if (!toggle) begin
         txdata_double[7:0]         <= txdata_reg;
         txchardispmode_double[0]   <= txchardispmode_reg;
         txchardispval_double[0]    <= txchardispval_reg;
         txcharisk_double[0]        <= txcharisk_reg;
         txdata_double[15:8]        <= txdata;
         txchardispmode_double[1]   <= txchardispmode;
         txchardispval_double[1]    <= txchardispval;
         txcharisk_double[1]        <= txcharisk;
       end
     end
   end


   // Cross the clock domain
   always @(posedge usrclk)
   begin
     txdata_int         <= txdata_double;
     txchardispmode_int <= txchardispmode_double;
     txchardispval_int  <= txchardispval_double;
     txcharisk_int      <= txcharisk_double;
     txbufstatus_reg    <= txbufstatus;
   end


   always @(posedge independent_clock_bufg)
     begin
        if(pmareset == 1'b1)
           reset_counter   <=   8'h0;
        else if (!reset_counter[7])
           reset_counter   <=   reset_counter + 1'b1;
        else
           reset_counter   <=   reset_counter;
     end

     always @(posedge independent_clock_bufg)
     begin
        if(!reset_counter[7])
           reset_pulse   <=   6'b111110;

        else
           reset_pulse   <=   {1'b0, reset_pulse[5:1]};
     end

   assign cpllreset = reset_pulse[0];


   //---------------------------------------------------------------------------
   // Instantiate the Series-7 GTX
   //---------------------------------------------------------------------------
   // Direct from the Transceiver Wizard output
   GTWIZARD #
   (
        .WRAPPER_SIM_GTRESET_SPEEDUP     ("TRUE")
   )
   gtwizard_inst
   (
        //----------------------- Channel - Ref Clock Ports //------------------
        .GT0_GTREFCLK0_IN                (gtrefclk),
        //------------------------------ Channel PLL //-------------------------
        .GT0_CPLLFBCLKLOST_OUT           (),
        .GT0_CPLLLOCK_OUT                (cplllock),
        .GT0_CPLLLOCKDETCLK_IN           (1'b1),
        .GT0_CPLLREFCLKLOST_OUT          (),
        .GT0_CPLLRESET_IN                (cpllreset),
        //----------------------------- Eye Scan Ports //-----------------------
        .GT0_EYESCANDATAERROR_OUT        (),
        //---------------------- Loopback and Powerdown Ports //----------------
        .GT0_LOOPBACK_IN                 (3'b0),
        .GT0_RXPD_IN                     (powerdown_int),
        .GT0_TXPD_IN                     (powerdown_int),
        //----------------------------- Receive Ports --------------------------
        .GT0_RXUSERRDY_IN                (cplllock),
        //--------------------- Receive Ports - 8b10b Decoder //----------------
        .GT0_RXCHARISCOMMA_OUT           (rxchariscomma_rec),
        .GT0_RXCHARISK_OUT               (rxcharisk_rec),
        .GT0_RXDISPERR_OUT               (rxdisperr_rec),
        .GT0_RXNOTINTABLE_OUT            (rxnotintable_rec),
        //------------- Receive Ports - Comma Detection and Alignment //--------
        .GT0_RXMCOMMAALIGNEN_IN          (encommaalign_rec),
        .GT0_RXPCOMMAALIGNEN_IN          (encommaalign_rec),
        //----------------- Receive Ports - RX Data Path interface //-----------
        .GT0_GTRXRESET_IN                (gt_reset),
//        .GT0_GTRXRESET_IN                (rxreset_rec),
        .GT0_RXDATA_OUT                  (rxdata_rec),
        .GT0_RXOUTCLK_OUT                (rxrecclk),
        .GT0_RXUSRCLK_IN                 (rxrecclk_buf),
        .GT0_RXUSRCLK2_IN                (rxrecclk_buf),
        //----- Receive Ports - RX Driver),OOB signalling),Coupling and Eq.),CDR //
        .GT0_GTXRXN_IN                   (rxn),
        .GT0_GTXRXP_IN                   (rxp),
        .GT0_RXCDRLOCK_OUT               (),
        .GT0_RXELECIDLE_OUT              (rxelecidle),
        //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports //-
        .GT0_RXBUFRESET_IN               (rxreset_rec),
        .GT0_RXBUFSTATUS_OUT             (rxbufstatus),
        //---------------------- Receive Ports - RX PLL Ports //----------------
        .GT0_RXRESETDONE_OUT             (resetdone_rx),
        //----------------------------- Transmit Ports -------------------------
        .GT0_TXPRECURSORINV_IN           (1'b0),
        .GT0_TXUSERRDY_IN                (cplllock),
        //-------------- Transmit Ports - 8b10b Encoder Control Ports //--------
        .GT0_TXCHARDISPMODE_IN           (txchardispmode_int),
        .GT0_TXCHARDISPVAL_IN            (txchardispval_int),
        .GT0_TXCHARISK_IN                (txcharisk_int),
        //---------------- Transmit Ports - TX Data Path interface //-----------
        .GT0_GTTXRESET_IN                (gt_reset),
//        .GT0_GTTXRESET_IN                (txreset_int),
        .GT0_TXDATA_IN                   (txdata_int),
        .GT0_TXOUTCLK_OUT                (txoutclk),
        .GT0_TXOUTCLKFABRIC_OUT          (),
        .GT0_TXOUTCLKPCS_OUT             (),
        .GT0_TXUSRCLK_IN                 (usrclk),
        .GT0_TXUSRCLK2_IN                (usrclk),
        //-------------- Transmit Ports - TX Driver and OOB signaling //--------
        .GT0_GTXTXN_OUT                  (txn),
        .GT0_GTXTXP_OUT                  (txp),
        //--------- Transmit Ports - TX Elastic Buffer and Phase Alignment //---
        .GT0_TXBUFSTATUS_OUT             (txbufstatus),
        //--------------------- Transmit Ports - TX PLL Ports //----------------
        .GT0_TXRESETDONE_OUT             (resetdone_tx),
        .TXPCSRESET                    (PCS_RESET),
        .RXPCSRESET                    (PCS_RESET)
   );
   
   assign PCS_RESET = !mmcm_locked;


   //---------------------------------------------------------------------------
   // Instantiation of the FPGA Fabric Receiver Elastic Buffer
   // connected to the Transceiver
   //---------------------------------------------------------------------------

   // Place the Rx recovered clock on a Global Clock Buffer (it may be possible
   // to switch this for a BUFHCE)
   BUFG rxrecclkbufg (
      .I   (rxrecclk),
      .O   (rxrecclk_buf)
   );


   // Instantiate the RX elastic buffer. This performs clock
   // correction on the incoming data to cope with differences
   // between the user clock and the clock recovered from the data.
   rx_elastic_buffer rx_elastic_buffer_inst (
      // Signals from the GTX on RXRECCLK
      .rxrecclk          (rxrecclk_buf),
      .rxrecreset        (rxreset_rec),
      .rxchariscomma_rec (rxchariscomma_rec),
      .rxcharisk_rec     (rxcharisk_rec),
      .rxdisperr_rec     (rxdisperr_rec),
      .rxnotintable_rec  (rxnotintable_rec),
      .rxrundisp_rec     (2'b0),
      .rxdata_rec        (rxdata_rec),

      // Signals reclocked onto usrclk2
      .rxusrclk2         (usrclk2),
      .rxreset           (rxreset),
      .rxchariscomma_usr (rxchariscomma),
      .rxcharisk_usr     (rxcharisk),
      .rxdisperr_usr     (rxdisperr),
      .rxnotintable_usr  (rxnotintable),
      .rxrundisp_usr     (rxrundisp),
      .rxclkcorcnt_usr   (rxclkcorcnt),
      .rxbuferr          (rxbuferr),
      .rxdata_usr        (rxdata)
   );



   // Hold the transmitter and receiver paths of the GT transceiver in reset
   // until the PLL has locked.
   assign gt_reset = cpllreset | (!cplllock & reset_counter[7]);


   // Output the PLL locked status
   assign plllkdet = cplllock;


   // Report overall status for both transmitter and receiver reset done signals
   assign resetdone = cplllock & reset_counter[7];


   // Decode the GT transceiver buffer status signals
  always @(posedge usrclk2)
  begin
    txbuferr    <= txbufstatus_reg[1];
  end



endmodule
