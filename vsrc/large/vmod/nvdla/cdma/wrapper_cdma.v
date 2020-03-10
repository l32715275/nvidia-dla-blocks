
module wrapper_cdma(
	//===================same to NV_NVDLA_cdma.v========================
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

 ,cdma2buf_dat_wr_sel
 ,cdma2buf_dat_wr_addr
 ,cdma2buf_dat_wr_data

 ,cdma2buf_wt_wr_en

 //| eperl: generated_beg

 ,cdma2buf_wt_wr_sel
 ,cdma2buf_wt_wr_addr
 ,cdma2buf_wt_wr_data

 //| eperl: generated_end
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

 input nvdla_core_clk;
 input nvdla_core_rstn;
 output cdma2csb_resp_valid;
 output [33:0] cdma2csb_resp_pd;
 input csb2cdma_req_pvld;
 output csb2cdma_req_prdy;
 input [62:0] csb2cdma_req_pd;

 output cdma2buf_dat_wr_en;

 output [1:0] cdma2buf_dat_wr_sel;
 output [16:0] cdma2buf_dat_wr_addr;
 output [255:0] cdma2buf_dat_wr_data;

 output cdma2buf_wt_wr_en;
 output [1:0] cdma2buf_wt_wr_sel;
 output [16:0] cdma2buf_wt_wr_addr;
 output [255:0] cdma2buf_wt_wr_data;

 output cdma_dat2cvif_rd_req_valid;
 input cdma_dat2cvif_rd_req_ready;
 output [78:0] cdma_dat2cvif_rd_req_pd;
 input cvif2cdma_dat_rd_rsp_valid;
 output cvif2cdma_dat_rd_rsp_ready;
 input [256:0] cvif2cdma_dat_rd_rsp_pd;
 output cdma_wt2cvif_rd_req_valid;
 input cdma_wt2cvif_rd_req_ready;
 output [78:0] cdma_wt2cvif_rd_req_pd;
 input cvif2cdma_wt_rd_rsp_valid;
 output cvif2cdma_wt_rd_rsp_ready;
 input [256:0] cvif2cdma_wt_rd_rsp_pd;
 output [1:0] cdma_dat2glb_done_intr_pd;
 output [1:0] cdma_wt2glb_done_intr_pd;
 output cdma_dat2mcif_rd_req_valid;
 input cdma_dat2mcif_rd_req_ready;
 output [78:0] cdma_dat2mcif_rd_req_pd;
 input mcif2cdma_dat_rd_rsp_valid;
 output mcif2cdma_dat_rd_rsp_ready;
 input [256:0] mcif2cdma_dat_rd_rsp_pd;
 output cdma_wt2mcif_rd_req_valid;
 input cdma_wt2mcif_rd_req_ready;
 output [78:0] cdma_wt2mcif_rd_req_pd;
 input mcif2cdma_wt_rd_rsp_valid;
 output mcif2cdma_wt_rd_rsp_ready;
 input [256:0] mcif2cdma_wt_rd_rsp_pd;
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
 input [8:0] sc2cdma_wmb_entries;  //extra term?
 input [31:0] pwrbus_ram_pd;
 input dla_clk_ovr_on_sync;
 input global_clk_ovr_on_sync;
 input tmc2slcg_disable_clock_gating;
 //======================nvdla part end========================

 //======================sodla part============================
  wire			   clock;
  wire			   reset;
	wire 			   io_nvdla_clock_nvdla_core_clk;
	wire			   io_nvdla_clock_dla_clk_ovr_on_sync;
	wire         io_nvdla_clock_global_clk_ovr_on_sync;
	wire         io_nvdla_clock_tmc2slcg_disable_clock_gating;
	wire         io_nvdla_core_rstn;

	wire         io_csb2cdma_req_ready;
	wire         io_csb2cdma_req_valid;
	wire [62:0]  io_csb2cdma_req_bits;
	wire         io_csb2cdma_resp_valid;
	wire [33:0]  io_csb2cdma_resp_bits;
	wire [1:0]   io_cdma2buf_dat_wr_sel;
	wire         io_cdma2buf_dat_wr_addr_valid;
	wire [16:0]  io_cdma2buf_dat_wr_addr_bits;
	wire [255:0] io_cdma2buf_dat_wr_data;
	wire [1:0]   io_cdma2buf_wt_wr_sel;
	wire         io_cdma2buf_wt_wr_addr_valid;
	wire [16:0]  io_cdma2buf_wt_wr_addr_bits;
	wire [255:0] io_cdma2buf_wt_wr_data;
	wire [1:0]   io_cdma_dat2glb_done_intr_pd;
	wire [1:0]   io_cdma_wt2glb_done_intr_pd;
	wire         io_cdma_dat2cvif_rd_req_pd_ready;
	wire         io_cdma_dat2cvif_rd_req_pd_valid;
	wire [78:0]  io_cdma_dat2cvif_rd_req_pd_bits;
	wire         io_cvif2cdma_dat_rd_rsp_pd_ready;
	wire         io_cvif2cdma_dat_rd_rsp_pd_valid;
	wire [256:0] io_cvif2cdma_dat_rd_rsp_pd_bits;
	wire         io_cdma_wt2cvif_rd_req_pd_ready;
	wire         io_cdma_wt2cvif_rd_req_pd_valid;
	wire [78:0]  io_cdma_wt2cvif_rd_req_pd_bits;
	wire         io_cvif2cdma_wt_rd_rsp_pd_ready;
	wire         io_cvif2cdma_wt_rd_rsp_pd_valid;
	wire [256:0] io_cvif2cdma_wt_rd_rsp_pd_bits;
	wire         io_cdma_dat2mcif_rd_req_pd_ready;
	wire         io_cdma_dat2mcif_rd_req_pd_valid;
	wire [78:0]  io_cdma_dat2mcif_rd_req_pd_bits;
	wire         io_mcif2cdma_dat_rd_rsp_pd_ready;
	wire         io_mcif2cdma_dat_rd_rsp_pd_valid;
	wire [256:0] io_mcif2cdma_dat_rd_rsp_pd_bits;
	wire         io_cdma_wt2mcif_rd_req_pd_ready;
	wire         io_cdma_wt2mcif_rd_req_pd_valid;
	wire [78:0]  io_cdma_wt2mcif_rd_req_pd_bits;
	wire         io_mcif2cdma_wt_rd_rsp_pd_ready;
	wire         io_mcif2cdma_wt_rd_rsp_pd_valid;
	wire [256:0] io_mcif2cdma_wt_rd_rsp_pd_bits;
	wire         io_sc2cdma_dat_pending_req;
	wire         io_sc2cdma_wt_pending_req;
	wire         io_cdma2sc_dat_pending_ack;
	wire         io_cdma2sc_wt_pending_ack;
	wire         io_cdma2sc_dat_updt_valid;
	wire [14:0]  io_cdma2sc_dat_updt_bits_entries;
	wire [13:0]  io_cdma2sc_dat_updt_bits_slices;
	wire         io_sc2cdma_dat_updt_valid;
	wire [14:0]  io_sc2cdma_dat_updt_bits_entries;
	wire [13:0]  io_sc2cdma_dat_updt_bits_slices;
	wire         io_cdma2sc_wt_updt_valid;
	wire [14:0]  io_cdma2sc_wt_updt_bits_entries;
	wire [13:0]  io_cdma2sc_wt_updt_bits_kernels;
	wire         io_sc2cdma_wt_updt_valid;
	wire [14:0]  io_sc2cdma_wt_updt_bits_entries;
	wire [13:0]  io_sc2cdma_wt_updt_bits_kernels;
	wire [31:0]  io_pwrbus_ram_pd;
	//=====================sodla part end=========================
	//
	//===========connect nvdla_cmac to sodla_cmac=================
	assign io_nvdla_clock_nvdla_core_clk = nvdla_core_clk;
	assign io_nvdla_core_rstn=nvdla_core_rstn;
	assign io_csb2cdma_req_valid = csb2cdma_req_pvld;
	assign io_csb2cdma_req_ready = csb2cdma_req_prdy;
	assign io_csb2cdma_req_bits = csb2cdma_req_pd;
	assign io_csb2cdma_resp_valid = cdma2csb_resp_valid;
	assign io_csb2cdma_resp_bits = cdma2csb_resp_pd;
	assign io_cdma2buf_dat_wr_sel = cdma2buf_dat_wr_sel;
	assign io_cdma2buf_dat_wr_addr_valid = cdma2buf_dat_wr_en;
	assign io_cdma2buf_dat_wr_addr_bits = cdma2buf_dat_wr_addr;
	assign io_cdma2buf_wt_wr_data = cdma2buf_wt_wr_data;
	assign io_cdma2buf_wt_wr_sel = cdma2buf_wt_wr_sel;
	assign io_cdma2buf_wt_wr_addr_valid = cdma2buf_wt_wr_en;
	assign io_cdma2buf_dat_wr_addr_bits = cdma2buf_wt_wr_addr;
	assign io_cdma2buf_wt_wr_data = cdma2buf_wt_wr_data;
	assign io_cdma_dat2glb_done_intr_pd = cdma_dat2glb_done_intr_pd;
	assign io_cdma_wt2glb_done_intr_pd = cdma_wt2glb_done_intr_pd;
	assign io_cdma_dat2cvif_rd_req_pd_valid = cdma_dat2cvif_rd_req_valid;
	assign io_cdma_dat2cvif_rd_req_pd_ready = cdma_dat2cvif_rd_req_ready;
	assign io_cdma_dat2cvif_rd_req_pd_bits = cdma_dat2cvif_rd_req_pd;
	assign io_cvif2cdma_dat_rd_rsp_pd_valid = cvif2cdma_dat_rd_rsp_valid;
	assign io_cvif2cdma_dat_rd_rsp_pd_ready = cvif2cdma_dat_rd_rsp_ready;
	assign io_cvif2cdma_dat_rd_rsp_pd_bits = cvif2cdma_dat_rd_rsp_pd;
	assign io_cdma_wt2cvif_rd_req_pd_valid = cdma_wt2cvif_rd_req_valid;
	assign io_cdma_wt2cvif_rd_req_pd_ready = cdma_wt2cvif_rd_req_ready;
	assign io_cdma_wt2cvif_rd_req_pd_bits = cdma_wt2cvif_rd_req_pd;
	assign io_cvif2cdma_wt_rd_rsp_pd_valid = cvif2cdma_wt_rd_rsp_valid;
	assign io_cvif2cdma_wt_rd_rsp_pd_ready = cvif2cdma_wt_rd_rsp_ready;
	assign io_cvif2cdma_wt_rd_rsp_pd_bits = cvif2cdma_wt_rd_rsp_pd;
	assign io_cdma_dat2mcif_rd_req_pd_valid = cdma_dat2mcif_rd_req_valid;
	assign io_cdma_dat2mcif_rd_req_pd_ready = cdma_dat2mcif_rd_req_ready;
	assign io_cdma_dat2mcif_rd_req_pd_bits = cdma_dat2mcif_rd_req_pd;
	assign io_mcif2cdma_dat_rd_rsp_pd_valid = mcif2cdma_dat_rd_rsp_valid;
	assign io_mcif2cdma_dat_rd_rsp_pd_ready = mcif2cdma_dat_rd_rsp_ready;
	assign io_mcif2cdma_dat_rd_rsp_pd_bits = mcif2cdma_dat_rd_rsp_pd;
  assign io_cdma_wt2mcif_rd_req_pd_valid = cdma_wt2mcif_rd_req_valid;
	assign io_cdma_wt2mcif_rd_req_pd_ready = cdma_wt2mcif_rd_req_ready;
	assign io_cdma_wt2mcif_rd_req_pd_bits = cdma_wt2mcif_rd_req_pd;
	assign io_mcif2cdma_wt_rd_rsp_pd_valid = mcif2cdma_wt_rd_rsp_valid;
	assign io_mcif2cdma_wt_rd_rsp_pd_ready = mcif2cdma_wt_rd_rsp_ready;
	assign io_mcif2cdma_wt_rd_rsp_pd_bits = mcif2cdma_wt_rd_rsp_pd;
	assign io_sc2cdma_dat_pending_req = sc2cdma_dat_pending_req;
	assign io_sc2cdma_wt_pending_req = sc2cdma_wt_pending_req;
	assign io_cdma2sc_dat_pending_ack = cdma2sc_dat_pending_ack;
	assign io_cdma2sc_wt_pending_ack = cdma2sc_wt_pending_ack;
	assign io_cdma2sc_dat_updt_valid = cdma2sc_dat_updt;
	assign io_cdma2sc_dat_updt_bits_entries = cdma2sc_dat_entries;
	assign io_cdma2sc_dat_updt_bits_slices = cdma2sc_dat_slices;
	assign io_sc2cdma_dat_updt_valid = sc2cdma_dat_updt;
	assign io_sc2cdma_dat_updt_bits_entries = sc2cdma_dat_entries;
	assign io_sc2cdma_dat_updt_bits_slices = sc2cdma_dat_slices;
	assign io_cdma2sc_wt_updt_valid = cdma2sc_wt_updt;
	assign io_cdma2sc_wt_updt_bits_kernels = cdma2sc_wt_kernels;
	assign io_cdma2sc_wt_updt_bits_entries = cdma2sc_wt_entries;
	assign io_sc2cdma_wt_updt_valid = sc2cdma_wt_updt;
	assign io_sc2cdma_dat_updt_bits_entries = sc2cdma_dat_entries;
	assign io_sc2cdma_dat_updt_bits_slices = sc2cdma_dat_slices;
  assign io_cdma2sc_wt_updt_valid = cdma2sc_wt_updt;
	assign io_cdma2sc_wt_updt_bits_kernels = cdma2sc_wt_kernels;
	assign io_cdma2sc_wt_updt_bits_entries = cdma2sc_wt_entries;
	assign io_sc2cdma_wt_updt_valid = sc2cdma_wt_updt;
	assign io_sc2cdma_wt_updt_bits_kernels = sc2cdma_wt_kernels;
	assign io_sc2cdma_wt_updt_bits_entries = sc2cdma_wt_entries;

	assign io_pwrbus_ram_pd = pwrbus_ram_pd;
	assign io_nvdla_clock_dla_clk_ovr_on_sync=dla_clk_ovr_on_sync;
	assign	io_nvdla_clock_global_clk_ovr_on_sync=global_clk_ovr_on_sync;
	assign	io_nvdla_clock_tmc2slcg_disable_clock_gating=tmc2slcg_disable_clock_gating;





NV_soDLA_cdma NV_soDLA_cdma(
	.clock(clock),
	.reset(reset),
	.io_nvdla_clock_nvdla_core_clk(io_nvdla_clock_nvdla_core_clk),
	.io_nvdla_clock_dla_clk_ovr_on_sync(io_nvdla_clock_dla_clk_ovr_on_sync),
	.io_nvdla_clock_global_clk_ovr_on_sync(io_nvdla_clock_global_clk_ovr_on_sync),
	.io_nvdla_clock_tmc2slcg_disable_clock_gating(io_nvdla_clock_tmc2slcg_disable_clock_gating),
	.io_nvdla_core_rstn(io_nvdla_core_rstn),
	.io_csb2cdma_req_ready(io_csb2cdma_req_ready),
	.io_csb2cdma_req_valid(io_csb2cdma_req_valid),
	.io_csb2cdma_req_bits(io_csb2cdma_req_bits),
	.io_csb2cdma_resp_valid(io_csb2cdma_resp_valid),
	.io_csb2cdma_resp_bits(io_csb2cdma_resp_bits),
	.io_cdma2buf_dat_wr_sel(io_cdma2buf_dat_wr_sel),
	.io_cdma2buf_dat_wr_addr_valid(io_cdma2buf_dat_wr_addr_valid),
	.io_cdma2buf_dat_wr_addr_bits(io_cdma2buf_dat_wr_addr_bits),
	.io_cdma2buf_dat_wr_data(io_cdma2buf_dat_wr_data),
	.io_cdma2buf_wt_wr_sel(io_cdma2buf_wt_wr_sel),
	.io_cdma2buf_wt_wr_addr_valid(io_cdma2buf_wt_wr_addr_valid),
	.io_cdma2buf_wt_wr_addr_bits(io_cdma2buf_wt_wr_addr_bits),
	.io_cdma2buf_wt_wr_data(io_cdma2buf_wt_wr_data),
	.io_cdma_dat2glb_done_intr_pd(io_cdma_dat2glb_done_intr_pd),
	.io_cdma_wt2glb_done_intr_pd(io_cdma_wt2glb_done_intr_pd),
	.io_cdma_dat2cvif_rd_req_pd_ready(io_cdma_dat2cvif_rd_req_pd_ready),
	.io_cdma_dat2cvif_rd_req_pd_valid(io_cdma_dat2cvif_rd_req_pd_valid),
	.io_cdma_dat2cvif_rd_req_pd_bits(io_cdma_dat2cvif_rd_req_pd_bits),
	.io_cvif2cdma_dat_rd_rsp_pd_ready(io_cvif2cdma_dat_rd_rsp_pd_ready),
	.io_cvif2cdma_dat_rd_rsp_pd_valid(io_cvif2cdma_dat_rd_rsp_pd_valid),
	.io_cvif2cdma_dat_rd_rsp_pd_bits(io_cvif2cdma_dat_rd_rsp_pd_bits),
	.io_cdma_wt2cvif_rd_req_pd_ready(io_cdma_wt2cvif_rd_req_pd_ready),
	.io_cdma_wt2cvif_rd_req_pd_valid(io_cdma_wt2cvif_rd_req_pd_valid),
	.io_cdma_wt2cvif_rd_req_pd_bits(io_cdma_wt2cvif_rd_req_pd_bits),
	.io_cvif2cdma_wt_rd_rsp_pd_ready(io_cvif2cdma_wt_rd_rsp_pd_ready),
	.io_cvif2cdma_wt_rd_rsp_pd_valid(io_cvif2cdma_wt_rd_rsp_pd_valid),
	.io_cvif2cdma_wt_rd_rsp_pd_bits(io_cvif2cdma_wt_rd_rsp_pd_bits),
	.io_cdma_dat2mcif_rd_req_pd_ready(io_cdma_dat2mcif_rd_req_pd_ready),
	.io_cdma_dat2mcif_rd_req_pd_valid(io_cdma_dat2mcif_rd_req_pd_valid),
	.io_cdma_dat2mcif_rd_req_pd_bits(io_cdma_dat2mcif_rd_req_pd_bits),
	.io_mcif2cdma_dat_rd_rsp_pd_ready(io_mcif2cdma_dat_rd_rsp_pd_ready),
	.io_mcif2cdma_dat_rd_rsp_pd_valid(io_mcif2cdma_dat_rd_rsp_pd_valid),
	.io_mcif2cdma_dat_rd_rsp_pd_bits(io_mcif2cdma_dat_rd_rsp_pd_bits),
	.io_cdma_wt2mcif_rd_req_pd_ready(io_cdma_wt2mcif_rd_req_pd_ready),
	.io_cdma_wt2mcif_rd_req_pd_valid(io_cdma_wt2mcif_rd_req_pd_valid),
	.io_cdma_wt2mcif_rd_req_pd_bits(io_cdma_wt2mcif_rd_req_pd_bits),
	.io_mcif2cdma_wt_rd_rsp_pd_ready(io_mcif2cdma_wt_rd_rsp_pd_ready),
	.io_mcif2cdma_wt_rd_rsp_pd_valid(io_mcif2cdma_wt_rd_rsp_pd_valid),
	.io_mcif2cdma_wt_rd_rsp_pd_bits(io_mcif2cdma_wt_rd_rsp_pd_bits),
	.io_sc2cdma_dat_pending_req(io_sc2cdma_dat_pending_req),
	.io_sc2cdma_wt_pending_req(io_sc2cdma_wt_pending_req),
	.io_cdma2sc_dat_pending_ack(io_cdma2sc_dat_pending_ack),
	.io_cdma2sc_wt_pending_ack(io_cdma2sc_wt_pending_ack),
	.io_cdma2sc_dat_updt_valid(io_cdma2sc_dat_updt_valid),
	.io_cdma2sc_dat_updt_bits_entries(io_cdma2sc_dat_updt_bits_entries),
	.io_cdma2sc_dat_updt_bits_slices(io_cdma2sc_dat_updt_bits_slices),
	.io_sc2cdma_dat_updt_valid(io_sc2cdma_dat_updt_valid),
	.io_sc2cdma_dat_updt_bits_entries(io_sc2cdma_dat_updt_bits_entries),
	.io_sc2cdma_dat_updt_bits_slices(io_sc2cdma_dat_updt_bits_slices),
	.io_cdma2sc_wt_updt_valid(io_cdma2sc_wt_updt_valid),
	.io_cdma2sc_wt_updt_bits_entries(io_cdma2sc_wt_updt_bits_entries),
	.io_cdma2sc_wt_updt_bits_kernels(io_cdma2sc_wt_updt_bits_kernels),
	.io_sc2cdma_wt_updt_valid(io_sc2cdma_wt_updt_valid),
	.io_sc2cdma_wt_updt_bits_entries(io_sc2cdma_wt_updt_bits_entries),
	.io_sc2cdma_wt_updt_bits_kernels(io_sc2cdma_wt_updt_bits_kernels),
	.io_pwrbus_ram_pd(io_pwrbus_ram_pd)
	);

endmodule
