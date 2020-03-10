// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_cdma.v
// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDMA_define.h
//#define CDMA_SBUF_SDATA_BITS            256
//DorisL-S----------------
//
// #if ( NVDLA_MEMORY_ATOMIC_SIZE  ==  32 )
//     #define IMG_LARGE
// #endif
// #if ( NVDLA_MEMORY_ATOMIC_SIZE == 8 )
//     #define IMG_SMALL
// #endif
//DorisL-E----------------
//--------------------------------------------------
module NV_NVDLA_cdma (
   cdma_dat2mcif_rd_req_ready
  ,cdma_wt2mcif_rd_req_ready
  ,csb2cdma_req_pd
  ,csb2cdma_req_pvld
  ,cdma_dat2cvif_rd_req_ready
  ,cdma_wt2cvif_rd_req_ready
  ,cvif2cdma_dat_rd_rsp_pd
  ,cvif2cdma_dat_rd_rsp_valid
  ,cvif2cdma_wt_rd_rsp_pd
  ,cvif2cdma_wt_rd_rsp_valid
  ,dla_clk_ovr_on_sync
  ,global_clk_ovr_on_sync
  ,mcif2cdma_dat_rd_rsp_pd
  ,mcif2cdma_dat_rd_rsp_valid
  ,mcif2cdma_wt_rd_rsp_pd
  ,mcif2cdma_wt_rd_rsp_valid
  ,nvdla_core_clk
  ,nvdla_core_rstn
  ,pwrbus_ram_pd
  ,sc2cdma_dat_entries
  ,sc2cdma_dat_pending_req
  ,sc2cdma_dat_slices
  ,sc2cdma_dat_updt
  ,sc2cdma_wmb_entries
  ,sc2cdma_wt_entries
  ,sc2cdma_wt_kernels
  ,sc2cdma_wt_pending_req
  ,sc2cdma_wt_updt
  ,tmc2slcg_disable_clock_gating
  ,cdma2buf_dat_wr_en
//: my $dmaif=256;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,cdma2buf_dat_wr_sel
//: ,cdma2buf_dat_wr_addr
//: ,cdma2buf_dat_wr_data
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,cdma2buf_dat_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,cdma2buf_dat_wr_addr${i}
//: ,cdma2buf_dat_wr_data${i}
//: );
//: }
//: } else {
//: print qq(
//: ,cdma2buf_dat_wr_addr
//: ,cdma2buf_dat_wr_data
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,cdma2buf_dat_wr_sel
,cdma2buf_dat_wr_addr
,cdma2buf_dat_wr_data

//| eperl: generated_end (DO NOT EDIT ABOVE)
//,cdma2buf_dat_wr_addr
//,cdma2buf_dat_wr_data
//,cdma2buf_dat_wr_hsel
  ,cdma2buf_wt_wr_en
//: my $dmaif=256;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: print qq(
//: ,cdma2buf_wt_wr_sel
//: ,cdma2buf_wt_wr_addr
//: ,cdma2buf_wt_wr_data
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,cdma2buf_wt_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,cdma2buf_wt_wr_addr${i}
//: ,cdma2buf_wt_wr_data${i}
//: );
//: }
//: } else {
//: print qq(
//: ,cdma2buf_wt_wr_addr
//: ,cdma2buf_wt_wr_data
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,cdma2buf_wt_wr_sel
,cdma2buf_wt_wr_addr
,cdma2buf_wt_wr_data

//| eperl: generated_end (DO NOT EDIT ABOVE)
//,cdma2buf_wt_wr_addr
//,cdma2buf_wt_wr_data
//,cdma2buf_wt_wr_hsel
  ,cdma2csb_resp_pd
  ,cdma2csb_resp_valid
  ,cdma2sc_dat_entries
  ,cdma2sc_dat_pending_ack
  ,cdma2sc_dat_slices
  ,cdma2sc_dat_updt
  ,cdma2sc_wmb_entries
  ,cdma2sc_wt_entries
  ,cdma2sc_wt_kernels
  ,cdma2sc_wt_pending_ack
  ,cdma2sc_wt_updt
  ,cdma_dat2glb_done_intr_pd
  ,cdma_dat2mcif_rd_req_pd
  ,cdma_dat2mcif_rd_req_valid
  ,cdma_dat2cvif_rd_req_pd
  ,cdma_dat2cvif_rd_req_valid
  ,cdma_wt2cvif_rd_req_pd
  ,cdma_wt2cvif_rd_req_valid
  ,cvif2cdma_dat_rd_rsp_ready
  ,cvif2cdma_wt_rd_rsp_ready
  ,cdma_wt2glb_done_intr_pd
  ,cdma_wt2mcif_rd_req_pd
  ,cdma_wt2mcif_rd_req_valid
  ,csb2cdma_req_prdy
  ,mcif2cdma_dat_rd_rsp_ready
  ,mcif2cdma_wt_rd_rsp_ready
  );
///////////////////////////////////////////////////////////////////////////
input nvdla_core_clk;
input nvdla_core_rstn;
output cdma2csb_resp_valid;
output [33:0] cdma2csb_resp_pd;
input csb2cdma_req_pvld;
output csb2cdma_req_prdy;
input [62:0] csb2cdma_req_pd;
output cdma2buf_dat_wr_en;
//: my $dmaif=256;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int($atmc/$dmaif);
//: print qq(
//: output [${k}-1:0] cdma2buf_dat_wr_sel;
//: output [16:0] cdma2buf_dat_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: output [${k}-1:0] cdma2buf_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: output [16:0] cdma2buf_dat_wr_addr${i};
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: output [16:0] cdma2buf_dat_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [2-1:0] cdma2buf_dat_wr_sel;
output [16:0] cdma2buf_dat_wr_addr;
output [256-1:0] cdma2buf_dat_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
output cdma2buf_wt_wr_en;
//: my $dmaif=256;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int($atmc/$dmaif);
//: print qq(
//: output [${k}-1:0] cdma2buf_wt_wr_sel ;
//: output [16:0] cdma2buf_wt_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_wt_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: output [${k}-1:0] cdma2buf_wt_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: output [16:0] cdma2buf_wt_wr_addr${i};
//: output [${dmaif}-1:0] cdma2buf_wt_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: output [16:0] cdma2buf_wt_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_wt_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [2-1:0] cdma2buf_wt_wr_sel ;
output [16:0] cdma2buf_wt_wr_addr;
output [256-1:0] cdma2buf_wt_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//output [11:0] cdma2buf_wt_wr_addr;
//output cdma2buf_wt_wr_hsel;
//output [511:0] cdma2buf_wt_wr_data;
output cdma_dat2cvif_rd_req_valid;
input cdma_dat2cvif_rd_req_ready;
output [( 64 + 15 )-1:0] cdma_dat2cvif_rd_req_pd;
input cvif2cdma_dat_rd_rsp_valid;
output cvif2cdma_dat_rd_rsp_ready;
input [( 256 + (256/8/32) )-1:0] cvif2cdma_dat_rd_rsp_pd;
output cdma_wt2cvif_rd_req_valid;
input cdma_wt2cvif_rd_req_ready;
output [( 64 + 15 )-1:0] cdma_wt2cvif_rd_req_pd;
input cvif2cdma_wt_rd_rsp_valid;
output cvif2cdma_wt_rd_rsp_ready;
input [( 256 + (256/8/32) )-1:0] cvif2cdma_wt_rd_rsp_pd;
output [1:0] cdma_dat2glb_done_intr_pd;
output [1:0] cdma_wt2glb_done_intr_pd;
output cdma_dat2mcif_rd_req_valid;
input cdma_dat2mcif_rd_req_ready;
output [( 64 + 15 )-1:0] cdma_dat2mcif_rd_req_pd;
input mcif2cdma_dat_rd_rsp_valid;
output mcif2cdma_dat_rd_rsp_ready;
input [( 256 + (256/8/32) )-1:0] mcif2cdma_dat_rd_rsp_pd;
output cdma_wt2mcif_rd_req_valid;
input cdma_wt2mcif_rd_req_ready;
output [( 64 + 15 )-1:0] cdma_wt2mcif_rd_req_pd;
input mcif2cdma_wt_rd_rsp_valid;
output mcif2cdma_wt_rd_rsp_ready;
input [( 256 + (256/8/32) )-1:0] mcif2cdma_wt_rd_rsp_pd;
input sc2cdma_dat_pending_req;
input sc2cdma_wt_pending_req;
output cdma2sc_dat_pending_ack;
output cdma2sc_wt_pending_ack;
output cdma2sc_dat_updt;
output [14:0] cdma2sc_dat_entries;
output [13:0] cdma2sc_dat_slices;
input sc2cdma_dat_updt;
input [14:0] sc2cdma_dat_entries;
input [13:0] sc2cdma_dat_slices;
output cdma2sc_wt_updt;
output [13:0] cdma2sc_wt_kernels;
output [14:0] cdma2sc_wt_entries;
output [8:0] cdma2sc_wmb_entries;
input sc2cdma_wt_updt;
input [13:0] sc2cdma_wt_kernels;
input [14:0] sc2cdma_wt_entries;
input [8:0] sc2cdma_wmb_entries;
input [31:0] pwrbus_ram_pd;
input dla_clk_ovr_on_sync;
input global_clk_ovr_on_sync;
input tmc2slcg_disable_clock_gating;


wrapper_cdma wrapper(
  .cdma_dat2mcif_rd_req_ready(cdma_dat2mcif_rd_req_ready),
  .cdma_wt2mcif_rd_req_ready(cdma_wt2mcif_rd_req_ready),
  .csb2cdma_req_pd(csb2cdma_req_pd),
  .csb2cdma_req_pvld(csb2cdma_req_pvld),
  .cdma_dat2cvif_rd_req_ready(cdma_dat2cvif_rd_req_ready),
  .cdma_wt2cvif_rd_req_ready(cdma_wt2cvif_rd_req_ready),
  .cvif2cdma_dat_rd_rsp_pd(cvif2cdma_dat_rd_rsp_pd),
  .cvif2cdma_dat_rd_rsp_valid(cvif2cdma_dat_rd_rsp_valid),
  .cvif2cdma_wt_rd_rsp_pd(cvif2cdma_wt_rd_rsp_pd),
  .cvif2cdma_wt_rd_rsp_valid(cvif2cdma_wt_rd_rsp_valid),
  .dla_clk_ovr_on_sync(dla_clk_ovr_on_sync),
  .global_clk_ovr_on_sync(global_clk_ovr_on_sync),
  .mcif2cdma_dat_rd_rsp_pd(mcif2cdma_dat_rd_rsp_pd),
  .mcif2cdma_dat_rd_rsp_valid(mcif2cdma_dat_rd_rsp_valid),
  .mcif2cdma_wt_rd_rsp_pd(mcif2cdma_wt_rd_rsp_pd),
  .mcif2cdma_wt_rd_rsp_valid(mcif2cdma_wt_rd_rsp_valid),
  .nvdla_core_clk(nvdla_core_clk),
  .nvdla_core_rstn(nvdla_core_rstn),
  .pwrbus_ram_pd(pwrbus_ram_pd),
  .sc2cdma_dat_entries(sc2cdma_dat_entries),
  .sc2cdma_dat_pending_req(sc2cdma_dat_pending_req),
  .sc2cdma_dat_slices(sc2cdma_dat_slices),
  .sc2cdma_dat_updt(sc2cdma_dat_updt),
  .sc2cdma_wmb_entries(sc2cdma_wmb_entries),
  .sc2cdma_wt_entries(sc2cdma_wt_entries),
  .sc2cdma_wt_kernels(sc2cdma_wt_kernels),
  .sc2cdma_wt_pending_req(sc2cdma_wt_pending_req),
  .sc2cdma_wt_updt(sc2cdma_wt_updt),
  .tmc2slcg_disable_clock_gating(tmc2slcg_disable_clock_gating),
  .cdma2buf_dat_wr_en(cdma2buf_dat_wr_en),
  .cdma2buf_dat_wr_sel(cdma2buf_dat_wr_sel),
  .cdma2buf_dat_wr_addr(cdma2buf_dat_wr_addr),
  .cdma2buf_dat_wr_data(cdma2buf_dat_wr_data),
  .cdma2buf_wt_wr_en(cdma2buf_wt_wr_en),
  .cdma2buf_wt_wr_sel(cdma2buf_wt_wr_sel),
  .cdma2buf_wt_wr_addr(cdma2buf_wt_wr_addr),
  .cdma2buf_wt_wr_data(cdma2buf_wt_wr_data),
  .cdma2csb_resp_pd(cdma2csb_resp_pd),
  .cdma2csb_resp_valid(cdma2csb_resp_valid),
  .cdma2sc_dat_entries(cdma2sc_dat_entries),
  .cdma2sc_dat_pending_ack(cdma2sc_dat_pending_ack),
  .cdma2sc_dat_slices(cdma2sc_dat_slices),
  .cdma2sc_dat_updt(cdma2sc_dat_updt),
  .cdma2sc_wmb_entries(cdma2sc_wmb_entries),
  .cdma2sc_wt_entries(cdma2sc_wt_entries),
  .cdma2sc_wt_kernels(cdma2sc_wt_kernels),
  .cdma2sc_wt_pending_ack(cdma2sc_wt_pending_ack),
  .cdma2sc_wt_updt(cdma2sc_wt_updt),
  .cdma_dat2glb_done_intr_pd(cdma_dat2glb_done_intr_pd),
  .cdma_dat2mcif_rd_req_pd(cdma_dat2mcif_rd_req_pd),
  .cdma_dat2mcif_rd_req_valid(cdma_dat2mcif_rd_req_valid),
  .cdma_dat2cvif_rd_req_pd(cdma_dat2cvif_rd_req_pd),
  .cdma_dat2cvif_rd_req_valid(cdma_dat2cvif_rd_req_valid),
  .cdma_wt2cvif_rd_req_pd(cdma_wt2cvif_rd_req_pd),
  .cdma_wt2cvif_rd_req_valid(cdma_wt2cvif_rd_req_valid),
  .cvif2cdma_dat_rd_rsp_ready(cvif2cdma_dat_rd_rsp_ready),
  .cvif2cdma_wt_rd_rsp_ready(cvif2cdma_wt_rd_rsp_ready),
  .cdma_wt2glb_done_intr_pd(cdma_wt2glb_done_intr_pd),
  .cdma_wt2mcif_rd_req_pd(cdma_wt2mcif_rd_req_pd),
  .cdma_wt2mcif_rd_req_valid(cdma_wt2mcif_rd_req_valid),
  .csb2cdma_req_prdy(csb2cdma_req_prdy),
  .mcif2cdma_dat_rd_rsp_ready(mcif2cdma_dat_rd_rsp_ready),
  .mcif2cdma_wt_rd_rsp_ready(mcif2cdma_wt_rd_rsp_ready)
  );
  
endmodule // NV_NVDLA_cdma
