module wrapper_cbuf (
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
  wire          io_nvdla_core_clk; // @[:@486.4]
  wire          io_nvdla_core_rstn; // @[:@486.4]
  wire  [31:0]  io_pwrbus_ram_pd; // @[:@486.4]
  wire          io_cdma2buf_wr_en_0; // @[:@486.4]
  wire          io_cdma2buf_wr_en_1; // @[:@486.4]
  wire  [1:0]   io_cdma2buf_wr_sel_0; // @[:@486.4]
  wire  [1:0]   io_cdma2buf_wr_sel_1; // @[:@486.4]
  wire  [12:0]  io_cdma2buf_wr_addr_0; // @[:@486.4]
  wire  [12:0]  io_cdma2buf_wr_addr_1; // @[:@486.4]
  wire  [255:0] io_cdma2buf_wr_data_0; // @[:@486.4]
  wire  [255:0] io_cdma2buf_wr_data_1; // @[:@486.4]
  wire          io_sc2buf_dat_rd_addr_valid; // @[:@486.4]
  wire  [12:0]  io_sc2buf_dat_rd_addr_bits; // @[:@486.4]
  wire         io_sc2buf_dat_rd_data_valid; // @[:@486.4]
  wire [511:0] io_sc2buf_dat_rd_data_bits;// @[:@486.4]
  wire          io_sc2buf_wt_rd_addr_valid; // @[:@486.4]
  wire  [12:0]  io_sc2buf_wt_rd_addr_bits;// @[:@486.4]
  wire         io_sc2buf_wt_rd_data_valid; // @[:@486.4]
  wire [511:0] io_sc2buf_wt_rd_data_bits; // @[:@486.4]
  
  assign io_nvdla_core_clk=nvdla_core_clk; // @[:@486.4]
  assign io_nvdla_core_rstn=nvdla_core_rstn; // @[:@486.4]
  assign io_pwrbus_ram_pd=pwrbus_ram_pd; // @[:@486.4]
  assign io_cdma2buf_wr_en_0=cdma2buf_wr_en0; // @[:@486.4]
  assign io_cdma2buf_wr_en_1=cdma2buf_wr_en1; // @[:@486.4]
  assign o_cdma2buf_wr_sel_0=cdma2buf_wr_sel0; // @[:@486.4]
  assign io_cdma2buf_wr_sel_1=cdma2buf_wr_sel1; // @[:@486.4]
  assign io_cdma2buf_wr_addr_0=cdma2buf_wr_addr0; // @[:@486.4]
  assign io_cdma2buf_wr_addr_1=cdma2buf_wr_addr1; // @[:@486.4]
  assign io_cdma2buf_wr_data_0=cdma2buf_wr_data0; // @[:@486.4]
  assign io_cdma2buf_wr_data_1=cdma2buf_wr_data1; // @[:@486.4]
  assign io_sc2buf_dat_rd_addr_valid== sc2buf_dat_rd_en; // @[:@486.4]
  assign io_sc2buf_dat_rd_addr_bits=sc2buf_dat_rd_addr; // @[:@486.4]
  assign io_sc2buf_dat_rd_data_valid=sc2buf_dat_rd_valid; // @[:@486.4]
  assign io_sc2buf_dat_rd_data_bits=sc2buf_dat_rd_data; // @[:@486.4]
  assign io_sc2buf_wt_rd_addr_valid= sc2buf_wt_rd_en; // @[:@486.4]
  assign io_sc2buf_wt_rd_addr_bits=sc2buf_wt_rd_addr; // @[:@486.4]
  assign io_sc2buf_wt_rd_data_valid=sc2buf_wt_rd_valid; // @[:@486.4]
  assign io_sc2buf_wt_rd_data_bits=sc2buf_wt_rd_data; // @[:@486.4]

NV_soDLA_cbuf NV_soDLA_cbuf( // @[:@483.2]
  //input          clock, // @[:@484.4]
  //input          reset, // @[:@485.4]
  .io_nvdla_core_clk      (io_nvdla_core_clk), // @[:@486.4]
  .io_nvdla_core_rstn     (io_nvdla_core_rstn), // @[:@486.4]
  .io_pwrbus_ram_pd       (io_pwrbus_ram_pd),// @[:@486.4]
  .io_cdma2buf_wr_en_0    (io_cdma2buf_wr_en_0),// @[:@486.4]
  .io_cdma2buf_wr_en_1    (io_cdma2buf_wr_en_1),// @[:@486.4]
  .io_cdma2buf_wr_sel_0   (io_cdma2buf_wr_sel_0),// @[:@486.4]
  .io_cdma2buf_wr_sel_1   (io_cdma2buf_wr_sel_1),// @[:@486.4]
  .io_cdma2buf_wr_addr_0  (io_cdma2buf_wr_addr_0),// @[:@486.4]
  .io_cdma2buf_wr_addr_1  (io_cdma2buf_wr_addr_1),// @[:@486.4]
  .io_cdma2buf_wr_data_0  (io_cdma2buf_wr_data_0),// @[:@486.4]
  .io_cdma2buf_wr_data_1  (io_cdma2buf_wr_data_1),// @[:@486.4]
  .io_sc2buf_dat_rd_addr_valid  (io_sc2buf_dat_rd_addr_valid),// @[:@486.4]
  .io_sc2buf_dat_rd_addr_bits   (io_sc2buf_dat_rd_addr_bits),// @[:@486.4]
  .io_sc2buf_dat_rd_data_valid  (io_sc2buf_dat_rd_data_valid),// @[:@486.4]
  .io_sc2buf_dat_rd_data_bits   (io_sc2buf_dat_rd_data_bits),// @[:@486.4]
  .io_sc2buf_wt_rd_addr_valid   (io_sc2buf_wt_rd_addr_valid),// @[:@486.4]
  .io_sc2buf_wt_rd_addr_bits    (io_sc2buf_wt_rd_addr_bits),// @[:@486.4]
  .io_sc2buf_wt_rd_data_valid   (io_sc2buf_wt_rd_data_valid),// @[:@486.4]
  .io_sc2buf_wt_rd_data_bits    (io_sc2buf_wt_rd_data_bits)// @[:@486.4]
);
endmodule