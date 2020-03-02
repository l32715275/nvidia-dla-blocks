// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_CORE_rt_out.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_CORE_rt_out (
   nvdla_core_clk
  ,nvdla_wg_clk
  ,nvdla_core_rstn
  ,cfg_is_wg
  ,cfg_reg_en
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: ,out_data${i} )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,out_data0 
,out_data1 
,out_data2 
,out_data3 
,out_data4 
,out_data5 
,out_data6 
,out_data7 
,out_data8 
,out_data9 
,out_data10 
,out_data11 
,out_data12 
,out_data13 
,out_data14 
,out_data15 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,out_mask
  ,out_pd
  ,out_pvld
  ,dp2reg_done
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: ,mac2accu_data${i} )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac2accu_data0 
,mac2accu_data1 
,mac2accu_data2 
,mac2accu_data3 
,mac2accu_data4 
,mac2accu_data5 
,mac2accu_data6 
,mac2accu_data7 
,mac2accu_data8 
,mac2accu_data9 
,mac2accu_data10 
,mac2accu_data11 
,mac2accu_data12 
,mac2accu_data13 
,mac2accu_data14 
,mac2accu_data15 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac2accu_mask
  ,mac2accu_pd
  ,mac2accu_pvld
  );
input nvdla_core_clk;
input nvdla_wg_clk;
input nvdla_core_rstn;
input cfg_is_wg;
input cfg_reg_en;
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: input[22 -1:0] out_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input[22 -1:0] out_data0; 
input[22 -1:0] out_data1; 
input[22 -1:0] out_data2; 
input[22 -1:0] out_data3; 
input[22 -1:0] out_data4; 
input[22 -1:0] out_data5; 
input[22 -1:0] out_data6; 
input[22 -1:0] out_data7; 
input[22 -1:0] out_data8; 
input[22 -1:0] out_data9; 
input[22 -1:0] out_data10; 
input[22 -1:0] out_data11; 
input[22 -1:0] out_data12; 
input[22 -1:0] out_data13; 
input[22 -1:0] out_data14; 
input[22 -1:0] out_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [32/2 -1:0] out_mask;
input [8:0] out_pd;
input out_pvld;
output dp2reg_done;
//: for(my $i=0; $i<32/2; $i++){
//: print qq(
//: output[22 -1:0] mac2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output[22 -1:0] mac2accu_data0; 
output[22 -1:0] mac2accu_data1; 
output[22 -1:0] mac2accu_data2; 
output[22 -1:0] mac2accu_data3; 
output[22 -1:0] mac2accu_data4; 
output[22 -1:0] mac2accu_data5; 
output[22 -1:0] mac2accu_data6; 
output[22 -1:0] mac2accu_data7; 
output[22 -1:0] mac2accu_data8; 
output[22 -1:0] mac2accu_data9; 
output[22 -1:0] mac2accu_data10; 
output[22 -1:0] mac2accu_data11; 
output[22 -1:0] mac2accu_data12; 
output[22 -1:0] mac2accu_data13; 
output[22 -1:0] mac2accu_data14; 
output[22 -1:0] mac2accu_data15; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [32/2 -1:0] mac2accu_mask;
output [8:0] mac2accu_pd;
output mac2accu_pvld;
NV_NVDLA_CMAC_CORE_rt_out_dft rt_out_dft(
    .io_nvdla_core_clk(nvdla_core_clk),
    .io_nvdla_core_rstn(nvdla_core_rstn),
    .io_out_valid(out_pvld),
    .io_out_bits_mask_0(out_mask[0]),
    .io_out_bits_mask_1(out_mask[1]),
    .io_out_bits_mask_2(out_mask[2]),
    .io_out_bits_mask_3(out_mask[3]),
    .io_out_bits_mask_4(out_mask[4]),
    .io_out_bits_mask_5(out_mask[5]),
    .io_out_bits_mask_6(out_mask[6]),
    .io_out_bits_mask_7(out_mask[7]),
    .io_out_bits_mask_8(out_mask[8]),
    .io_out_bits_mask_9(out_mask[9]),
    .io_out_bits_mask_10(out_mask[10]),
    .io_out_bits_mask_11(out_mask[11]),
    .io_out_bits_mask_12(out_mask[12]),
    .io_out_bits_mask_13(out_mask[13]),
    .io_out_bits_mask_14(out_mask[14]),
    .io_out_bits_mask_15(out_mask[15]),
    .io_out_bits_data_0(out_data0),
    .io_out_bits_data_1(out_data1),
    .io_out_bits_data_2(out_data2),
    .io_out_bits_data_3(out_data3),
    .io_out_bits_data_4(out_data4),
    .io_out_bits_data_5(out_data5),
    .io_out_bits_data_6(out_data6),
    .io_out_bits_data_7(out_data7),
    .io_out_bits_data_8(out_data8),
    .io_out_bits_data_9(out_data9),
    .io_out_bits_data_10(out_data10),
    .io_out_bits_data_11(out_data11),
    .io_out_bits_data_12(out_data12),
    .io_out_bits_data_13(out_data13),
    .io_out_bits_data_14(out_data14),
    .io_out_bits_data_15(out_data15),
    .io_out_bits_pd(out_pd),
    .io_mac2accu_valid(mac2accu_pvld),
    .io_mac2accu_bits_mask_0(mac2accu_mask[0]),
    .io_mac2accu_bits_mask_1(mac2accu_mask[1]),
    .io_mac2accu_bits_mask_2(mac2accu_mask[2]),
    .io_mac2accu_bits_mask_3(mac2accu_mask[3]),
    .io_mac2accu_bits_mask_4(mac2accu_mask[4]),
    .io_mac2accu_bits_mask_5(mac2accu_mask[5]),
    .io_mac2accu_bits_mask_6(mac2accu_mask[6]),
    .io_mac2accu_bits_mask_7(mac2accu_mask[7]),
    .io_mac2accu_bits_mask_8(mac2accu_mask[8]),
    .io_mac2accu_bits_mask_9(mac2accu_mask[9]),
    .io_mac2accu_bits_mask_10(mac2accu_mask[10]),
    .io_mac2accu_bits_mask_11(mac2accu_mask[11]),
    .io_mac2accu_bits_mask_12(mac2accu_mask[12]),
    .io_mac2accu_bits_mask_13(mac2accu_mask[13]),
    .io_mac2accu_bits_mask_14(mac2accu_mask[14]),
    .io_mac2accu_bits_mask_15(mac2accu_mask[15]),
    .io_mac2accu_bits_data_0(mac2accu_data0),
    .io_mac2accu_bits_data_1(mac2accu_data1),
    .io_mac2accu_bits_data_2(mac2accu_data2),
    .io_mac2accu_bits_data_3(mac2accu_data3),
    .io_mac2accu_bits_data_4(mac2accu_data4),
    .io_mac2accu_bits_data_5(mac2accu_data5),
    .io_mac2accu_bits_data_6(mac2accu_data6),
    .io_mac2accu_bits_data_7(mac2accu_data7),
    .io_mac2accu_bits_data_8(mac2accu_data8),
    .io_mac2accu_bits_data_9(mac2accu_data9),
    .io_mac2accu_bits_data_10(mac2accu_data10),
    .io_mac2accu_bits_data_11(mac2accu_data11),
    .io_mac2accu_bits_data_12(mac2accu_data12),
    .io_mac2accu_bits_data_13(mac2accu_data13),
    .io_mac2accu_bits_data_14(mac2accu_data14),
    .io_mac2accu_bits_data_15(mac2accu_data15),
    .io_mac2accu_bits_pd(mac2accu_pd),
    .io_dp2reg_done(dp2reg_done),
);
endmodule