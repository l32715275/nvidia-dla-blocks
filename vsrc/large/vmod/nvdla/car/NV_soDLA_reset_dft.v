module OR2D1( // @[:@10.2]
  input   io_A1, // @[:@13.4]
  output  io_Z // @[:@13.4]
);
  assign io_Z = io_A1; // @[OR2D1.scala 12:8:@16.4]
endmodule
module MUX2D4( // @[:@18.2]
  input   io_I0, // @[:@21.4]
  input   io_I1, // @[:@21.4]
  input   io_S, // @[:@21.4]
  output  io_Z // @[:@21.4]
);
  assign io_Z = io_S ? io_I1 : io_I0; // @[MUX2D4.scala 13:8:@24.4]
endmodule
module p_SSYNC2DO_C_PP( // @[:@26.2]
  input   io_clk, // @[:@29.4]
  input   io_d, // @[:@29.4]
  output  io_q, // @[:@29.4]
  input   io_clr_ // @[:@29.4]
);
  wire  _T_14; // @[p_SSYNC2DO_C_PP.scala 15:27:@31.4]
  reg  _T_17; // @[p_SSYNC2DO_C_PP.scala 17:24:@32.4]
  reg [31:0] _RAND_0;
  reg  _T_20; // @[p_SSYNC2DO_C_PP.scala 18:25:@33.4]
  reg [31:0] _RAND_1;
  assign _T_14 = io_clr_ == 1'h0; // @[p_SSYNC2DO_C_PP.scala 15:27:@31.4]
  assign io_q = _T_17; // @[p_SSYNC2DO_C_PP.scala 23:10:@36.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_17 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_20 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (_T_14) begin
      _T_17 <= 1'h0;
    end else begin
      _T_17 <= _T_20;
    end
    if (_T_14) begin
      _T_20 <= 1'h0;
    end else begin
      _T_20 <= io_d;
    end
  end
endmodule
module sync_reset( // @[:@46.2]
  input   io_clk, // @[:@49.4]
  input   io_inreset_, // @[:@49.4]
  input   io_direct_reset_, // @[:@49.4]
  input   io_test_mode, // @[:@49.4]
  output  io_outreset_ // @[:@49.4]
);
  wire  UJ_inreset_x_clamp_io_A1; // @[sync_reset.scala 25:36:@59.4]
  wire  UJ_inreset_x_clamp_io_Z; // @[sync_reset.scala 25:36:@59.4]
  wire  UI_test_mode_inmux_io_I0; // @[sync_reset.scala 30:36:@65.4]
  wire  UI_test_mode_inmux_io_I1; // @[sync_reset.scala 30:36:@65.4]
  wire  UI_test_mode_inmux_io_S; // @[sync_reset.scala 30:36:@65.4]
  wire  UI_test_mode_inmux_io_Z; // @[sync_reset.scala 30:36:@65.4]
  wire  NV_GENERIC_CELL_io_clk; // @[sync_reset.scala 36:33:@72.4]
  wire  NV_GENERIC_CELL_io_d; // @[sync_reset.scala 36:33:@72.4]
  wire  NV_GENERIC_CELL_io_q; // @[sync_reset.scala 36:33:@72.4]
  wire  NV_GENERIC_CELL_io_clr_; // @[sync_reset.scala 36:33:@72.4]
  wire  UI_test_mode_outmux_io_I0; // @[sync_reset.scala 42:37:@79.4]
  wire  UI_test_mode_outmux_io_I1; // @[sync_reset.scala 42:37:@79.4]
  wire  UI_test_mode_outmux_io_S; // @[sync_reset.scala 42:37:@79.4]
  wire  UI_test_mode_outmux_io_Z; // @[sync_reset.scala 42:37:@79.4]
  OR2D1 UJ_inreset_x_clamp ( // @[sync_reset.scala 25:36:@59.4]
    .io_A1(UJ_inreset_x_clamp_io_A1),
    .io_Z(UJ_inreset_x_clamp_io_Z)
  );
  MUX2D4 UI_test_mode_inmux ( // @[sync_reset.scala 30:36:@65.4]
    .io_I0(UI_test_mode_inmux_io_I0),
    .io_I1(UI_test_mode_inmux_io_I1),
    .io_S(UI_test_mode_inmux_io_S),
    .io_Z(UI_test_mode_inmux_io_Z)
  );
  p_SSYNC2DO_C_PP NV_GENERIC_CELL ( // @[sync_reset.scala 36:33:@72.4]
    .io_clk(NV_GENERIC_CELL_io_clk),
    .io_d(NV_GENERIC_CELL_io_d),
    .io_q(NV_GENERIC_CELL_io_q),
    .io_clr_(NV_GENERIC_CELL_io_clr_)
  );
  MUX2D4 UI_test_mode_outmux ( // @[sync_reset.scala 42:37:@79.4]
    .io_I0(UI_test_mode_outmux_io_I0),
    .io_I1(UI_test_mode_outmux_io_I1),
    .io_S(UI_test_mode_outmux_io_S),
    .io_Z(UI_test_mode_outmux_io_Z)
  );
  assign io_outreset_ = UI_test_mode_outmux_io_Z; // @[sync_reset.scala 46:18:@85.4]
  assign UJ_inreset_x_clamp_io_A1 = io_inreset_; // @[sync_reset.scala 26:30:@62.4]
  assign UI_test_mode_inmux_io_I0 = io_inreset_; // @[sync_reset.scala 33:30:@70.4]
  assign UI_test_mode_inmux_io_I1 = io_direct_reset_; // @[sync_reset.scala 32:30:@69.4]
  assign UI_test_mode_inmux_io_S = io_test_mode; // @[sync_reset.scala 31:29:@68.4]
  assign NV_GENERIC_CELL_io_clk = io_clk; // @[sync_reset.scala 37:28:@75.4]
  assign NV_GENERIC_CELL_io_d = UJ_inreset_x_clamp_io_Z; // @[sync_reset.scala 39:26:@77.4]
  assign NV_GENERIC_CELL_io_clr_ = UI_test_mode_inmux_io_Z; // @[sync_reset.scala 38:29:@76.4]
  assign UI_test_mode_outmux_io_I0 = NV_GENERIC_CELL_io_q; // @[sync_reset.scala 45:31:@84.4]
  assign UI_test_mode_outmux_io_I1 = io_direct_reset_; // @[sync_reset.scala 44:31:@83.4]
  assign UI_test_mode_outmux_io_S = io_test_mode; // @[sync_reset.scala 43:30:@82.4]
endmodule
module NV_soDLA_reset_dft( // @[:@87.2]
  input   clock, // @[:@88.4]
  input   reset, // @[:@89.4]
  input   io_dla_reset_rstn, // @[:@90.4]
  input   io_direct_reset_, // @[:@90.4]
  input   io_test_mode, // @[:@90.4]
  output  io_synced_rstn, // @[:@90.4]
  input   io_nvdla_clk // @[:@90.4]
);
  wire  sync_reset_synced_rstn_io_clk; // @[NV_NVDLA_reset.scala 36:40:@92.4]
  wire  sync_reset_synced_rstn_io_inreset_; // @[NV_NVDLA_reset.scala 36:40:@92.4]
  wire  sync_reset_synced_rstn_io_direct_reset_; // @[NV_NVDLA_reset.scala 36:40:@92.4]
  wire  sync_reset_synced_rstn_io_test_mode; // @[NV_NVDLA_reset.scala 36:40:@92.4]
  wire  sync_reset_synced_rstn_io_outreset_; // @[NV_NVDLA_reset.scala 36:40:@92.4]
  sync_reset sync_reset_synced_rstn ( // @[NV_NVDLA_reset.scala 36:40:@92.4]
    .io_clk(sync_reset_synced_rstn_io_clk),
    .io_inreset_(sync_reset_synced_rstn_io_inreset_),
    .io_direct_reset_(sync_reset_synced_rstn_io_direct_reset_),
    .io_test_mode(sync_reset_synced_rstn_io_test_mode),
    .io_outreset_(sync_reset_synced_rstn_io_outreset_)
  );
  assign io_synced_rstn = sync_reset_synced_rstn_io_outreset_; // @[NV_NVDLA_reset.scala 41:20:@99.4]
  assign sync_reset_synced_rstn_io_clk = io_nvdla_clk; // @[NV_NVDLA_reset.scala 37:35:@95.4]
  assign sync_reset_synced_rstn_io_inreset_ = io_dla_reset_rstn; // @[NV_NVDLA_reset.scala 38:40:@96.4]
  assign sync_reset_synced_rstn_io_direct_reset_ = io_direct_reset_; // @[NV_NVDLA_reset.scala 39:45:@97.4]
  assign sync_reset_synced_rstn_io_test_mode = io_test_mode; // @[NV_NVDLA_reset.scala 40:41:@98.4]
endmodule
