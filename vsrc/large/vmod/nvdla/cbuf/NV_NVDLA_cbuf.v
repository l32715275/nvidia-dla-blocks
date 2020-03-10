// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_cbuf.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CBUF.h
    `define CBUF_BANK_RAM_CASE2
    `define CBUF_NO_SUPPORT_READ_JUMPING
//ram case could be 0/1/2/3/4/5  0:1ram/bank; 1:1*2ram/bank; 2:2*1ram/bank; 3:2*2ram/bank  4:4*1ram/bank  5:4*2ram/bank
`define CDMA2CBUF_DEBUG_PRINT //open debug print
`include "simulate_x_tick.vh"
module NV_NVDLA_cbuf (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
//port 0 for data, 1 for weight
//: for(my $i=0; $i<2 ; $i++){
//: print qq(
//: ,cdma2buf_wr_addr${i} //|< i
//: ,cdma2buf_wr_data${i} //|< i
//: ,cdma2buf_wr_en${i} //|< i
//: ,cdma2buf_wr_sel${i} //|< i
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,cdma2buf_wr_addr0 //|< i
,cdma2buf_wr_data0 //|< i
,cdma2buf_wr_en0 //|< i
,cdma2buf_wr_sel0 //|< i

,cdma2buf_wr_addr1 //|< i
,cdma2buf_wr_data1 //|< i
,cdma2buf_wr_en1 //|< i
,cdma2buf_wr_sel1 //|< i

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,pwrbus_ram_pd //|< i
  ,sc2buf_dat_rd_addr //|< i
  ,sc2buf_dat_rd_en //|< i
  ,sc2buf_dat_rd_shift //|< i
  ,sc2buf_dat_rd_next1_en //< i
  ,sc2buf_dat_rd_next1_addr //< i
  ,sc2buf_dat_rd_data //|> o
  ,sc2buf_dat_rd_valid //|> o
  ,sc2buf_wt_rd_addr //|< i
  ,sc2buf_wt_rd_en //|< i
  ,sc2buf_wt_rd_data //|> o
  ,sc2buf_wt_rd_valid //|> o
  `ifdef CBUF_WEIGHT_COMPRESSED
  ,sc2buf_wmb_rd_addr //|< i
  ,sc2buf_wmb_rd_en //|< i
  ,sc2buf_wmb_rd_data //|> o
  ,sc2buf_wmb_rd_valid //|> o
  `endif
  );
input nvdla_core_clk;
input nvdla_core_rstn;
input [31:0] pwrbus_ram_pd;
//: for(my $i=0; $i<2 ; $i++) {
//: print qq(
//: input[13 -1:0] cdma2buf_wr_addr${i}; //|< i
//: input[512/2 -1:0] cdma2buf_wr_data${i}; //|< i
//: input cdma2buf_wr_en${i}; //|< i
//: input[2 -1:0] cdma2buf_wr_sel${i}; //|< i
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input[13 -1:0] cdma2buf_wr_addr0; //|< i
input[512/2 -1:0] cdma2buf_wr_data0; //|< i
input cdma2buf_wr_en0; //|< i
input[2 -1:0] cdma2buf_wr_sel0; //|< i

input[13 -1:0] cdma2buf_wr_addr1; //|< i
input[512/2 -1:0] cdma2buf_wr_data1; //|< i
input cdma2buf_wr_en1; //|< i
input[2 -1:0] cdma2buf_wr_sel1; //|< i

//| eperl: generated_end (DO NOT EDIT ABOVE)
input sc2buf_dat_rd_en; /* data valid */
input [13 -1:0] sc2buf_dat_rd_addr;
input [10 -1:0] sc2buf_dat_rd_shift; //|< i
input sc2buf_dat_rd_next1_en; //< i
input [13 -1:0] sc2buf_dat_rd_next1_addr; //< i
output sc2buf_dat_rd_valid; /* data valid */
output [512 -1:0] sc2buf_dat_rd_data;
input sc2buf_wt_rd_en; /* data valid */
input [13 -1:0] sc2buf_wt_rd_addr;
output sc2buf_wt_rd_valid; /* data valid */
output [512 -1:0] sc2buf_wt_rd_data;
`ifdef CBUF_WEIGHT_COMPRESSED
input sc2buf_wmb_rd_en; /* data valid */
input [13 -1:0] sc2buf_wmb_rd_addr;
output sc2buf_wmb_rd_valid; /* data valid */
output [512 -1:0] sc2buf_wmb_rd_data;
`endif
wrapper_cbuf wrapper(
  .nvdla_core_clk    (nvdla_core_clk),//|< i
  .nvdla_core_rstn   (nvdla_core_rstn), //|< i
//port 0 for data, 1 for weight
//: for(my $i=0; $i<2 ; $i++){
//: print qq(
//: ,cdma2buf_wr_addr${i} //|< i
//: ,cdma2buf_wr_data${i} //|< i
//: ,cdma2buf_wr_en${i} //|< i
//: ,cdma2buf_wr_sel${i} //|< i
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

.cdma2buf_wr_addr0   (cdma2buf_wr_addr0),//|< i
.cdma2buf_wr_data0   (cdma2buf_wr_data0),//|< i
.cdma2buf_wr_en0     (cdma2buf_wr_en0),//|< i
.cdma2buf_wr_sel0    (cdma2buf_wr_sel0),//|< i

.cdma2buf_wr_addr1   (cdma2buf_wr_addr1),//|< i
.cdma2buf_wr_data1   (cdma2buf_wr_data1),//|< i
.cdma2buf_wr_en1     (cdma2buf_wr_en1),//|< i
.cdma2buf_wr_sel1    (cdma2buf_wr_sel1),//|< i

//| eperl: generated_end (DO NOT EDIT ABOVE)
  .pwrbus_ram_pd            (pwrbus_ram_pd),//|< i
  .sc2buf_dat_rd_addr       (sc2buf_dat_rd_addr),//|< i
  .sc2buf_dat_rd_en         (sc2buf_dat_rd_en),//|< i
  .sc2buf_dat_rd_shift      (sc2buf_dat_rd_shift),//|< i
  .sc2buf_dat_rd_next1_en   (sc2buf_dat_rd_next1_en),//< i
  .sc2buf_dat_rd_next1_addr (sc2buf_dat_rd_next1_addr),//< i
  .sc2buf_dat_rd_data       (sc2buf_dat_rd_data),//|> o
  .sc2buf_dat_rd_valid      (sc2buf_dat_rd_valid),//|> o
  .sc2buf_wt_rd_addr        (sc2buf_wt_rd_addr),//|< i
  .sc2buf_wt_rd_en          (sc2buf_wt_rd_en),//|< i
  .sc2buf_wt_rd_data        (sc2buf_wt_rd_data),//|> o
  .sc2buf_wt_rd_valid       (sc2buf_wt_rd_valid),//|> o
  `ifdef CBUF_WEIGHT_COMPRESSED
  .sc2buf_wmb_rd_addr       (sc2buf_wmb_rd_addr),//|< i
  .sc2buf_wmb_rd_en         (sc2buf_wmb_rd_en),//|< i
  .sc2buf_wmb_rd_data       (sc2buf_wmb_rd_data),//|> o
  .sc2buf_wmb_rd_valid      (sc2buf_wmb_rd_valid)//|> o
 );
endmodule // NV_NVDLA_cbuf