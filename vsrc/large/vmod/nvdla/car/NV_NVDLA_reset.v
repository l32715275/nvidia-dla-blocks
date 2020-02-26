// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_reset.v
module NV_NVDLA_reset (
   dla_reset_rstn //|< i
  ,direct_reset_ //|< i
  ,test_mode //|< i
  ,synced_rstn //|> o
  ,nvdla_clk //|< i
  );
//
// NV_NVDLA_reset_ports.v
//
input dla_reset_rstn;
input direct_reset_;
input test_mode;
output synced_rstn;
input nvdla_clk;
NV_soDLA_reset_dft NV_soDLA_reset_dft(
    .io_dla_reset_rstn(dla_reset_rstn),
    .io_direct_reset_(direct_reset_),
    .io_test_mode(test_mode),
    .io_synced_rstn(synced_rstn),
    .io_nvdla_clk(nvdla_clk));
endmodule // NV_NVDLA_reset
