module NV_NVDLA_CMAC_CORE_rt_out_dft( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  input         io_nvdla_core_rstn, // @[:@6.4]
  input         io_out_valid, // @[:@6.4]
  input         io_out_bits_mask_0, // @[:@6.4]
  input         io_out_bits_mask_1, // @[:@6.4]
  input         io_out_bits_mask_2, // @[:@6.4]
  input         io_out_bits_mask_3, // @[:@6.4]
  input         io_out_bits_mask_4, // @[:@6.4]
  input         io_out_bits_mask_5, // @[:@6.4]
  input         io_out_bits_mask_6, // @[:@6.4]
  input         io_out_bits_mask_7, // @[:@6.4]
  input         io_out_bits_mask_8, // @[:@6.4]
  input         io_out_bits_mask_9, // @[:@6.4]
  input         io_out_bits_mask_10, // @[:@6.4]
  input         io_out_bits_mask_11, // @[:@6.4]
  input         io_out_bits_mask_12, // @[:@6.4]
  input         io_out_bits_mask_13, // @[:@6.4]
  input         io_out_bits_mask_14, // @[:@6.4]
  input         io_out_bits_mask_15, // @[:@6.4]
  input  [21:0] io_out_bits_data_0, // @[:@6.4]
  input  [21:0] io_out_bits_data_1, // @[:@6.4]
  input  [21:0] io_out_bits_data_2, // @[:@6.4]
  input  [21:0] io_out_bits_data_3, // @[:@6.4]
  input  [21:0] io_out_bits_data_4, // @[:@6.4]
  input  [21:0] io_out_bits_data_5, // @[:@6.4]
  input  [21:0] io_out_bits_data_6, // @[:@6.4]
  input  [21:0] io_out_bits_data_7, // @[:@6.4]
  input  [21:0] io_out_bits_data_8, // @[:@6.4]
  input  [21:0] io_out_bits_data_9, // @[:@6.4]
  input  [21:0] io_out_bits_data_10, // @[:@6.4]
  input  [21:0] io_out_bits_data_11, // @[:@6.4]
  input  [21:0] io_out_bits_data_12, // @[:@6.4]
  input  [21:0] io_out_bits_data_13, // @[:@6.4]
  input  [21:0] io_out_bits_data_14, // @[:@6.4]
  input  [21:0] io_out_bits_data_15, // @[:@6.4]
  input  [8:0]  io_out_bits_pd, // @[:@6.4]
  output        io_mac2accu_valid, // @[:@6.4]
  output        io_mac2accu_bits_mask_0, // @[:@6.4]
  output        io_mac2accu_bits_mask_1, // @[:@6.4]
  output        io_mac2accu_bits_mask_2, // @[:@6.4]
  output        io_mac2accu_bits_mask_3, // @[:@6.4]
  output        io_mac2accu_bits_mask_4, // @[:@6.4]
  output        io_mac2accu_bits_mask_5, // @[:@6.4]
  output        io_mac2accu_bits_mask_6, // @[:@6.4]
  output        io_mac2accu_bits_mask_7, // @[:@6.4]
  output        io_mac2accu_bits_mask_8, // @[:@6.4]
  output        io_mac2accu_bits_mask_9, // @[:@6.4]
  output        io_mac2accu_bits_mask_10, // @[:@6.4]
  output        io_mac2accu_bits_mask_11, // @[:@6.4]
  output        io_mac2accu_bits_mask_12, // @[:@6.4]
  output        io_mac2accu_bits_mask_13, // @[:@6.4]
  output        io_mac2accu_bits_mask_14, // @[:@6.4]
  output        io_mac2accu_bits_mask_15, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_0, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_1, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_2, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_3, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_4, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_5, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_6, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_7, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_8, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_9, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_10, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_11, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_12, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_13, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_14, // @[:@6.4]
  output [21:0] io_mac2accu_bits_data_15, // @[:@6.4]
  output [8:0]  io_mac2accu_bits_pd, // @[:@6.4]
  output        io_dp2reg_done // @[:@6.4]
);
  wire  _T_454; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 41:38:@8.4]
  reg  _T_459; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 48:67:@10.4]
  reg [31:0] _RAND_0;
  reg  _T_462; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 48:67:@11.4]
  reg [31:0] _RAND_1;
  reg  _T_559_0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_2;
  reg  _T_559_1; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_3;
  reg  _T_559_2; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_4;
  reg  _T_559_3; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_5;
  reg  _T_559_4; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_6;
  reg  _T_559_5; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_7;
  reg  _T_559_6; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_8;
  reg  _T_559_7; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_9;
  reg  _T_559_8; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_10;
  reg  _T_559_9; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_11;
  reg  _T_559_10; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_12;
  reg  _T_559_11; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_13;
  reg  _T_559_12; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_14;
  reg  _T_559_13; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_15;
  reg  _T_559_14; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_16;
  reg  _T_559_15; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@30.4]
  reg [31:0] _RAND_17;
  reg  _T_686_0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_18;
  reg  _T_686_1; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_19;
  reg  _T_686_2; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_20;
  reg  _T_686_3; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_21;
  reg  _T_686_4; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_22;
  reg  _T_686_5; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_23;
  reg  _T_686_6; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_24;
  reg  _T_686_7; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_25;
  reg  _T_686_8; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_26;
  reg  _T_686_9; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_27;
  reg  _T_686_10; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_28;
  reg  _T_686_11; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_29;
  reg  _T_686_12; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_30;
  reg  _T_686_13; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_31;
  reg  _T_686_14; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_32;
  reg  _T_686_15; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 51:67:@48.4]
  reg [31:0] _RAND_33;
  reg [8:0] _T_743; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 54:65:@50.4]
  reg [31:0] _RAND_34;
  reg [8:0] _T_746; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 54:65:@51.4]
  reg [31:0] _RAND_35;
  reg [21:0] _T_769_0; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_36;
  reg [21:0] _T_769_1; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_37;
  reg [21:0] _T_769_2; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_38;
  reg [21:0] _T_769_3; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_39;
  reg [21:0] _T_769_4; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_40;
  reg [21:0] _T_769_5; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_41;
  reg [21:0] _T_769_6; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_42;
  reg [21:0] _T_769_7; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_43;
  reg [21:0] _T_769_8; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_44;
  reg [21:0] _T_769_9; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_45;
  reg [21:0] _T_769_10; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_46;
  reg [21:0] _T_769_11; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_47;
  reg [21:0] _T_769_12; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_48;
  reg [21:0] _T_769_13; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_49;
  reg [21:0] _T_769_14; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_50;
  reg [21:0] _T_769_15; // @[retiming.scala 9:92:@53.4]
  reg [31:0] _RAND_51;
  reg [21:0] _T_788_0; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_52;
  reg [21:0] _T_788_1; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_53;
  reg [21:0] _T_788_2; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_54;
  reg [21:0] _T_788_3; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_55;
  reg [21:0] _T_788_4; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_56;
  reg [21:0] _T_788_5; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_57;
  reg [21:0] _T_788_6; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_58;
  reg [21:0] _T_788_7; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_59;
  reg [21:0] _T_788_8; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_60;
  reg [21:0] _T_788_9; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_61;
  reg [21:0] _T_788_10; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_62;
  reg [21:0] _T_788_11; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_63;
  reg [21:0] _T_788_12; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_64;
  reg [21:0] _T_788_13; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_65;
  reg [21:0] _T_788_14; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_66;
  reg [21:0] _T_788_15; // @[retiming.scala 9:92:@54.4]
  reg [31:0] _RAND_67;
  reg  _T_811; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 59:67:@56.4]
  reg [31:0] _RAND_68;
  reg  _T_814; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 59:67:@57.4]
  reg [31:0] _RAND_69;
  wire  _T_815; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 66:39:@92.4]
  wire  _T_816; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 67:39:@93.4]
  wire  _T_817; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 66:83:@94.4]
  wire  _T_818; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 67:84:@95.4]
  wire [8:0] _GEN_0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 75:31:@114.4]
  wire [8:0] _GEN_17; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 75:31:@183.4]
  assign _T_454 = io_nvdla_core_rstn == 1'h0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 41:38:@8.4]
  assign _T_815 = io_out_bits_pd[8]; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 66:39:@92.4]
  assign _T_816 = io_out_bits_pd[6]; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 67:39:@93.4]
  assign _T_817 = _T_815 & _T_816; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 66:83:@94.4]
  assign _T_818 = _T_817 & io_out_valid; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 67:84:@95.4]
  assign _GEN_0 = io_out_valid ? io_out_bits_pd : _T_743; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 75:31:@114.4]
  assign _GEN_17 = _T_459 ? _T_743 : _T_746; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 75:31:@183.4]
  assign io_mac2accu_valid = _T_462; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 86:23:@235.4]
  assign io_mac2accu_bits_mask_0 = _T_686_0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@236.4]
  assign io_mac2accu_bits_mask_1 = _T_686_1; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@237.4]
  assign io_mac2accu_bits_mask_2 = _T_686_2; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@238.4]
  assign io_mac2accu_bits_mask_3 = _T_686_3; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@239.4]
  assign io_mac2accu_bits_mask_4 = _T_686_4; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@240.4]
  assign io_mac2accu_bits_mask_5 = _T_686_5; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@241.4]
  assign io_mac2accu_bits_mask_6 = _T_686_6; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@242.4]
  assign io_mac2accu_bits_mask_7 = _T_686_7; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@243.4]
  assign io_mac2accu_bits_mask_8 = _T_686_8; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@244.4]
  assign io_mac2accu_bits_mask_9 = _T_686_9; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@245.4]
  assign io_mac2accu_bits_mask_10 = _T_686_10; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@246.4]
  assign io_mac2accu_bits_mask_11 = _T_686_11; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@247.4]
  assign io_mac2accu_bits_mask_12 = _T_686_12; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@248.4]
  assign io_mac2accu_bits_mask_13 = _T_686_13; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@249.4]
  assign io_mac2accu_bits_mask_14 = _T_686_14; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@250.4]
  assign io_mac2accu_bits_mask_15 = _T_686_15; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 87:27:@251.4]
  assign io_mac2accu_bits_data_0 = _T_788_0; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@253.4]
  assign io_mac2accu_bits_data_1 = _T_788_1; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@254.4]
  assign io_mac2accu_bits_data_2 = _T_788_2; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@255.4]
  assign io_mac2accu_bits_data_3 = _T_788_3; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@256.4]
  assign io_mac2accu_bits_data_4 = _T_788_4; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@257.4]
  assign io_mac2accu_bits_data_5 = _T_788_5; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@258.4]
  assign io_mac2accu_bits_data_6 = _T_788_6; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@259.4]
  assign io_mac2accu_bits_data_7 = _T_788_7; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@260.4]
  assign io_mac2accu_bits_data_8 = _T_788_8; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@261.4]
  assign io_mac2accu_bits_data_9 = _T_788_9; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@262.4]
  assign io_mac2accu_bits_data_10 = _T_788_10; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@263.4]
  assign io_mac2accu_bits_data_11 = _T_788_11; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@264.4]
  assign io_mac2accu_bits_data_12 = _T_788_12; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@265.4]
  assign io_mac2accu_bits_data_13 = _T_788_13; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@266.4]
  assign io_mac2accu_bits_data_14 = _T_788_14; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@267.4]
  assign io_mac2accu_bits_data_15 = _T_788_15; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 89:27:@268.4]
  assign io_mac2accu_bits_pd = _T_746; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 88:25:@252.4]
  assign io_dp2reg_done = _T_814; // @[NV_NVDLA_CMAC_CORE_rt_out.scala 90:20:@269.4]
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
  _T_459 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_462 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_559_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_559_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_559_2 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_559_3 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_559_4 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_559_5 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_559_6 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_559_7 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_559_8 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_559_9 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_559_10 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_559_11 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_559_12 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_559_13 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_559_14 = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_559_15 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_686_0 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_686_1 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_686_2 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_686_3 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_686_4 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_686_5 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_686_6 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_686_7 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_686_8 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_686_9 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_686_10 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_686_11 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_686_12 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_686_13 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_686_14 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_686_15 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_743 = _RAND_34[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_746 = _RAND_35[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_769_0 = _RAND_36[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_769_1 = _RAND_37[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_769_2 = _RAND_38[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_769_3 = _RAND_39[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_769_4 = _RAND_40[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_769_5 = _RAND_41[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_769_6 = _RAND_42[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_769_7 = _RAND_43[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_769_8 = _RAND_44[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_769_9 = _RAND_45[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_769_10 = _RAND_46[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_769_11 = _RAND_47[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_769_12 = _RAND_48[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_769_13 = _RAND_49[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_769_14 = _RAND_50[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  _T_769_15 = _RAND_51[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  _T_788_0 = _RAND_52[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  _T_788_1 = _RAND_53[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  _T_788_2 = _RAND_54[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_788_3 = _RAND_55[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  _T_788_4 = _RAND_56[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  _T_788_5 = _RAND_57[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_788_6 = _RAND_58[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  _T_788_7 = _RAND_59[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_788_8 = _RAND_60[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_788_9 = _RAND_61[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_788_10 = _RAND_62[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  _T_788_11 = _RAND_63[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_788_12 = _RAND_64[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  _T_788_13 = _RAND_65[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_788_14 = _RAND_66[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_788_15 = _RAND_67[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  _T_811 = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_814 = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_454) begin
      _T_459 <= 1'h0;
    end else begin
      _T_459 <= io_out_valid;
    end
    if (_T_454) begin
      _T_462 <= 1'h0;
    end else begin
      _T_462 <= _T_459;
    end
    if (_T_454) begin
      _T_559_0 <= 1'h0;
    end else begin
      _T_559_0 <= io_out_bits_mask_0;
    end
    if (_T_454) begin
      _T_559_1 <= 1'h0;
    end else begin
      _T_559_1 <= io_out_bits_mask_1;
    end
    if (_T_454) begin
      _T_559_2 <= 1'h0;
    end else begin
      _T_559_2 <= io_out_bits_mask_2;
    end
    if (_T_454) begin
      _T_559_3 <= 1'h0;
    end else begin
      _T_559_3 <= io_out_bits_mask_3;
    end
    if (_T_454) begin
      _T_559_4 <= 1'h0;
    end else begin
      _T_559_4 <= io_out_bits_mask_4;
    end
    if (_T_454) begin
      _T_559_5 <= 1'h0;
    end else begin
      _T_559_5 <= io_out_bits_mask_5;
    end
    if (_T_454) begin
      _T_559_6 <= 1'h0;
    end else begin
      _T_559_6 <= io_out_bits_mask_6;
    end
    if (_T_454) begin
      _T_559_7 <= 1'h0;
    end else begin
      _T_559_7 <= io_out_bits_mask_7;
    end
    if (_T_454) begin
      _T_559_8 <= 1'h0;
    end else begin
      _T_559_8 <= io_out_bits_mask_8;
    end
    if (_T_454) begin
      _T_559_9 <= 1'h0;
    end else begin
      _T_559_9 <= io_out_bits_mask_9;
    end
    if (_T_454) begin
      _T_559_10 <= 1'h0;
    end else begin
      _T_559_10 <= io_out_bits_mask_10;
    end
    if (_T_454) begin
      _T_559_11 <= 1'h0;
    end else begin
      _T_559_11 <= io_out_bits_mask_11;
    end
    if (_T_454) begin
      _T_559_12 <= 1'h0;
    end else begin
      _T_559_12 <= io_out_bits_mask_12;
    end
    if (_T_454) begin
      _T_559_13 <= 1'h0;
    end else begin
      _T_559_13 <= io_out_bits_mask_13;
    end
    if (_T_454) begin
      _T_559_14 <= 1'h0;
    end else begin
      _T_559_14 <= io_out_bits_mask_14;
    end
    if (_T_454) begin
      _T_559_15 <= 1'h0;
    end else begin
      _T_559_15 <= io_out_bits_mask_15;
    end
    if (_T_454) begin
      _T_686_0 <= 1'h0;
    end else begin
      _T_686_0 <= _T_559_0;
    end
    if (_T_454) begin
      _T_686_1 <= 1'h0;
    end else begin
      _T_686_1 <= _T_559_1;
    end
    if (_T_454) begin
      _T_686_2 <= 1'h0;
    end else begin
      _T_686_2 <= _T_559_2;
    end
    if (_T_454) begin
      _T_686_3 <= 1'h0;
    end else begin
      _T_686_3 <= _T_559_3;
    end
    if (_T_454) begin
      _T_686_4 <= 1'h0;
    end else begin
      _T_686_4 <= _T_559_4;
    end
    if (_T_454) begin
      _T_686_5 <= 1'h0;
    end else begin
      _T_686_5 <= _T_559_5;
    end
    if (_T_454) begin
      _T_686_6 <= 1'h0;
    end else begin
      _T_686_6 <= _T_559_6;
    end
    if (_T_454) begin
      _T_686_7 <= 1'h0;
    end else begin
      _T_686_7 <= _T_559_7;
    end
    if (_T_454) begin
      _T_686_8 <= 1'h0;
    end else begin
      _T_686_8 <= _T_559_8;
    end
    if (_T_454) begin
      _T_686_9 <= 1'h0;
    end else begin
      _T_686_9 <= _T_559_9;
    end
    if (_T_454) begin
      _T_686_10 <= 1'h0;
    end else begin
      _T_686_10 <= _T_559_10;
    end
    if (_T_454) begin
      _T_686_11 <= 1'h0;
    end else begin
      _T_686_11 <= _T_559_11;
    end
    if (_T_454) begin
      _T_686_12 <= 1'h0;
    end else begin
      _T_686_12 <= _T_559_12;
    end
    if (_T_454) begin
      _T_686_13 <= 1'h0;
    end else begin
      _T_686_13 <= _T_559_13;
    end
    if (_T_454) begin
      _T_686_14 <= 1'h0;
    end else begin
      _T_686_14 <= _T_559_14;
    end
    if (_T_454) begin
      _T_686_15 <= 1'h0;
    end else begin
      _T_686_15 <= _T_559_15;
    end
    if (_T_454) begin
      _T_743 <= 9'h0;
    end else begin
      if (io_out_valid) begin
        _T_743 <= io_out_bits_pd;
      end
    end
    if (_T_454) begin
      _T_746 <= 9'h0;
    end else begin
      if (_T_459) begin
        _T_746 <= _T_743;
      end
    end
    if (io_out_bits_mask_0) begin
      _T_769_0 <= io_out_bits_data_0;
    end
    if (io_out_bits_mask_1) begin
      _T_769_1 <= io_out_bits_data_1;
    end
    if (io_out_bits_mask_2) begin
      _T_769_2 <= io_out_bits_data_2;
    end
    if (io_out_bits_mask_3) begin
      _T_769_3 <= io_out_bits_data_3;
    end
    if (io_out_bits_mask_4) begin
      _T_769_4 <= io_out_bits_data_4;
    end
    if (io_out_bits_mask_5) begin
      _T_769_5 <= io_out_bits_data_5;
    end
    if (io_out_bits_mask_6) begin
      _T_769_6 <= io_out_bits_data_6;
    end
    if (io_out_bits_mask_7) begin
      _T_769_7 <= io_out_bits_data_7;
    end
    if (io_out_bits_mask_8) begin
      _T_769_8 <= io_out_bits_data_8;
    end
    if (io_out_bits_mask_9) begin
      _T_769_9 <= io_out_bits_data_9;
    end
    if (io_out_bits_mask_10) begin
      _T_769_10 <= io_out_bits_data_10;
    end
    if (io_out_bits_mask_11) begin
      _T_769_11 <= io_out_bits_data_11;
    end
    if (io_out_bits_mask_12) begin
      _T_769_12 <= io_out_bits_data_12;
    end
    if (io_out_bits_mask_13) begin
      _T_769_13 <= io_out_bits_data_13;
    end
    if (io_out_bits_mask_14) begin
      _T_769_14 <= io_out_bits_data_14;
    end
    if (io_out_bits_mask_15) begin
      _T_769_15 <= io_out_bits_data_15;
    end
    if (_T_559_0) begin
      _T_788_0 <= _T_769_0;
    end
    if (_T_559_1) begin
      _T_788_1 <= _T_769_1;
    end
    if (_T_559_2) begin
      _T_788_2 <= _T_769_2;
    end
    if (_T_559_3) begin
      _T_788_3 <= _T_769_3;
    end
    if (_T_559_4) begin
      _T_788_4 <= _T_769_4;
    end
    if (_T_559_5) begin
      _T_788_5 <= _T_769_5;
    end
    if (_T_559_6) begin
      _T_788_6 <= _T_769_6;
    end
    if (_T_559_7) begin
      _T_788_7 <= _T_769_7;
    end
    if (_T_559_8) begin
      _T_788_8 <= _T_769_8;
    end
    if (_T_559_9) begin
      _T_788_9 <= _T_769_9;
    end
    if (_T_559_10) begin
      _T_788_10 <= _T_769_10;
    end
    if (_T_559_11) begin
      _T_788_11 <= _T_769_11;
    end
    if (_T_559_12) begin
      _T_788_12 <= _T_769_12;
    end
    if (_T_559_13) begin
      _T_788_13 <= _T_769_13;
    end
    if (_T_559_14) begin
      _T_788_14 <= _T_769_14;
    end
    if (_T_559_15) begin
      _T_788_15 <= _T_769_15;
    end
    if (_T_454) begin
      _T_811 <= 1'h0;
    end else begin
      _T_811 <= _T_818;
    end
    if (_T_454) begin
      _T_814 <= 1'h0;
    end else begin
      _T_814 <= _T_811;
    end
  end
endmodule
