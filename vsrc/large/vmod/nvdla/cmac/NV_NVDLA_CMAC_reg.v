// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_reg.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: simulate_x_tick.vh
`ifdef _SIMULATE_X_VH_
`else
`define _SIMULATE_X_VH_
`ifndef SYNTHESIS
`define SIMULATION_ONLY
`endif
// deprecated tick defines
`ifdef SIMULATION_ONLY
`define x_or_0 1'bx
`define x_or_1 1'bx
`else
`define x_or_0 1'b0
`define x_or_1 1'b1
`endif
// formerly recommended tick defines
`ifdef SIMULATION_ONLY
`define tick_x_or_0 1'bx
`define tick_x_or_1 1'bx
`else
`define tick_x_or_0 1'b0
`define tick_x_or_1 1'b1
`endif
// newly recommended tick defines
// (-sv parsing is enabled everywhere now, and explicit widths are no longer needed)
`ifdef SIMULATION_ONLY
`define sv_x_or_0 'x
`define sv_x_or_1 'x
`else
`define sv_x_or_0 '0
`define sv_x_or_1 '1
`endif
`endif
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_reg (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,csb2cmac_a_req_pd //|< i
  ,csb2cmac_a_req_pvld //|< i
  ,dp2reg_done //|< i
  ,cmac_a2csb_resp_pd //|> o
  ,cmac_a2csb_resp_valid //|> o
  ,csb2cmac_a_req_prdy //|> o
  ,reg2dp_conv_mode //|> o
  ,reg2dp_op_en //|> o
  ,reg2dp_proc_precision //|> o
  ,slcg_op_en //|> o
  );
input nvdla_core_clk;
input nvdla_core_rstn;
input [62:0] csb2cmac_a_req_pd;
input csb2cmac_a_req_pvld;
input dp2reg_done;
output [33:0] cmac_a2csb_resp_pd;
output cmac_a2csb_resp_valid;
output csb2cmac_a_req_prdy;
output reg2dp_conv_mode;
output reg2dp_op_en;
output [1:0] reg2dp_proc_precision;
output [3+32/2 -1:0] slcg_op_en;
NV_NVDLA_CMAC_reg_dft reg_dft(
    .io_nvdla_core_clk(nvdla_core_clk),
    .reset(!nvdla_core_rstn),
    .io_csb2cmac_a_req_bits(csb2cmac_a_req_pd),
    .io_csb2cmac_a_req_ready(csb2cmac_a_req_prdy),
    .io_csb2cmac_a_req_valid(csb2cmac_a_req_pvld),
    .io_csb2cmac_a_resp_bits(cmac_a2csb_resp_pd),
    .io_csb2cmac_a_resp_valid(cmac_a2csb_resp_valid),
    .io_reg2dp_op_en(reg2dp_op_en),
    .io_reg2dp_field_conv_mode(reg2dp_conv_mode),
    .io_reg2dp_field_proc_precision(reg2dp_proc_precision),
    .io_dp2reg_done(dp2reg_done),
    .io_slcg_op_en(slcg_op_en)
);
endmodule
