//module NV_NVDLA_CMAC_CORE_mac_dft( // @[:@3.2]
module NV_NVDLA_CMAC_CORE_mac(
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  input         io_nvdla_core_rstn, // @[:@6.4]
  input         io_dat_actv_0_valid, // @[:@6.4]
  input         io_dat_actv_0_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_0_bits_data, // @[:@6.4]
  input         io_dat_actv_1_valid, // @[:@6.4]
  input         io_dat_actv_1_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_1_bits_data, // @[:@6.4]
  input         io_dat_actv_2_valid, // @[:@6.4]
  input         io_dat_actv_2_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_2_bits_data, // @[:@6.4]
  input         io_dat_actv_3_valid, // @[:@6.4]
  input         io_dat_actv_3_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_3_bits_data, // @[:@6.4]
  input         io_dat_actv_4_valid, // @[:@6.4]
  input         io_dat_actv_4_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_4_bits_data, // @[:@6.4]
  input         io_dat_actv_5_valid, // @[:@6.4]
  input         io_dat_actv_5_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_5_bits_data, // @[:@6.4]
  input         io_dat_actv_6_valid, // @[:@6.4]
  input         io_dat_actv_6_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_6_bits_data, // @[:@6.4]
  input         io_dat_actv_7_valid, // @[:@6.4]
  input         io_dat_actv_7_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_7_bits_data, // @[:@6.4]
  input         io_dat_actv_8_valid, // @[:@6.4]
  input         io_dat_actv_8_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_8_bits_data, // @[:@6.4]
  input         io_dat_actv_9_valid, // @[:@6.4]
  input         io_dat_actv_9_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_9_bits_data, // @[:@6.4]
  input         io_dat_actv_10_valid, // @[:@6.4]
  input         io_dat_actv_10_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_10_bits_data, // @[:@6.4]
  input         io_dat_actv_11_valid, // @[:@6.4]
  input         io_dat_actv_11_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_11_bits_data, // @[:@6.4]
  input         io_dat_actv_12_valid, // @[:@6.4]
  input         io_dat_actv_12_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_12_bits_data, // @[:@6.4]
  input         io_dat_actv_13_valid, // @[:@6.4]
  input         io_dat_actv_13_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_13_bits_data, // @[:@6.4]
  input         io_dat_actv_14_valid, // @[:@6.4]
  input         io_dat_actv_14_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_14_bits_data, // @[:@6.4]
  input         io_dat_actv_15_valid, // @[:@6.4]
  input         io_dat_actv_15_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_15_bits_data, // @[:@6.4]
  input         io_dat_actv_16_valid, // @[:@6.4]
  input         io_dat_actv_16_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_16_bits_data, // @[:@6.4]
  input         io_dat_actv_17_valid, // @[:@6.4]
  input         io_dat_actv_17_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_17_bits_data, // @[:@6.4]
  input         io_dat_actv_18_valid, // @[:@6.4]
  input         io_dat_actv_18_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_18_bits_data, // @[:@6.4]
  input         io_dat_actv_19_valid, // @[:@6.4]
  input         io_dat_actv_19_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_19_bits_data, // @[:@6.4]
  input         io_dat_actv_20_valid, // @[:@6.4]
  input         io_dat_actv_20_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_20_bits_data, // @[:@6.4]
  input         io_dat_actv_21_valid, // @[:@6.4]
  input         io_dat_actv_21_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_21_bits_data, // @[:@6.4]
  input         io_dat_actv_22_valid, // @[:@6.4]
  input         io_dat_actv_22_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_22_bits_data, // @[:@6.4]
  input         io_dat_actv_23_valid, // @[:@6.4]
  input         io_dat_actv_23_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_23_bits_data, // @[:@6.4]
  input         io_dat_actv_24_valid, // @[:@6.4]
  input         io_dat_actv_24_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_24_bits_data, // @[:@6.4]
  input         io_dat_actv_25_valid, // @[:@6.4]
  input         io_dat_actv_25_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_25_bits_data, // @[:@6.4]
  input         io_dat_actv_26_valid, // @[:@6.4]
  input         io_dat_actv_26_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_26_bits_data, // @[:@6.4]
  input         io_dat_actv_27_valid, // @[:@6.4]
  input         io_dat_actv_27_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_27_bits_data, // @[:@6.4]
  input         io_dat_actv_28_valid, // @[:@6.4]
  input         io_dat_actv_28_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_28_bits_data, // @[:@6.4]
  input         io_dat_actv_29_valid, // @[:@6.4]
  input         io_dat_actv_29_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_29_bits_data, // @[:@6.4]
  input         io_dat_actv_30_valid, // @[:@6.4]
  input         io_dat_actv_30_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_30_bits_data, // @[:@6.4]
  input         io_dat_actv_31_valid, // @[:@6.4]
  input         io_dat_actv_31_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_31_bits_data, // @[:@6.4]
  input         io_dat_actv_32_valid, // @[:@6.4]
  input         io_dat_actv_32_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_32_bits_data, // @[:@6.4]
  input         io_dat_actv_33_valid, // @[:@6.4]
  input         io_dat_actv_33_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_33_bits_data, // @[:@6.4]
  input         io_dat_actv_34_valid, // @[:@6.4]
  input         io_dat_actv_34_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_34_bits_data, // @[:@6.4]
  input         io_dat_actv_35_valid, // @[:@6.4]
  input         io_dat_actv_35_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_35_bits_data, // @[:@6.4]
  input         io_dat_actv_36_valid, // @[:@6.4]
  input         io_dat_actv_36_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_36_bits_data, // @[:@6.4]
  input         io_dat_actv_37_valid, // @[:@6.4]
  input         io_dat_actv_37_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_37_bits_data, // @[:@6.4]
  input         io_dat_actv_38_valid, // @[:@6.4]
  input         io_dat_actv_38_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_38_bits_data, // @[:@6.4]
  input         io_dat_actv_39_valid, // @[:@6.4]
  input         io_dat_actv_39_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_39_bits_data, // @[:@6.4]
  input         io_dat_actv_40_valid, // @[:@6.4]
  input         io_dat_actv_40_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_40_bits_data, // @[:@6.4]
  input         io_dat_actv_41_valid, // @[:@6.4]
  input         io_dat_actv_41_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_41_bits_data, // @[:@6.4]
  input         io_dat_actv_42_valid, // @[:@6.4]
  input         io_dat_actv_42_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_42_bits_data, // @[:@6.4]
  input         io_dat_actv_43_valid, // @[:@6.4]
  input         io_dat_actv_43_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_43_bits_data, // @[:@6.4]
  input         io_dat_actv_44_valid, // @[:@6.4]
  input         io_dat_actv_44_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_44_bits_data, // @[:@6.4]
  input         io_dat_actv_45_valid, // @[:@6.4]
  input         io_dat_actv_45_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_45_bits_data, // @[:@6.4]
  input         io_dat_actv_46_valid, // @[:@6.4]
  input         io_dat_actv_46_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_46_bits_data, // @[:@6.4]
  input         io_dat_actv_47_valid, // @[:@6.4]
  input         io_dat_actv_47_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_47_bits_data, // @[:@6.4]
  input         io_dat_actv_48_valid, // @[:@6.4]
  input         io_dat_actv_48_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_48_bits_data, // @[:@6.4]
  input         io_dat_actv_49_valid, // @[:@6.4]
  input         io_dat_actv_49_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_49_bits_data, // @[:@6.4]
  input         io_dat_actv_50_valid, // @[:@6.4]
  input         io_dat_actv_50_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_50_bits_data, // @[:@6.4]
  input         io_dat_actv_51_valid, // @[:@6.4]
  input         io_dat_actv_51_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_51_bits_data, // @[:@6.4]
  input         io_dat_actv_52_valid, // @[:@6.4]
  input         io_dat_actv_52_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_52_bits_data, // @[:@6.4]
  input         io_dat_actv_53_valid, // @[:@6.4]
  input         io_dat_actv_53_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_53_bits_data, // @[:@6.4]
  input         io_dat_actv_54_valid, // @[:@6.4]
  input         io_dat_actv_54_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_54_bits_data, // @[:@6.4]
  input         io_dat_actv_55_valid, // @[:@6.4]
  input         io_dat_actv_55_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_55_bits_data, // @[:@6.4]
  input         io_dat_actv_56_valid, // @[:@6.4]
  input         io_dat_actv_56_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_56_bits_data, // @[:@6.4]
  input         io_dat_actv_57_valid, // @[:@6.4]
  input         io_dat_actv_57_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_57_bits_data, // @[:@6.4]
  input         io_dat_actv_58_valid, // @[:@6.4]
  input         io_dat_actv_58_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_58_bits_data, // @[:@6.4]
  input         io_dat_actv_59_valid, // @[:@6.4]
  input         io_dat_actv_59_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_59_bits_data, // @[:@6.4]
  input         io_dat_actv_60_valid, // @[:@6.4]
  input         io_dat_actv_60_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_60_bits_data, // @[:@6.4]
  input         io_dat_actv_61_valid, // @[:@6.4]
  input         io_dat_actv_61_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_61_bits_data, // @[:@6.4]
  input         io_dat_actv_62_valid, // @[:@6.4]
  input         io_dat_actv_62_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_62_bits_data, // @[:@6.4]
  input         io_dat_actv_63_valid, // @[:@6.4]
  input         io_dat_actv_63_bits_nz, // @[:@6.4]
  input  [7:0]  io_dat_actv_63_bits_data, // @[:@6.4]
  input         io_wt_actv_0_valid, // @[:@6.4]
  input         io_wt_actv_0_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_0_bits_data, // @[:@6.4]
  input         io_wt_actv_1_valid, // @[:@6.4]
  input         io_wt_actv_1_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_1_bits_data, // @[:@6.4]
  input         io_wt_actv_2_valid, // @[:@6.4]
  input         io_wt_actv_2_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_2_bits_data, // @[:@6.4]
  input         io_wt_actv_3_valid, // @[:@6.4]
  input         io_wt_actv_3_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_3_bits_data, // @[:@6.4]
  input         io_wt_actv_4_valid, // @[:@6.4]
  input         io_wt_actv_4_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_4_bits_data, // @[:@6.4]
  input         io_wt_actv_5_valid, // @[:@6.4]
  input         io_wt_actv_5_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_5_bits_data, // @[:@6.4]
  input         io_wt_actv_6_valid, // @[:@6.4]
  input         io_wt_actv_6_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_6_bits_data, // @[:@6.4]
  input         io_wt_actv_7_valid, // @[:@6.4]
  input         io_wt_actv_7_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_7_bits_data, // @[:@6.4]
  input         io_wt_actv_8_valid, // @[:@6.4]
  input         io_wt_actv_8_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_8_bits_data, // @[:@6.4]
  input         io_wt_actv_9_valid, // @[:@6.4]
  input         io_wt_actv_9_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_9_bits_data, // @[:@6.4]
  input         io_wt_actv_10_valid, // @[:@6.4]
  input         io_wt_actv_10_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_10_bits_data, // @[:@6.4]
  input         io_wt_actv_11_valid, // @[:@6.4]
  input         io_wt_actv_11_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_11_bits_data, // @[:@6.4]
  input         io_wt_actv_12_valid, // @[:@6.4]
  input         io_wt_actv_12_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_12_bits_data, // @[:@6.4]
  input         io_wt_actv_13_valid, // @[:@6.4]
  input         io_wt_actv_13_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_13_bits_data, // @[:@6.4]
  input         io_wt_actv_14_valid, // @[:@6.4]
  input         io_wt_actv_14_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_14_bits_data, // @[:@6.4]
  input         io_wt_actv_15_valid, // @[:@6.4]
  input         io_wt_actv_15_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_15_bits_data, // @[:@6.4]
  input         io_wt_actv_16_valid, // @[:@6.4]
  input         io_wt_actv_16_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_16_bits_data, // @[:@6.4]
  input         io_wt_actv_17_valid, // @[:@6.4]
  input         io_wt_actv_17_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_17_bits_data, // @[:@6.4]
  input         io_wt_actv_18_valid, // @[:@6.4]
  input         io_wt_actv_18_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_18_bits_data, // @[:@6.4]
  input         io_wt_actv_19_valid, // @[:@6.4]
  input         io_wt_actv_19_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_19_bits_data, // @[:@6.4]
  input         io_wt_actv_20_valid, // @[:@6.4]
  input         io_wt_actv_20_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_20_bits_data, // @[:@6.4]
  input         io_wt_actv_21_valid, // @[:@6.4]
  input         io_wt_actv_21_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_21_bits_data, // @[:@6.4]
  input         io_wt_actv_22_valid, // @[:@6.4]
  input         io_wt_actv_22_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_22_bits_data, // @[:@6.4]
  input         io_wt_actv_23_valid, // @[:@6.4]
  input         io_wt_actv_23_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_23_bits_data, // @[:@6.4]
  input         io_wt_actv_24_valid, // @[:@6.4]
  input         io_wt_actv_24_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_24_bits_data, // @[:@6.4]
  input         io_wt_actv_25_valid, // @[:@6.4]
  input         io_wt_actv_25_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_25_bits_data, // @[:@6.4]
  input         io_wt_actv_26_valid, // @[:@6.4]
  input         io_wt_actv_26_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_26_bits_data, // @[:@6.4]
  input         io_wt_actv_27_valid, // @[:@6.4]
  input         io_wt_actv_27_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_27_bits_data, // @[:@6.4]
  input         io_wt_actv_28_valid, // @[:@6.4]
  input         io_wt_actv_28_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_28_bits_data, // @[:@6.4]
  input         io_wt_actv_29_valid, // @[:@6.4]
  input         io_wt_actv_29_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_29_bits_data, // @[:@6.4]
  input         io_wt_actv_30_valid, // @[:@6.4]
  input         io_wt_actv_30_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_30_bits_data, // @[:@6.4]
  input         io_wt_actv_31_valid, // @[:@6.4]
  input         io_wt_actv_31_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_31_bits_data, // @[:@6.4]
  input         io_wt_actv_32_valid, // @[:@6.4]
  input         io_wt_actv_32_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_32_bits_data, // @[:@6.4]
  input         io_wt_actv_33_valid, // @[:@6.4]
  input         io_wt_actv_33_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_33_bits_data, // @[:@6.4]
  input         io_wt_actv_34_valid, // @[:@6.4]
  input         io_wt_actv_34_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_34_bits_data, // @[:@6.4]
  input         io_wt_actv_35_valid, // @[:@6.4]
  input         io_wt_actv_35_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_35_bits_data, // @[:@6.4]
  input         io_wt_actv_36_valid, // @[:@6.4]
  input         io_wt_actv_36_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_36_bits_data, // @[:@6.4]
  input         io_wt_actv_37_valid, // @[:@6.4]
  input         io_wt_actv_37_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_37_bits_data, // @[:@6.4]
  input         io_wt_actv_38_valid, // @[:@6.4]
  input         io_wt_actv_38_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_38_bits_data, // @[:@6.4]
  input         io_wt_actv_39_valid, // @[:@6.4]
  input         io_wt_actv_39_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_39_bits_data, // @[:@6.4]
  input         io_wt_actv_40_valid, // @[:@6.4]
  input         io_wt_actv_40_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_40_bits_data, // @[:@6.4]
  input         io_wt_actv_41_valid, // @[:@6.4]
  input         io_wt_actv_41_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_41_bits_data, // @[:@6.4]
  input         io_wt_actv_42_valid, // @[:@6.4]
  input         io_wt_actv_42_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_42_bits_data, // @[:@6.4]
  input         io_wt_actv_43_valid, // @[:@6.4]
  input         io_wt_actv_43_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_43_bits_data, // @[:@6.4]
  input         io_wt_actv_44_valid, // @[:@6.4]
  input         io_wt_actv_44_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_44_bits_data, // @[:@6.4]
  input         io_wt_actv_45_valid, // @[:@6.4]
  input         io_wt_actv_45_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_45_bits_data, // @[:@6.4]
  input         io_wt_actv_46_valid, // @[:@6.4]
  input         io_wt_actv_46_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_46_bits_data, // @[:@6.4]
  input         io_wt_actv_47_valid, // @[:@6.4]
  input         io_wt_actv_47_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_47_bits_data, // @[:@6.4]
  input         io_wt_actv_48_valid, // @[:@6.4]
  input         io_wt_actv_48_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_48_bits_data, // @[:@6.4]
  input         io_wt_actv_49_valid, // @[:@6.4]
  input         io_wt_actv_49_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_49_bits_data, // @[:@6.4]
  input         io_wt_actv_50_valid, // @[:@6.4]
  input         io_wt_actv_50_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_50_bits_data, // @[:@6.4]
  input         io_wt_actv_51_valid, // @[:@6.4]
  input         io_wt_actv_51_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_51_bits_data, // @[:@6.4]
  input         io_wt_actv_52_valid, // @[:@6.4]
  input         io_wt_actv_52_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_52_bits_data, // @[:@6.4]
  input         io_wt_actv_53_valid, // @[:@6.4]
  input         io_wt_actv_53_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_53_bits_data, // @[:@6.4]
  input         io_wt_actv_54_valid, // @[:@6.4]
  input         io_wt_actv_54_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_54_bits_data, // @[:@6.4]
  input         io_wt_actv_55_valid, // @[:@6.4]
  input         io_wt_actv_55_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_55_bits_data, // @[:@6.4]
  input         io_wt_actv_56_valid, // @[:@6.4]
  input         io_wt_actv_56_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_56_bits_data, // @[:@6.4]
  input         io_wt_actv_57_valid, // @[:@6.4]
  input         io_wt_actv_57_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_57_bits_data, // @[:@6.4]
  input         io_wt_actv_58_valid, // @[:@6.4]
  input         io_wt_actv_58_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_58_bits_data, // @[:@6.4]
  input         io_wt_actv_59_valid, // @[:@6.4]
  input         io_wt_actv_59_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_59_bits_data, // @[:@6.4]
  input         io_wt_actv_60_valid, // @[:@6.4]
  input         io_wt_actv_60_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_60_bits_data, // @[:@6.4]
  input         io_wt_actv_61_valid, // @[:@6.4]
  input         io_wt_actv_61_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_61_bits_data, // @[:@6.4]
  input         io_wt_actv_62_valid, // @[:@6.4]
  input         io_wt_actv_62_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_62_bits_data, // @[:@6.4]
  input         io_wt_actv_63_valid, // @[:@6.4]
  input         io_wt_actv_63_bits_nz, // @[:@6.4]
  input  [7:0]  io_wt_actv_63_bits_data, // @[:@6.4]
  output        io_mac_out_valid, // @[:@6.4]
  output [21:0] io_mac_out_bits // @[:@6.4]
);
NV_NVDLA_CMAC_CORE_mac_origin NV_NVDLA_CMAC_CORE_mac_origin(
    .nvdla_core_clk(io_nvdla_core_clk),
    .nvdla_core_rstn(io_nvdla_core_rstn),
    .wt_actv_data({io_wt_actv_63_bits_data,io_wt_actv_62_bits_data,io_wt_actv_61_bits_data,io_wt_actv_60_bits_data,
                    io_wt_actv_59_bits_data,io_wt_actv_58_bits_data,io_wt_actv_57_bits_data,io_wt_actv_56_bits_data,
                    io_wt_actv_55_bits_data,io_wt_actv_54_bits_data,io_wt_actv_53_bits_data,io_wt_actv_52_bits_data,
                    io_wt_actv_51_bits_data,io_wt_actv_50_bits_data,io_wt_actv_49_bits_data,io_wt_actv_48_bits_data,
                    io_wt_actv_47_bits_data,io_wt_actv_46_bits_data,io_wt_actv_45_bits_data,io_wt_actv_44_bits_data,
                    io_wt_actv_43_bits_data,io_wt_actv_42_bits_data,io_wt_actv_41_bits_data,io_wt_actv_40_bits_data,
                    io_wt_actv_39_bits_data,io_wt_actv_38_bits_data,io_wt_actv_37_bits_data,io_wt_actv_36_bits_data,
                    io_wt_actv_35_bits_data,io_wt_actv_34_bits_data,io_wt_actv_33_bits_data,io_wt_actv_32_bits_data,
                    io_wt_actv_31_bits_data,io_wt_actv_30_bits_data,io_wt_actv_29_bits_data,io_wt_actv_28_bits_data,
                    io_wt_actv_27_bits_data,io_wt_actv_26_bits_data,io_wt_actv_25_bits_data,io_wt_actv_24_bits_data,
                    io_wt_actv_23_bits_data,io_wt_actv_22_bits_data,io_wt_actv_21_bits_data,io_wt_actv_20_bits_data,
                    io_wt_actv_19_bits_data,io_wt_actv_18_bits_data,io_wt_actv_17_bits_data,io_wt_actv_16_bits_data,
                    io_wt_actv_15_bits_data,io_wt_actv_14_bits_data,io_wt_actv_13_bits_data,io_wt_actv_12_bits_data,
                    io_wt_actv_11_bits_data,io_wt_actv_10_bits_data,io_wt_actv_9_bits_data,io_wt_actv_8_bits_data,
                    io_wt_actv_7_bits_data,io_wt_actv_6_bits_data,io_wt_actv_5_bits_data,io_wt_actv_4_bits_data,
                    io_wt_actv_3_bits_data,io_wt_actv_2_bits_data,io_wt_actv_1_bits_data,io_wt_actv_0_bits_data
                    }),
    .wt_actv_nz({io_wt_actv_63_bits_nz,io_wt_actv_62_bits_nz,io_wt_actv_61_bits_nz,io_wt_actv_60_bits_nz,
                    io_wt_actv_59_bits_nz,io_wt_actv_58_bits_nz,io_wt_actv_57_bits_nz,io_wt_actv_56_bits_nz,
                    io_wt_actv_55_bits_nz,io_wt_actv_54_bits_nz,io_wt_actv_53_bits_nz,io_wt_actv_52_bits_nz,
                    io_wt_actv_51_bits_nz,io_wt_actv_50_bits_nz,io_wt_actv_49_bits_nz,io_wt_actv_48_bits_nz,
                    io_wt_actv_47_bits_nz,io_wt_actv_46_bits_nz,io_wt_actv_45_bits_nz,io_wt_actv_44_bits_nz,
                    io_wt_actv_43_bits_nz,io_wt_actv_42_bits_nz,io_wt_actv_41_bits_nz,io_wt_actv_40_bits_nz,
                    io_wt_actv_39_bits_nz,io_wt_actv_38_bits_nz,io_wt_actv_37_bits_nz,io_wt_actv_36_bits_nz,
                    io_wt_actv_35_bits_nz,io_wt_actv_34_bits_nz,io_wt_actv_33_bits_nz,io_wt_actv_32_bits_nz,
                    io_wt_actv_31_bits_nz,io_wt_actv_30_bits_nz,io_wt_actv_29_bits_nz,io_wt_actv_28_bits_nz,
                    io_wt_actv_27_bits_nz,io_wt_actv_26_bits_nz,io_wt_actv_25_bits_nz,io_wt_actv_24_bits_nz,
                    io_wt_actv_23_bits_nz,io_wt_actv_22_bits_nz,io_wt_actv_21_bits_nz,io_wt_actv_20_bits_nz,
                    io_wt_actv_19_bits_nz,io_wt_actv_18_bits_nz,io_wt_actv_17_bits_nz,io_wt_actv_16_bits_nz,
                    io_wt_actv_15_bits_nz,io_wt_actv_14_bits_nz,io_wt_actv_13_bits_nz,io_wt_actv_12_bits_nz,
                    io_wt_actv_11_bits_nz,io_wt_actv_10_bits_nz,io_wt_actv_9_bits_nz,io_wt_actv_8_bits_nz,
                    io_wt_actv_7_bits_nz,io_wt_actv_6_bits_nz,io_wt_actv_5_bits_nz,io_wt_actv_4_bits_nz,
                    io_wt_actv_3_bits_nz,io_wt_actv_2_bits_nz,io_wt_actv_1_bits_nz,io_wt_actv_0_bits_nz
                    }),
    .wt_actv_pvld({io_wt_actv_63_valid,io_wt_actv_62_valid,io_wt_actv_61_valid,io_wt_actv_60_valid,
                    io_wt_actv_59_valid,io_wt_actv_58_valid,io_wt_actv_57_valid,io_wt_actv_56_valid,
                    io_wt_actv_55_valid,io_wt_actv_54_valid,io_wt_actv_53_valid,io_wt_actv_52_valid,
                    io_wt_actv_51_valid,io_wt_actv_50_valid,io_wt_actv_49_valid,io_wt_actv_48_valid,
                    io_wt_actv_47_valid,io_wt_actv_46_valid,io_wt_actv_45_valid,io_wt_actv_44_valid,
                    io_wt_actv_43_valid,io_wt_actv_42_valid,io_wt_actv_41_valid,io_wt_actv_40_valid,
                    io_wt_actv_39_valid,io_wt_actv_38_valid,io_wt_actv_37_valid,io_wt_actv_36_valid,
                    io_wt_actv_35_valid,io_wt_actv_34_valid,io_wt_actv_33_valid,io_wt_actv_32_valid,
                    io_wt_actv_31_valid,io_wt_actv_30_valid,io_wt_actv_29_valid,io_wt_actv_28_valid,
                    io_wt_actv_27_valid,io_wt_actv_26_valid,io_wt_actv_25_valid,io_wt_actv_24_valid,
                    io_wt_actv_23_valid,io_wt_actv_22_valid,io_wt_actv_21_valid,io_wt_actv_20_valid,
                    io_wt_actv_19_valid,io_wt_actv_18_valid,io_wt_actv_17_valid,io_wt_actv_16_valid,
                    io_wt_actv_15_valid,io_wt_actv_14_valid,io_wt_actv_13_valid,io_wt_actv_12_valid,
                    io_wt_actv_11_valid,io_wt_actv_10_valid,io_wt_actv_9_valid,io_wt_actv_8_valid,
                    io_wt_actv_7_valid,io_wt_actv_6_valid,io_wt_actv_5_valid,io_wt_actv_4_valid,
                    io_wt_actv_3_valid,io_wt_actv_2_valid,io_wt_actv_1_valid,io_wt_actv_0_valid
                    }),
    .dat_actv_pvld({io_dat_actv_63_valid,io_dat_actv_62_valid,io_dat_actv_61_valid,io_dat_actv_60_valid,
                    io_dat_actv_59_valid,io_dat_actv_58_valid,io_dat_actv_57_valid,io_dat_actv_56_valid,
                    io_dat_actv_55_valid,io_dat_actv_54_valid,io_dat_actv_53_valid,io_dat_actv_52_valid,
                    io_dat_actv_51_valid,io_dat_actv_50_valid,io_dat_actv_49_valid,io_dat_actv_48_valid,
                    io_dat_actv_47_valid,io_dat_actv_46_valid,io_dat_actv_45_valid,io_dat_actv_44_valid,
                    io_dat_actv_43_valid,io_dat_actv_42_valid,io_dat_actv_41_valid,io_dat_actv_40_valid,
                    io_dat_actv_39_valid,io_dat_actv_38_valid,io_dat_actv_37_valid,io_dat_actv_36_valid,
                    io_dat_actv_35_valid,io_dat_actv_34_valid,io_dat_actv_33_valid,io_dat_actv_32_valid,
                    io_dat_actv_31_valid,io_dat_actv_30_valid,io_dat_actv_29_valid,io_dat_actv_28_valid,
                    io_dat_actv_27_valid,io_dat_actv_26_valid,io_dat_actv_25_valid,io_dat_actv_24_valid,
                    io_dat_actv_23_valid,io_dat_actv_22_valid,io_dat_actv_21_valid,io_dat_actv_20_valid,
                    io_dat_actv_19_valid,io_dat_actv_18_valid,io_dat_actv_17_valid,io_dat_actv_16_valid,
                    io_dat_actv_15_valid,io_dat_actv_14_valid,io_dat_actv_13_valid,io_dat_actv_12_valid,
                    io_dat_actv_11_valid,io_dat_actv_10_valid,io_dat_actv_9_valid,io_dat_actv_8_valid,
                    io_dat_actv_7_valid,io_dat_actv_6_valid,io_dat_actv_5_valid,io_dat_actv_4_valid,
                    io_dat_actv_3_valid,io_dat_actv_2_valid,io_dat_actv_1_valid,io_dat_actv_0_valid
                    }),
    .dat_actv_data({io_dat_actv_63_bits_data,io_dat_actv_62_bits_data,io_dat_actv_61_bits_data,io_dat_actv_60_bits_data,
                    io_dat_actv_59_bits_data,io_dat_actv_58_bits_data,io_dat_actv_57_bits_data,io_dat_actv_56_bits_data,
                    io_dat_actv_55_bits_data,io_dat_actv_54_bits_data,io_dat_actv_53_bits_data,io_dat_actv_52_bits_data,
                    io_dat_actv_51_bits_data,io_dat_actv_50_bits_data,io_dat_actv_49_bits_data,io_dat_actv_48_bits_data,
                    io_dat_actv_47_bits_data,io_dat_actv_46_bits_data,io_dat_actv_45_bits_data,io_dat_actv_44_bits_data,
                    io_dat_actv_43_bits_data,io_dat_actv_42_bits_data,io_dat_actv_41_bits_data,io_dat_actv_40_bits_data,
                    io_dat_actv_39_bits_data,io_dat_actv_38_bits_data,io_dat_actv_37_bits_data,io_dat_actv_36_bits_data,
                    io_dat_actv_35_bits_data,io_dat_actv_34_bits_data,io_dat_actv_33_bits_data,io_dat_actv_32_bits_data,
                    io_dat_actv_31_bits_data,io_dat_actv_30_bits_data,io_dat_actv_29_bits_data,io_dat_actv_28_bits_data,
                    io_dat_actv_27_bits_data,io_dat_actv_26_bits_data,io_dat_actv_25_bits_data,io_dat_actv_24_bits_data,
                    io_dat_actv_23_bits_data,io_dat_actv_22_bits_data,io_dat_actv_21_bits_data,io_dat_actv_20_bits_data,
                    io_dat_actv_19_bits_data,io_dat_actv_18_bits_data,io_dat_actv_17_bits_data,io_dat_actv_16_bits_data,
                    io_dat_actv_15_bits_data,io_dat_actv_14_bits_data,io_dat_actv_13_bits_data,io_dat_actv_12_bits_data,
                    io_dat_actv_11_bits_data,io_dat_actv_10_bits_data,io_dat_actv_9_bits_data,io_dat_actv_8_bits_data,
                    io_dat_actv_7_bits_data,io_dat_actv_6_bits_data,io_dat_actv_5_bits_data,io_dat_actv_4_bits_data,
                    io_dat_actv_3_bits_data,io_dat_actv_2_bits_data,io_dat_actv_1_bits_data,io_dat_actv_0_bits_data
                    }),
    .dat_actv_nz({io_dat_actv_63_bits_nz,io_dat_actv_62_bits_nz,io_dat_actv_61_bits_nz,io_dat_actv_60_bits_nz,
                    io_dat_actv_59_bits_nz,io_dat_actv_58_bits_nz,io_dat_actv_57_bits_nz,io_dat_actv_56_bits_nz,
                    io_dat_actv_55_bits_nz,io_dat_actv_54_bits_nz,io_dat_actv_53_bits_nz,io_dat_actv_52_bits_nz,
                    io_dat_actv_51_bits_nz,io_dat_actv_50_bits_nz,io_dat_actv_49_bits_nz,io_dat_actv_48_bits_nz,
                    io_dat_actv_47_bits_nz,io_dat_actv_46_bits_nz,io_dat_actv_45_bits_nz,io_dat_actv_44_bits_nz,
                    io_dat_actv_43_bits_nz,io_dat_actv_42_bits_nz,io_dat_actv_41_bits_nz,io_dat_actv_40_bits_nz,
                    io_dat_actv_39_bits_nz,io_dat_actv_38_bits_nz,io_dat_actv_37_bits_nz,io_dat_actv_36_bits_nz,
                    io_dat_actv_35_bits_nz,io_dat_actv_34_bits_nz,io_dat_actv_33_bits_nz,io_dat_actv_32_bits_nz,
                    io_dat_actv_31_bits_nz,io_dat_actv_30_bits_nz,io_dat_actv_29_bits_nz,io_dat_actv_28_bits_nz,
                    io_dat_actv_27_bits_nz,io_dat_actv_26_bits_nz,io_dat_actv_25_bits_nz,io_dat_actv_24_bits_nz,
                    io_dat_actv_23_bits_nz,io_dat_actv_22_bits_nz,io_dat_actv_21_bits_nz,io_dat_actv_20_bits_nz,
                    io_dat_actv_19_bits_nz,io_dat_actv_18_bits_nz,io_dat_actv_17_bits_nz,io_dat_actv_16_bits_nz,
                    io_dat_actv_15_bits_nz,io_dat_actv_14_bits_nz,io_dat_actv_13_bits_nz,io_dat_actv_12_bits_nz,
                    io_dat_actv_11_bits_nz,io_dat_actv_10_bits_nz,io_dat_actv_9_bits_nz,io_dat_actv_8_bits_nz,
                    io_dat_actv_7_bits_nz,io_dat_actv_6_bits_nz,io_dat_actv_5_bits_nz,io_dat_actv_4_bits_nz,
                    io_dat_actv_3_bits_nz,io_dat_actv_2_bits_nz,io_dat_actv_1_bits_nz,io_dat_actv_0_bits_nz
                    }),
     .mac_out_data(io_mac_out_bits),
     .mac_out_pvld(io_mac_out_valid)
);
endmodule
