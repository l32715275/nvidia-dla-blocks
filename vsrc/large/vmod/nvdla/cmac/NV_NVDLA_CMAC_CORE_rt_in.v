// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_CORE_rt_in.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_CORE_rt_in (
   nvdla_core_clk
  ,nvdla_core_rstn
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,sc2mac_dat_data${i});
//: }
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,in_dat_data${i});
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_data0
,sc2mac_dat_data1
,sc2mac_dat_data2
,sc2mac_dat_data3
,sc2mac_dat_data4
,sc2mac_dat_data5
,sc2mac_dat_data6
,sc2mac_dat_data7
,sc2mac_dat_data8
,sc2mac_dat_data9
,sc2mac_dat_data10
,sc2mac_dat_data11
,sc2mac_dat_data12
,sc2mac_dat_data13
,sc2mac_dat_data14
,sc2mac_dat_data15
,sc2mac_dat_data16
,sc2mac_dat_data17
,sc2mac_dat_data18
,sc2mac_dat_data19
,sc2mac_dat_data20
,sc2mac_dat_data21
,sc2mac_dat_data22
,sc2mac_dat_data23
,sc2mac_dat_data24
,sc2mac_dat_data25
,sc2mac_dat_data26
,sc2mac_dat_data27
,sc2mac_dat_data28
,sc2mac_dat_data29
,sc2mac_dat_data30
,sc2mac_dat_data31
,sc2mac_dat_data32
,sc2mac_dat_data33
,sc2mac_dat_data34
,sc2mac_dat_data35
,sc2mac_dat_data36
,sc2mac_dat_data37
,sc2mac_dat_data38
,sc2mac_dat_data39
,sc2mac_dat_data40
,sc2mac_dat_data41
,sc2mac_dat_data42
,sc2mac_dat_data43
,sc2mac_dat_data44
,sc2mac_dat_data45
,sc2mac_dat_data46
,sc2mac_dat_data47
,sc2mac_dat_data48
,sc2mac_dat_data49
,sc2mac_dat_data50
,sc2mac_dat_data51
,sc2mac_dat_data52
,sc2mac_dat_data53
,sc2mac_dat_data54
,sc2mac_dat_data55
,sc2mac_dat_data56
,sc2mac_dat_data57
,sc2mac_dat_data58
,sc2mac_dat_data59
,sc2mac_dat_data60
,sc2mac_dat_data61
,sc2mac_dat_data62
,sc2mac_dat_data63
,in_dat_data0
,in_dat_data1
,in_dat_data2
,in_dat_data3
,in_dat_data4
,in_dat_data5
,in_dat_data6
,in_dat_data7
,in_dat_data8
,in_dat_data9
,in_dat_data10
,in_dat_data11
,in_dat_data12
,in_dat_data13
,in_dat_data14
,in_dat_data15
,in_dat_data16
,in_dat_data17
,in_dat_data18
,in_dat_data19
,in_dat_data20
,in_dat_data21
,in_dat_data22
,in_dat_data23
,in_dat_data24
,in_dat_data25
,in_dat_data26
,in_dat_data27
,in_dat_data28
,in_dat_data29
,in_dat_data30
,in_dat_data31
,in_dat_data32
,in_dat_data33
,in_dat_data34
,in_dat_data35
,in_dat_data36
,in_dat_data37
,in_dat_data38
,in_dat_data39
,in_dat_data40
,in_dat_data41
,in_dat_data42
,in_dat_data43
,in_dat_data44
,in_dat_data45
,in_dat_data46
,in_dat_data47
,in_dat_data48
,in_dat_data49
,in_dat_data50
,in_dat_data51
,in_dat_data52
,in_dat_data53
,in_dat_data54
,in_dat_data55
,in_dat_data56
,in_dat_data57
,in_dat_data58
,in_dat_data59
,in_dat_data60
,in_dat_data61
,in_dat_data62
,in_dat_data63
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_mask
  ,sc2mac_dat_pd
  ,sc2mac_dat_pvld
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,sc2mac_wt_data${i});
//: }
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: ,in_wt_data${i});
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_data0
,sc2mac_wt_data1
,sc2mac_wt_data2
,sc2mac_wt_data3
,sc2mac_wt_data4
,sc2mac_wt_data5
,sc2mac_wt_data6
,sc2mac_wt_data7
,sc2mac_wt_data8
,sc2mac_wt_data9
,sc2mac_wt_data10
,sc2mac_wt_data11
,sc2mac_wt_data12
,sc2mac_wt_data13
,sc2mac_wt_data14
,sc2mac_wt_data15
,sc2mac_wt_data16
,sc2mac_wt_data17
,sc2mac_wt_data18
,sc2mac_wt_data19
,sc2mac_wt_data20
,sc2mac_wt_data21
,sc2mac_wt_data22
,sc2mac_wt_data23
,sc2mac_wt_data24
,sc2mac_wt_data25
,sc2mac_wt_data26
,sc2mac_wt_data27
,sc2mac_wt_data28
,sc2mac_wt_data29
,sc2mac_wt_data30
,sc2mac_wt_data31
,sc2mac_wt_data32
,sc2mac_wt_data33
,sc2mac_wt_data34
,sc2mac_wt_data35
,sc2mac_wt_data36
,sc2mac_wt_data37
,sc2mac_wt_data38
,sc2mac_wt_data39
,sc2mac_wt_data40
,sc2mac_wt_data41
,sc2mac_wt_data42
,sc2mac_wt_data43
,sc2mac_wt_data44
,sc2mac_wt_data45
,sc2mac_wt_data46
,sc2mac_wt_data47
,sc2mac_wt_data48
,sc2mac_wt_data49
,sc2mac_wt_data50
,sc2mac_wt_data51
,sc2mac_wt_data52
,sc2mac_wt_data53
,sc2mac_wt_data54
,sc2mac_wt_data55
,sc2mac_wt_data56
,sc2mac_wt_data57
,sc2mac_wt_data58
,sc2mac_wt_data59
,sc2mac_wt_data60
,sc2mac_wt_data61
,sc2mac_wt_data62
,sc2mac_wt_data63
,in_wt_data0
,in_wt_data1
,in_wt_data2
,in_wt_data3
,in_wt_data4
,in_wt_data5
,in_wt_data6
,in_wt_data7
,in_wt_data8
,in_wt_data9
,in_wt_data10
,in_wt_data11
,in_wt_data12
,in_wt_data13
,in_wt_data14
,in_wt_data15
,in_wt_data16
,in_wt_data17
,in_wt_data18
,in_wt_data19
,in_wt_data20
,in_wt_data21
,in_wt_data22
,in_wt_data23
,in_wt_data24
,in_wt_data25
,in_wt_data26
,in_wt_data27
,in_wt_data28
,in_wt_data29
,in_wt_data30
,in_wt_data31
,in_wt_data32
,in_wt_data33
,in_wt_data34
,in_wt_data35
,in_wt_data36
,in_wt_data37
,in_wt_data38
,in_wt_data39
,in_wt_data40
,in_wt_data41
,in_wt_data42
,in_wt_data43
,in_wt_data44
,in_wt_data45
,in_wt_data46
,in_wt_data47
,in_wt_data48
,in_wt_data49
,in_wt_data50
,in_wt_data51
,in_wt_data52
,in_wt_data53
,in_wt_data54
,in_wt_data55
,in_wt_data56
,in_wt_data57
,in_wt_data58
,in_wt_data59
,in_wt_data60
,in_wt_data61
,in_wt_data62
,in_wt_data63
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_mask
  ,sc2mac_wt_pvld
  ,sc2mac_wt_sel
  ,in_dat_mask
  ,in_dat_pd
  ,in_dat_pvld
  ,in_dat_stripe_end
  ,in_dat_stripe_st
  ,in_wt_mask
  ,in_wt_pvld
  ,in_wt_sel
  );
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_dat_data${i};);
//: }
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: output [8 -1:0] in_dat_data${i};);
//: }
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_wt_data${i};);
//: }
//: for(my $i=0; $i<64; $i++){
//: print qq(
//: output [8 -1:0] in_wt_data${i};);
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_dat_data0;
input [8 -1:0] sc2mac_dat_data1;
input [8 -1:0] sc2mac_dat_data2;
input [8 -1:0] sc2mac_dat_data3;
input [8 -1:0] sc2mac_dat_data4;
input [8 -1:0] sc2mac_dat_data5;
input [8 -1:0] sc2mac_dat_data6;
input [8 -1:0] sc2mac_dat_data7;
input [8 -1:0] sc2mac_dat_data8;
input [8 -1:0] sc2mac_dat_data9;
input [8 -1:0] sc2mac_dat_data10;
input [8 -1:0] sc2mac_dat_data11;
input [8 -1:0] sc2mac_dat_data12;
input [8 -1:0] sc2mac_dat_data13;
input [8 -1:0] sc2mac_dat_data14;
input [8 -1:0] sc2mac_dat_data15;
input [8 -1:0] sc2mac_dat_data16;
input [8 -1:0] sc2mac_dat_data17;
input [8 -1:0] sc2mac_dat_data18;
input [8 -1:0] sc2mac_dat_data19;
input [8 -1:0] sc2mac_dat_data20;
input [8 -1:0] sc2mac_dat_data21;
input [8 -1:0] sc2mac_dat_data22;
input [8 -1:0] sc2mac_dat_data23;
input [8 -1:0] sc2mac_dat_data24;
input [8 -1:0] sc2mac_dat_data25;
input [8 -1:0] sc2mac_dat_data26;
input [8 -1:0] sc2mac_dat_data27;
input [8 -1:0] sc2mac_dat_data28;
input [8 -1:0] sc2mac_dat_data29;
input [8 -1:0] sc2mac_dat_data30;
input [8 -1:0] sc2mac_dat_data31;
input [8 -1:0] sc2mac_dat_data32;
input [8 -1:0] sc2mac_dat_data33;
input [8 -1:0] sc2mac_dat_data34;
input [8 -1:0] sc2mac_dat_data35;
input [8 -1:0] sc2mac_dat_data36;
input [8 -1:0] sc2mac_dat_data37;
input [8 -1:0] sc2mac_dat_data38;
input [8 -1:0] sc2mac_dat_data39;
input [8 -1:0] sc2mac_dat_data40;
input [8 -1:0] sc2mac_dat_data41;
input [8 -1:0] sc2mac_dat_data42;
input [8 -1:0] sc2mac_dat_data43;
input [8 -1:0] sc2mac_dat_data44;
input [8 -1:0] sc2mac_dat_data45;
input [8 -1:0] sc2mac_dat_data46;
input [8 -1:0] sc2mac_dat_data47;
input [8 -1:0] sc2mac_dat_data48;
input [8 -1:0] sc2mac_dat_data49;
input [8 -1:0] sc2mac_dat_data50;
input [8 -1:0] sc2mac_dat_data51;
input [8 -1:0] sc2mac_dat_data52;
input [8 -1:0] sc2mac_dat_data53;
input [8 -1:0] sc2mac_dat_data54;
input [8 -1:0] sc2mac_dat_data55;
input [8 -1:0] sc2mac_dat_data56;
input [8 -1:0] sc2mac_dat_data57;
input [8 -1:0] sc2mac_dat_data58;
input [8 -1:0] sc2mac_dat_data59;
input [8 -1:0] sc2mac_dat_data60;
input [8 -1:0] sc2mac_dat_data61;
input [8 -1:0] sc2mac_dat_data62;
input [8 -1:0] sc2mac_dat_data63;
output [8 -1:0] in_dat_data0;
output [8 -1:0] in_dat_data1;
output [8 -1:0] in_dat_data2;
output [8 -1:0] in_dat_data3;
output [8 -1:0] in_dat_data4;
output [8 -1:0] in_dat_data5;
output [8 -1:0] in_dat_data6;
output [8 -1:0] in_dat_data7;
output [8 -1:0] in_dat_data8;
output [8 -1:0] in_dat_data9;
output [8 -1:0] in_dat_data10;
output [8 -1:0] in_dat_data11;
output [8 -1:0] in_dat_data12;
output [8 -1:0] in_dat_data13;
output [8 -1:0] in_dat_data14;
output [8 -1:0] in_dat_data15;
output [8 -1:0] in_dat_data16;
output [8 -1:0] in_dat_data17;
output [8 -1:0] in_dat_data18;
output [8 -1:0] in_dat_data19;
output [8 -1:0] in_dat_data20;
output [8 -1:0] in_dat_data21;
output [8 -1:0] in_dat_data22;
output [8 -1:0] in_dat_data23;
output [8 -1:0] in_dat_data24;
output [8 -1:0] in_dat_data25;
output [8 -1:0] in_dat_data26;
output [8 -1:0] in_dat_data27;
output [8 -1:0] in_dat_data28;
output [8 -1:0] in_dat_data29;
output [8 -1:0] in_dat_data30;
output [8 -1:0] in_dat_data31;
output [8 -1:0] in_dat_data32;
output [8 -1:0] in_dat_data33;
output [8 -1:0] in_dat_data34;
output [8 -1:0] in_dat_data35;
output [8 -1:0] in_dat_data36;
output [8 -1:0] in_dat_data37;
output [8 -1:0] in_dat_data38;
output [8 -1:0] in_dat_data39;
output [8 -1:0] in_dat_data40;
output [8 -1:0] in_dat_data41;
output [8 -1:0] in_dat_data42;
output [8 -1:0] in_dat_data43;
output [8 -1:0] in_dat_data44;
output [8 -1:0] in_dat_data45;
output [8 -1:0] in_dat_data46;
output [8 -1:0] in_dat_data47;
output [8 -1:0] in_dat_data48;
output [8 -1:0] in_dat_data49;
output [8 -1:0] in_dat_data50;
output [8 -1:0] in_dat_data51;
output [8 -1:0] in_dat_data52;
output [8 -1:0] in_dat_data53;
output [8 -1:0] in_dat_data54;
output [8 -1:0] in_dat_data55;
output [8 -1:0] in_dat_data56;
output [8 -1:0] in_dat_data57;
output [8 -1:0] in_dat_data58;
output [8 -1:0] in_dat_data59;
output [8 -1:0] in_dat_data60;
output [8 -1:0] in_dat_data61;
output [8 -1:0] in_dat_data62;
output [8 -1:0] in_dat_data63;
input [8 -1:0] sc2mac_wt_data0;
input [8 -1:0] sc2mac_wt_data1;
input [8 -1:0] sc2mac_wt_data2;
input [8 -1:0] sc2mac_wt_data3;
input [8 -1:0] sc2mac_wt_data4;
input [8 -1:0] sc2mac_wt_data5;
input [8 -1:0] sc2mac_wt_data6;
input [8 -1:0] sc2mac_wt_data7;
input [8 -1:0] sc2mac_wt_data8;
input [8 -1:0] sc2mac_wt_data9;
input [8 -1:0] sc2mac_wt_data10;
input [8 -1:0] sc2mac_wt_data11;
input [8 -1:0] sc2mac_wt_data12;
input [8 -1:0] sc2mac_wt_data13;
input [8 -1:0] sc2mac_wt_data14;
input [8 -1:0] sc2mac_wt_data15;
input [8 -1:0] sc2mac_wt_data16;
input [8 -1:0] sc2mac_wt_data17;
input [8 -1:0] sc2mac_wt_data18;
input [8 -1:0] sc2mac_wt_data19;
input [8 -1:0] sc2mac_wt_data20;
input [8 -1:0] sc2mac_wt_data21;
input [8 -1:0] sc2mac_wt_data22;
input [8 -1:0] sc2mac_wt_data23;
input [8 -1:0] sc2mac_wt_data24;
input [8 -1:0] sc2mac_wt_data25;
input [8 -1:0] sc2mac_wt_data26;
input [8 -1:0] sc2mac_wt_data27;
input [8 -1:0] sc2mac_wt_data28;
input [8 -1:0] sc2mac_wt_data29;
input [8 -1:0] sc2mac_wt_data30;
input [8 -1:0] sc2mac_wt_data31;
input [8 -1:0] sc2mac_wt_data32;
input [8 -1:0] sc2mac_wt_data33;
input [8 -1:0] sc2mac_wt_data34;
input [8 -1:0] sc2mac_wt_data35;
input [8 -1:0] sc2mac_wt_data36;
input [8 -1:0] sc2mac_wt_data37;
input [8 -1:0] sc2mac_wt_data38;
input [8 -1:0] sc2mac_wt_data39;
input [8 -1:0] sc2mac_wt_data40;
input [8 -1:0] sc2mac_wt_data41;
input [8 -1:0] sc2mac_wt_data42;
input [8 -1:0] sc2mac_wt_data43;
input [8 -1:0] sc2mac_wt_data44;
input [8 -1:0] sc2mac_wt_data45;
input [8 -1:0] sc2mac_wt_data46;
input [8 -1:0] sc2mac_wt_data47;
input [8 -1:0] sc2mac_wt_data48;
input [8 -1:0] sc2mac_wt_data49;
input [8 -1:0] sc2mac_wt_data50;
input [8 -1:0] sc2mac_wt_data51;
input [8 -1:0] sc2mac_wt_data52;
input [8 -1:0] sc2mac_wt_data53;
input [8 -1:0] sc2mac_wt_data54;
input [8 -1:0] sc2mac_wt_data55;
input [8 -1:0] sc2mac_wt_data56;
input [8 -1:0] sc2mac_wt_data57;
input [8 -1:0] sc2mac_wt_data58;
input [8 -1:0] sc2mac_wt_data59;
input [8 -1:0] sc2mac_wt_data60;
input [8 -1:0] sc2mac_wt_data61;
input [8 -1:0] sc2mac_wt_data62;
input [8 -1:0] sc2mac_wt_data63;
output [8 -1:0] in_wt_data0;
output [8 -1:0] in_wt_data1;
output [8 -1:0] in_wt_data2;
output [8 -1:0] in_wt_data3;
output [8 -1:0] in_wt_data4;
output [8 -1:0] in_wt_data5;
output [8 -1:0] in_wt_data6;
output [8 -1:0] in_wt_data7;
output [8 -1:0] in_wt_data8;
output [8 -1:0] in_wt_data9;
output [8 -1:0] in_wt_data10;
output [8 -1:0] in_wt_data11;
output [8 -1:0] in_wt_data12;
output [8 -1:0] in_wt_data13;
output [8 -1:0] in_wt_data14;
output [8 -1:0] in_wt_data15;
output [8 -1:0] in_wt_data16;
output [8 -1:0] in_wt_data17;
output [8 -1:0] in_wt_data18;
output [8 -1:0] in_wt_data19;
output [8 -1:0] in_wt_data20;
output [8 -1:0] in_wt_data21;
output [8 -1:0] in_wt_data22;
output [8 -1:0] in_wt_data23;
output [8 -1:0] in_wt_data24;
output [8 -1:0] in_wt_data25;
output [8 -1:0] in_wt_data26;
output [8 -1:0] in_wt_data27;
output [8 -1:0] in_wt_data28;
output [8 -1:0] in_wt_data29;
output [8 -1:0] in_wt_data30;
output [8 -1:0] in_wt_data31;
output [8 -1:0] in_wt_data32;
output [8 -1:0] in_wt_data33;
output [8 -1:0] in_wt_data34;
output [8 -1:0] in_wt_data35;
output [8 -1:0] in_wt_data36;
output [8 -1:0] in_wt_data37;
output [8 -1:0] in_wt_data38;
output [8 -1:0] in_wt_data39;
output [8 -1:0] in_wt_data40;
output [8 -1:0] in_wt_data41;
output [8 -1:0] in_wt_data42;
output [8 -1:0] in_wt_data43;
output [8 -1:0] in_wt_data44;
output [8 -1:0] in_wt_data45;
output [8 -1:0] in_wt_data46;
output [8 -1:0] in_wt_data47;
output [8 -1:0] in_wt_data48;
output [8 -1:0] in_wt_data49;
output [8 -1:0] in_wt_data50;
output [8 -1:0] in_wt_data51;
output [8 -1:0] in_wt_data52;
output [8 -1:0] in_wt_data53;
output [8 -1:0] in_wt_data54;
output [8 -1:0] in_wt_data55;
output [8 -1:0] in_wt_data56;
output [8 -1:0] in_wt_data57;
output [8 -1:0] in_wt_data58;
output [8 -1:0] in_wt_data59;
output [8 -1:0] in_wt_data60;
output [8 -1:0] in_wt_data61;
output [8 -1:0] in_wt_data62;
output [8 -1:0] in_wt_data63;
//| eperl: generated_end (DO NOT EDIT ABOVE)
input nvdla_core_clk;
input nvdla_core_rstn;
input [64 -1:0] sc2mac_dat_mask;
input [8:0] sc2mac_dat_pd;
input sc2mac_dat_pvld;
input [64 -1:0] sc2mac_wt_mask;
input sc2mac_wt_pvld;
input [32/2 -1:0] sc2mac_wt_sel;
output [64 -1:0] in_dat_mask;
output [8:0] in_dat_pd;
output in_dat_pvld;
output in_dat_stripe_end;
output in_dat_stripe_st;
output [64 -1:0] in_wt_mask;
output in_wt_pvld;
output [32/2 -1:0] in_wt_sel;

NV_NVDLA_CMAC_CORE_rt_in_dft rt_in_dft(
    .io_nvdla_core_clk(nvdla_core_clk),
    .io_nvdla_core_rstn(nvdla_core_rstn),
    .io_sc2mac_dat_valid(sc2mac_dat_pvld),
    .io_sc2mac_dat_bits_mask_0(sc2mac_dat_mask[0]),
    .io_sc2mac_dat_bits_mask_1(sc2mac_dat_mask[1]),
    .io_sc2mac_dat_bits_mask_2(sc2mac_dat_mask[2]),
    .io_sc2mac_dat_bits_mask_3(sc2mac_dat_mask[3]),
    .io_sc2mac_dat_bits_mask_4(sc2mac_dat_mask[4]),
    .io_sc2mac_dat_bits_mask_5(sc2mac_dat_mask[5]),
    .io_sc2mac_dat_bits_mask_6(sc2mac_dat_mask[6]),
    .io_sc2mac_dat_bits_mask_7(sc2mac_dat_mask[7]),
    .io_sc2mac_dat_bits_mask_8(sc2mac_dat_mask[8]),
    .io_sc2mac_dat_bits_mask_9(sc2mac_dat_mask[9]),
    .io_sc2mac_dat_bits_mask_10(sc2mac_dat_mask[10]),
    .io_sc2mac_dat_bits_mask_11(sc2mac_dat_mask[11]),
    .io_sc2mac_dat_bits_mask_12(sc2mac_dat_mask[12]),
    .io_sc2mac_dat_bits_mask_13(sc2mac_dat_mask[13]),
    .io_sc2mac_dat_bits_mask_14(sc2mac_dat_mask[14]),
    .io_sc2mac_dat_bits_mask_15(sc2mac_dat_mask[15]),
    .io_sc2mac_dat_bits_mask_16(sc2mac_dat_mask[16]),
    .io_sc2mac_dat_bits_mask_17(sc2mac_dat_mask[17]),
    .io_sc2mac_dat_bits_mask_18(sc2mac_dat_mask[18]),
    .io_sc2mac_dat_bits_mask_19(sc2mac_dat_mask[19]),
    .io_sc2mac_dat_bits_mask_20(sc2mac_dat_mask[20]),
    .io_sc2mac_dat_bits_mask_21(sc2mac_dat_mask[21]),
    .io_sc2mac_dat_bits_mask_22(sc2mac_dat_mask[22]),
    .io_sc2mac_dat_bits_mask_23(sc2mac_dat_mask[23]),
    .io_sc2mac_dat_bits_mask_24(sc2mac_dat_mask[24]),
    .io_sc2mac_dat_bits_mask_25(sc2mac_dat_mask[25]),
    .io_sc2mac_dat_bits_mask_26(sc2mac_dat_mask[26]),
    .io_sc2mac_dat_bits_mask_27(sc2mac_dat_mask[27]),
    .io_sc2mac_dat_bits_mask_28(sc2mac_dat_mask[28]),
    .io_sc2mac_dat_bits_mask_29(sc2mac_dat_mask[29]),
    .io_sc2mac_dat_bits_mask_30(sc2mac_dat_mask[30]),
    .io_sc2mac_dat_bits_mask_31(sc2mac_dat_mask[31]),
    .io_sc2mac_dat_bits_mask_32(sc2mac_dat_mask[32]),
    .io_sc2mac_dat_bits_mask_33(sc2mac_dat_mask[33]),
    .io_sc2mac_dat_bits_mask_34(sc2mac_dat_mask[34]),
    .io_sc2mac_dat_bits_mask_35(sc2mac_dat_mask[35]),
    .io_sc2mac_dat_bits_mask_36(sc2mac_dat_mask[36]),
    .io_sc2mac_dat_bits_mask_37(sc2mac_dat_mask[37]),
    .io_sc2mac_dat_bits_mask_38(sc2mac_dat_mask[38]),
    .io_sc2mac_dat_bits_mask_39(sc2mac_dat_mask[39]),
    .io_sc2mac_dat_bits_mask_40(sc2mac_dat_mask[40]),
    .io_sc2mac_dat_bits_mask_41(sc2mac_dat_mask[41]),
    .io_sc2mac_dat_bits_mask_42(sc2mac_dat_mask[42]),
    .io_sc2mac_dat_bits_mask_43(sc2mac_dat_mask[43]),
    .io_sc2mac_dat_bits_mask_44(sc2mac_dat_mask[44]),
    .io_sc2mac_dat_bits_mask_45(sc2mac_dat_mask[45]),
    .io_sc2mac_dat_bits_mask_46(sc2mac_dat_mask[46]),
    .io_sc2mac_dat_bits_mask_47(sc2mac_dat_mask[47]),
    .io_sc2mac_dat_bits_mask_48(sc2mac_dat_mask[48]),
    .io_sc2mac_dat_bits_mask_49(sc2mac_dat_mask[49]),
    .io_sc2mac_dat_bits_mask_50(sc2mac_dat_mask[50]),
    .io_sc2mac_dat_bits_mask_51(sc2mac_dat_mask[51]),
    .io_sc2mac_dat_bits_mask_52(sc2mac_dat_mask[52]),
    .io_sc2mac_dat_bits_mask_53(sc2mac_dat_mask[53]),
    .io_sc2mac_dat_bits_mask_54(sc2mac_dat_mask[54]),
    .io_sc2mac_dat_bits_mask_55(sc2mac_dat_mask[55]),
    .io_sc2mac_dat_bits_mask_56(sc2mac_dat_mask[56]),
    .io_sc2mac_dat_bits_mask_57(sc2mac_dat_mask[57]),
    .io_sc2mac_dat_bits_mask_58(sc2mac_dat_mask[58]),
    .io_sc2mac_dat_bits_mask_59(sc2mac_dat_mask[59]),
    .io_sc2mac_dat_bits_mask_60(sc2mac_dat_mask[60]),
    .io_sc2mac_dat_bits_mask_61(sc2mac_dat_mask[61]),
    .io_sc2mac_dat_bits_mask_62(sc2mac_dat_mask[62]),
    .io_sc2mac_dat_bits_mask_63(sc2mac_dat_mask[63]),
    .io_sc2mac_dat_bits_data_0(sc2mac_dat_data0),
    .io_sc2mac_dat_bits_data_1(sc2mac_dat_data1),
    .io_sc2mac_dat_bits_data_2(sc2mac_dat_data2),
    .io_sc2mac_dat_bits_data_3(sc2mac_dat_data3),
    .io_sc2mac_dat_bits_data_4(sc2mac_dat_data4),
    .io_sc2mac_dat_bits_data_5(sc2mac_dat_data5),
    .io_sc2mac_dat_bits_data_6(sc2mac_dat_data6),
    .io_sc2mac_dat_bits_data_7(sc2mac_dat_data7),
    .io_sc2mac_dat_bits_data_8(sc2mac_dat_data8),
    .io_sc2mac_dat_bits_data_9(sc2mac_dat_data9),
    .io_sc2mac_dat_bits_data_10(sc2mac_dat_data10),
    .io_sc2mac_dat_bits_data_11(sc2mac_dat_data11),
    .io_sc2mac_dat_bits_data_12(sc2mac_dat_data12),
    .io_sc2mac_dat_bits_data_13(sc2mac_dat_data13),
    .io_sc2mac_dat_bits_data_14(sc2mac_dat_data14),
    .io_sc2mac_dat_bits_data_15(sc2mac_dat_data15),
    .io_sc2mac_dat_bits_data_16(sc2mac_dat_data16),
    .io_sc2mac_dat_bits_data_17(sc2mac_dat_data17),
    .io_sc2mac_dat_bits_data_18(sc2mac_dat_data18),
    .io_sc2mac_dat_bits_data_19(sc2mac_dat_data19),
    .io_sc2mac_dat_bits_data_20(sc2mac_dat_data20),
    .io_sc2mac_dat_bits_data_21(sc2mac_dat_data21),
    .io_sc2mac_dat_bits_data_22(sc2mac_dat_data22),
    .io_sc2mac_dat_bits_data_23(sc2mac_dat_data23),
    .io_sc2mac_dat_bits_data_24(sc2mac_dat_data24),
    .io_sc2mac_dat_bits_data_25(sc2mac_dat_data25),
    .io_sc2mac_dat_bits_data_26(sc2mac_dat_data26),
    .io_sc2mac_dat_bits_data_27(sc2mac_dat_data27),
    .io_sc2mac_dat_bits_data_28(sc2mac_dat_data28),
    .io_sc2mac_dat_bits_data_29(sc2mac_dat_data29),
    .io_sc2mac_dat_bits_data_30(sc2mac_dat_data30),
    .io_sc2mac_dat_bits_data_31(sc2mac_dat_data31),
    .io_sc2mac_dat_bits_data_32(sc2mac_dat_data32),
    .io_sc2mac_dat_bits_data_33(sc2mac_dat_data33),
    .io_sc2mac_dat_bits_data_34(sc2mac_dat_data34),
    .io_sc2mac_dat_bits_data_35(sc2mac_dat_data35),
    .io_sc2mac_dat_bits_data_36(sc2mac_dat_data36),
    .io_sc2mac_dat_bits_data_37(sc2mac_dat_data37),
    .io_sc2mac_dat_bits_data_38(sc2mac_dat_data38),
    .io_sc2mac_dat_bits_data_39(sc2mac_dat_data39),
    .io_sc2mac_dat_bits_data_40(sc2mac_dat_data40),
    .io_sc2mac_dat_bits_data_41(sc2mac_dat_data41),
    .io_sc2mac_dat_bits_data_42(sc2mac_dat_data42),
    .io_sc2mac_dat_bits_data_43(sc2mac_dat_data43),
    .io_sc2mac_dat_bits_data_44(sc2mac_dat_data44),
    .io_sc2mac_dat_bits_data_45(sc2mac_dat_data45),
    .io_sc2mac_dat_bits_data_46(sc2mac_dat_data46),
    .io_sc2mac_dat_bits_data_47(sc2mac_dat_data47),
    .io_sc2mac_dat_bits_data_48(sc2mac_dat_data48),
    .io_sc2mac_dat_bits_data_49(sc2mac_dat_data49),
    .io_sc2mac_dat_bits_data_50(sc2mac_dat_data50),
    .io_sc2mac_dat_bits_data_51(sc2mac_dat_data51),
    .io_sc2mac_dat_bits_data_52(sc2mac_dat_data52),
    .io_sc2mac_dat_bits_data_53(sc2mac_dat_data53),
    .io_sc2mac_dat_bits_data_54(sc2mac_dat_data54),
    .io_sc2mac_dat_bits_data_55(sc2mac_dat_data55),
    .io_sc2mac_dat_bits_data_56(sc2mac_dat_data56),
    .io_sc2mac_dat_bits_data_57(sc2mac_dat_data57),
    .io_sc2mac_dat_bits_data_58(sc2mac_dat_data58),
    .io_sc2mac_dat_bits_data_59(sc2mac_dat_data59),
    .io_sc2mac_dat_bits_data_60(sc2mac_dat_data60),
    .io_sc2mac_dat_bits_data_61(sc2mac_dat_data61),
    .io_sc2mac_dat_bits_data_62(sc2mac_dat_data62),
    .io_sc2mac_dat_bits_data_63(sc2mac_dat_data63),
    .io_sc2mac_dat_bits_pd(sc2mac_dat_pd),
    .io_sc2mac_wt_valid(sc2mac_wt_pvld),
    .io_sc2mac_wt_bits_sel_0(sc2mac_wt_sel[0]),
    .io_sc2mac_wt_bits_sel_1(sc2mac_wt_sel[1]),
    .io_sc2mac_wt_bits_sel_2(sc2mac_wt_sel[2]),
    .io_sc2mac_wt_bits_sel_3(sc2mac_wt_sel[3]),
    .io_sc2mac_wt_bits_sel_4(sc2mac_wt_sel[4]),
    .io_sc2mac_wt_bits_sel_5(sc2mac_wt_sel[5]),
    .io_sc2mac_wt_bits_sel_6(sc2mac_wt_sel[6]),
    .io_sc2mac_wt_bits_sel_7(sc2mac_wt_sel[7]),
    .io_sc2mac_wt_bits_sel_8(sc2mac_wt_sel[8]),
    .io_sc2mac_wt_bits_sel_9(sc2mac_wt_sel[9]),
    .io_sc2mac_wt_bits_sel_10(sc2mac_wt_sel[10]),
    .io_sc2mac_wt_bits_sel_11(sc2mac_wt_sel[11]),
    .io_sc2mac_wt_bits_sel_12(sc2mac_wt_sel[12]),
    .io_sc2mac_wt_bits_sel_13(sc2mac_wt_sel[13]),
    .io_sc2mac_wt_bits_sel_14(sc2mac_wt_sel[14]),
    .io_sc2mac_wt_bits_sel_15(sc2mac_wt_sel[15]),
    .io_sc2mac_wt_bits_mask_0(sc2mac_wt_mask[0]),
    .io_sc2mac_wt_bits_mask_1(sc2mac_wt_mask[1]),
    .io_sc2mac_wt_bits_mask_2(sc2mac_wt_mask[2]),
    .io_sc2mac_wt_bits_mask_3(sc2mac_wt_mask[3]),
    .io_sc2mac_wt_bits_mask_4(sc2mac_wt_mask[4]),
    .io_sc2mac_wt_bits_mask_5(sc2mac_wt_mask[5]),
    .io_sc2mac_wt_bits_mask_6(sc2mac_wt_mask[6]),
    .io_sc2mac_wt_bits_mask_7(sc2mac_wt_mask[7]),
    .io_sc2mac_wt_bits_mask_8(sc2mac_wt_mask[8]),
    .io_sc2mac_wt_bits_mask_9(sc2mac_wt_mask[9]),
    .io_sc2mac_wt_bits_mask_10(sc2mac_wt_mask[10]),
    .io_sc2mac_wt_bits_mask_11(sc2mac_wt_mask[11]),
    .io_sc2mac_wt_bits_mask_12(sc2mac_wt_mask[12]),
    .io_sc2mac_wt_bits_mask_13(sc2mac_wt_mask[13]),
    .io_sc2mac_wt_bits_mask_14(sc2mac_wt_mask[14]),
    .io_sc2mac_wt_bits_mask_15(sc2mac_wt_mask[15]),
    .io_sc2mac_wt_bits_mask_16(sc2mac_wt_mask[16]),
    .io_sc2mac_wt_bits_mask_17(sc2mac_wt_mask[17]),
    .io_sc2mac_wt_bits_mask_18(sc2mac_wt_mask[18]),
    .io_sc2mac_wt_bits_mask_19(sc2mac_wt_mask[19]),
    .io_sc2mac_wt_bits_mask_20(sc2mac_wt_mask[20]),
    .io_sc2mac_wt_bits_mask_21(sc2mac_wt_mask[21]),
    .io_sc2mac_wt_bits_mask_22(sc2mac_wt_mask[22]),
    .io_sc2mac_wt_bits_mask_23(sc2mac_wt_mask[23]),
    .io_sc2mac_wt_bits_mask_24(sc2mac_wt_mask[24]),
    .io_sc2mac_wt_bits_mask_25(sc2mac_wt_mask[25]),
    .io_sc2mac_wt_bits_mask_26(sc2mac_wt_mask[26]),
    .io_sc2mac_wt_bits_mask_27(sc2mac_wt_mask[27]),
    .io_sc2mac_wt_bits_mask_28(sc2mac_wt_mask[28]),
    .io_sc2mac_wt_bits_mask_29(sc2mac_wt_mask[29]),
    .io_sc2mac_wt_bits_mask_30(sc2mac_wt_mask[30]),
    .io_sc2mac_wt_bits_mask_31(sc2mac_wt_mask[31]),
    .io_sc2mac_wt_bits_mask_32(sc2mac_wt_mask[32]),
    .io_sc2mac_wt_bits_mask_33(sc2mac_wt_mask[33]),
    .io_sc2mac_wt_bits_mask_34(sc2mac_wt_mask[34]),
    .io_sc2mac_wt_bits_mask_35(sc2mac_wt_mask[35]),
    .io_sc2mac_wt_bits_mask_36(sc2mac_wt_mask[36]),
    .io_sc2mac_wt_bits_mask_37(sc2mac_wt_mask[37]),
    .io_sc2mac_wt_bits_mask_38(sc2mac_wt_mask[38]),
    .io_sc2mac_wt_bits_mask_39(sc2mac_wt_mask[39]),
    .io_sc2mac_wt_bits_mask_40(sc2mac_wt_mask[40]),
    .io_sc2mac_wt_bits_mask_41(sc2mac_wt_mask[41]),
    .io_sc2mac_wt_bits_mask_42(sc2mac_wt_mask[42]),
    .io_sc2mac_wt_bits_mask_43(sc2mac_wt_mask[43]),
    .io_sc2mac_wt_bits_mask_44(sc2mac_wt_mask[44]),
    .io_sc2mac_wt_bits_mask_45(sc2mac_wt_mask[45]),
    .io_sc2mac_wt_bits_mask_46(sc2mac_wt_mask[46]),
    .io_sc2mac_wt_bits_mask_47(sc2mac_wt_mask[47]),
    .io_sc2mac_wt_bits_mask_48(sc2mac_wt_mask[48]),
    .io_sc2mac_wt_bits_mask_49(sc2mac_wt_mask[49]),
    .io_sc2mac_wt_bits_mask_50(sc2mac_wt_mask[50]),
    .io_sc2mac_wt_bits_mask_51(sc2mac_wt_mask[51]),
    .io_sc2mac_wt_bits_mask_52(sc2mac_wt_mask[52]),
    .io_sc2mac_wt_bits_mask_53(sc2mac_wt_mask[53]),
    .io_sc2mac_wt_bits_mask_54(sc2mac_wt_mask[54]),
    .io_sc2mac_wt_bits_mask_55(sc2mac_wt_mask[55]),
    .io_sc2mac_wt_bits_mask_56(sc2mac_wt_mask[56]),
    .io_sc2mac_wt_bits_mask_57(sc2mac_wt_mask[57]),
    .io_sc2mac_wt_bits_mask_58(sc2mac_wt_mask[58]),
    .io_sc2mac_wt_bits_mask_59(sc2mac_wt_mask[59]),
    .io_sc2mac_wt_bits_mask_60(sc2mac_wt_mask[60]),
    .io_sc2mac_wt_bits_mask_61(sc2mac_wt_mask[61]),
    .io_sc2mac_wt_bits_mask_62(sc2mac_wt_mask[62]),
    .io_sc2mac_wt_bits_mask_63(sc2mac_wt_mask[63]),
    .io_sc2mac_wt_bits_data_0(sc2mac_wt_data0),
    .io_sc2mac_wt_bits_data_1(sc2mac_wt_data1),
    .io_sc2mac_wt_bits_data_2(sc2mac_wt_data2),
    .io_sc2mac_wt_bits_data_3(sc2mac_wt_data3),
    .io_sc2mac_wt_bits_data_4(sc2mac_wt_data4),
    .io_sc2mac_wt_bits_data_5(sc2mac_wt_data5),
    .io_sc2mac_wt_bits_data_6(sc2mac_wt_data6),
    .io_sc2mac_wt_bits_data_7(sc2mac_wt_data7),
    .io_sc2mac_wt_bits_data_8(sc2mac_wt_data8),
    .io_sc2mac_wt_bits_data_9(sc2mac_wt_data9),
    .io_sc2mac_wt_bits_data_10(sc2mac_wt_data10),
    .io_sc2mac_wt_bits_data_11(sc2mac_wt_data11),
    .io_sc2mac_wt_bits_data_12(sc2mac_wt_data12),
    .io_sc2mac_wt_bits_data_13(sc2mac_wt_data13),
    .io_sc2mac_wt_bits_data_14(sc2mac_wt_data14),
    .io_sc2mac_wt_bits_data_15(sc2mac_wt_data15),
    .io_sc2mac_wt_bits_data_16(sc2mac_wt_data16),
    .io_sc2mac_wt_bits_data_17(sc2mac_wt_data17),
    .io_sc2mac_wt_bits_data_18(sc2mac_wt_data18),
    .io_sc2mac_wt_bits_data_19(sc2mac_wt_data19),
    .io_sc2mac_wt_bits_data_20(sc2mac_wt_data20),
    .io_sc2mac_wt_bits_data_21(sc2mac_wt_data21),
    .io_sc2mac_wt_bits_data_22(sc2mac_wt_data22),
    .io_sc2mac_wt_bits_data_23(sc2mac_wt_data23),
    .io_sc2mac_wt_bits_data_24(sc2mac_wt_data24),
    .io_sc2mac_wt_bits_data_25(sc2mac_wt_data25),
    .io_sc2mac_wt_bits_data_26(sc2mac_wt_data26),
    .io_sc2mac_wt_bits_data_27(sc2mac_wt_data27),
    .io_sc2mac_wt_bits_data_28(sc2mac_wt_data28),
    .io_sc2mac_wt_bits_data_29(sc2mac_wt_data29),
    .io_sc2mac_wt_bits_data_30(sc2mac_wt_data30),
    .io_sc2mac_wt_bits_data_31(sc2mac_wt_data31),
    .io_sc2mac_wt_bits_data_32(sc2mac_wt_data32),
    .io_sc2mac_wt_bits_data_33(sc2mac_wt_data33),
    .io_sc2mac_wt_bits_data_34(sc2mac_wt_data34),
    .io_sc2mac_wt_bits_data_35(sc2mac_wt_data35),
    .io_sc2mac_wt_bits_data_36(sc2mac_wt_data36),
    .io_sc2mac_wt_bits_data_37(sc2mac_wt_data37),
    .io_sc2mac_wt_bits_data_38(sc2mac_wt_data38),
    .io_sc2mac_wt_bits_data_39(sc2mac_wt_data39),
    .io_sc2mac_wt_bits_data_40(sc2mac_wt_data40),
    .io_sc2mac_wt_bits_data_41(sc2mac_wt_data41),
    .io_sc2mac_wt_bits_data_42(sc2mac_wt_data42),
    .io_sc2mac_wt_bits_data_43(sc2mac_wt_data43),
    .io_sc2mac_wt_bits_data_44(sc2mac_wt_data44),
    .io_sc2mac_wt_bits_data_45(sc2mac_wt_data45),
    .io_sc2mac_wt_bits_data_46(sc2mac_wt_data46),
    .io_sc2mac_wt_bits_data_47(sc2mac_wt_data47),
    .io_sc2mac_wt_bits_data_48(sc2mac_wt_data48),
    .io_sc2mac_wt_bits_data_49(sc2mac_wt_data49),
    .io_sc2mac_wt_bits_data_50(sc2mac_wt_data50),
    .io_sc2mac_wt_bits_data_51(sc2mac_wt_data51),
    .io_sc2mac_wt_bits_data_52(sc2mac_wt_data52),
    .io_sc2mac_wt_bits_data_53(sc2mac_wt_data53),
    .io_sc2mac_wt_bits_data_54(sc2mac_wt_data54),
    .io_sc2mac_wt_bits_data_55(sc2mac_wt_data55),
    .io_sc2mac_wt_bits_data_56(sc2mac_wt_data56),
    .io_sc2mac_wt_bits_data_57(sc2mac_wt_data57),
    .io_sc2mac_wt_bits_data_58(sc2mac_wt_data58),
    .io_sc2mac_wt_bits_data_59(sc2mac_wt_data59),
    .io_sc2mac_wt_bits_data_60(sc2mac_wt_data60),
    .io_sc2mac_wt_bits_data_61(sc2mac_wt_data61),
    .io_sc2mac_wt_bits_data_62(sc2mac_wt_data62),
    .io_sc2mac_wt_bits_data_63(sc2mac_wt_data63),
    .io_in_dat_valid(in_dat_pvld),
    .io_in_dat_bits_mask_0(in_dat_mask[0]),
    .io_in_dat_bits_mask_1(in_dat_mask[1]),
    .io_in_dat_bits_mask_2(in_dat_mask[2]),
    .io_in_dat_bits_mask_3(in_dat_mask[3]),
    .io_in_dat_bits_mask_4(in_dat_mask[4]),
    .io_in_dat_bits_mask_5(in_dat_mask[5]),
    .io_in_dat_bits_mask_6(in_dat_mask[6]),
    .io_in_dat_bits_mask_7(in_dat_mask[7]),
    .io_in_dat_bits_mask_8(in_dat_mask[8]),
    .io_in_dat_bits_mask_9(in_dat_mask[9]),
    .io_in_dat_bits_mask_10(in_dat_mask[10]),
    .io_in_dat_bits_mask_11(in_dat_mask[11]),
    .io_in_dat_bits_mask_12(in_dat_mask[12]),
    .io_in_dat_bits_mask_13(in_dat_mask[13]),
    .io_in_dat_bits_mask_14(in_dat_mask[14]),
    .io_in_dat_bits_mask_15(in_dat_mask[15]),
    .io_in_dat_bits_mask_16(in_dat_mask[16]),
    .io_in_dat_bits_mask_17(in_dat_mask[17]),
    .io_in_dat_bits_mask_18(in_dat_mask[18]),
    .io_in_dat_bits_mask_19(in_dat_mask[19]),
    .io_in_dat_bits_mask_20(in_dat_mask[20]),
    .io_in_dat_bits_mask_21(in_dat_mask[21]),
    .io_in_dat_bits_mask_22(in_dat_mask[22]),
    .io_in_dat_bits_mask_23(in_dat_mask[23]),
    .io_in_dat_bits_mask_24(in_dat_mask[24]),
    .io_in_dat_bits_mask_25(in_dat_mask[25]),
    .io_in_dat_bits_mask_26(in_dat_mask[26]),
    .io_in_dat_bits_mask_27(in_dat_mask[27]),
    .io_in_dat_bits_mask_28(in_dat_mask[28]),
    .io_in_dat_bits_mask_29(in_dat_mask[29]),
    .io_in_dat_bits_mask_30(in_dat_mask[30]),
    .io_in_dat_bits_mask_31(in_dat_mask[31]),
    .io_in_dat_bits_mask_32(in_dat_mask[32]),
    .io_in_dat_bits_mask_33(in_dat_mask[33]),
    .io_in_dat_bits_mask_34(in_dat_mask[34]),
    .io_in_dat_bits_mask_35(in_dat_mask[35]),
    .io_in_dat_bits_mask_36(in_dat_mask[36]),
    .io_in_dat_bits_mask_37(in_dat_mask[37]),
    .io_in_dat_bits_mask_38(in_dat_mask[38]),
    .io_in_dat_bits_mask_39(in_dat_mask[39]),
    .io_in_dat_bits_mask_40(in_dat_mask[40]),
    .io_in_dat_bits_mask_41(in_dat_mask[41]),
    .io_in_dat_bits_mask_42(in_dat_mask[42]),
    .io_in_dat_bits_mask_43(in_dat_mask[43]),
    .io_in_dat_bits_mask_44(in_dat_mask[44]),
    .io_in_dat_bits_mask_45(in_dat_mask[45]),
    .io_in_dat_bits_mask_46(in_dat_mask[46]),
    .io_in_dat_bits_mask_47(in_dat_mask[47]),
    .io_in_dat_bits_mask_48(in_dat_mask[48]),
    .io_in_dat_bits_mask_49(in_dat_mask[49]),
    .io_in_dat_bits_mask_50(in_dat_mask[50]),
    .io_in_dat_bits_mask_51(in_dat_mask[51]),
    .io_in_dat_bits_mask_52(in_dat_mask[52]),
    .io_in_dat_bits_mask_53(in_dat_mask[53]),
    .io_in_dat_bits_mask_54(in_dat_mask[54]),
    .io_in_dat_bits_mask_55(in_dat_mask[55]),
    .io_in_dat_bits_mask_56(in_dat_mask[56]),
    .io_in_dat_bits_mask_57(in_dat_mask[57]),
    .io_in_dat_bits_mask_58(in_dat_mask[58]),
    .io_in_dat_bits_mask_59(in_dat_mask[59]),
    .io_in_dat_bits_mask_60(in_dat_mask[60]),
    .io_in_dat_bits_mask_61(in_dat_mask[61]),
    .io_in_dat_bits_mask_62(in_dat_mask[62]),
    .io_in_dat_bits_mask_63(in_dat_mask[63]),
    .io_in_dat_bits_data_0(in_dat_data0),
    .io_in_dat_bits_data_1(in_dat_data1),
    .io_in_dat_bits_data_2(in_dat_data2),
    .io_in_dat_bits_data_3(in_dat_data3),
    .io_in_dat_bits_data_4(in_dat_data4),
    .io_in_dat_bits_data_5(in_dat_data5),
    .io_in_dat_bits_data_6(in_dat_data6),
    .io_in_dat_bits_data_7(in_dat_data7),
    .io_in_dat_bits_data_8(in_dat_data8),
    .io_in_dat_bits_data_9(in_dat_data9),
    .io_in_dat_bits_data_10(in_dat_data10),
    .io_in_dat_bits_data_11(in_dat_data11),
    .io_in_dat_bits_data_12(in_dat_data12),
    .io_in_dat_bits_data_13(in_dat_data13),
    .io_in_dat_bits_data_14(in_dat_data14),
    .io_in_dat_bits_data_15(in_dat_data15),
    .io_in_dat_bits_data_16(in_dat_data16),
    .io_in_dat_bits_data_17(in_dat_data17),
    .io_in_dat_bits_data_18(in_dat_data18),
    .io_in_dat_bits_data_19(in_dat_data19),
    .io_in_dat_bits_data_20(in_dat_data20),
    .io_in_dat_bits_data_21(in_dat_data21),
    .io_in_dat_bits_data_22(in_dat_data22),
    .io_in_dat_bits_data_23(in_dat_data23),
    .io_in_dat_bits_data_24(in_dat_data24),
    .io_in_dat_bits_data_25(in_dat_data25),
    .io_in_dat_bits_data_26(in_dat_data26),
    .io_in_dat_bits_data_27(in_dat_data27),
    .io_in_dat_bits_data_28(in_dat_data28),
    .io_in_dat_bits_data_29(in_dat_data29),
    .io_in_dat_bits_data_30(in_dat_data30),
    .io_in_dat_bits_data_31(in_dat_data31),
    .io_in_dat_bits_data_32(in_dat_data32),
    .io_in_dat_bits_data_33(in_dat_data33),
    .io_in_dat_bits_data_34(in_dat_data34),
    .io_in_dat_bits_data_35(in_dat_data35),
    .io_in_dat_bits_data_36(in_dat_data36),
    .io_in_dat_bits_data_37(in_dat_data37),
    .io_in_dat_bits_data_38(in_dat_data38),
    .io_in_dat_bits_data_39(in_dat_data39),
    .io_in_dat_bits_data_40(in_dat_data40),
    .io_in_dat_bits_data_41(in_dat_data41),
    .io_in_dat_bits_data_42(in_dat_data42),
    .io_in_dat_bits_data_43(in_dat_data43),
    .io_in_dat_bits_data_44(in_dat_data44),
    .io_in_dat_bits_data_45(in_dat_data45),
    .io_in_dat_bits_data_46(in_dat_data46),
    .io_in_dat_bits_data_47(in_dat_data47),
    .io_in_dat_bits_data_48(in_dat_data48),
    .io_in_dat_bits_data_49(in_dat_data49),
    .io_in_dat_bits_data_50(in_dat_data50),
    .io_in_dat_bits_data_51(in_dat_data51),
    .io_in_dat_bits_data_52(in_dat_data52),
    .io_in_dat_bits_data_53(in_dat_data53),
    .io_in_dat_bits_data_54(in_dat_data54),
    .io_in_dat_bits_data_55(in_dat_data55),
    .io_in_dat_bits_data_56(in_dat_data56),
    .io_in_dat_bits_data_57(in_dat_data57),
    .io_in_dat_bits_data_58(in_dat_data58),
    .io_in_dat_bits_data_59(in_dat_data59),
    .io_in_dat_bits_data_60(in_dat_data60),
    .io_in_dat_bits_data_61(in_dat_data61),
    .io_in_dat_bits_data_62(in_dat_data62),
    .io_in_dat_bits_data_63(in_dat_data63),
    .io_in_dat_bits_pd(in_dat_pd),
    .io_in_wt_valid(in_wt_pvld),
    .io_in_wt_bits_sel_0(in_wt_sel[0]),
    .io_in_wt_bits_sel_1(in_wt_sel[1]),
    .io_in_wt_bits_sel_2(in_wt_sel[2]),
    .io_in_wt_bits_sel_3(in_wt_sel[3]),
    .io_in_wt_bits_sel_4(in_wt_sel[4]),
    .io_in_wt_bits_sel_5(in_wt_sel[5]),
    .io_in_wt_bits_sel_6(in_wt_sel[6]),
    .io_in_wt_bits_sel_7(in_wt_sel[7]),
    .io_in_wt_bits_sel_8(in_wt_sel[8]),
    .io_in_wt_bits_sel_9(in_wt_sel[9]),
    .io_in_wt_bits_sel_10(in_wt_sel[10]),
    .io_in_wt_bits_sel_11(in_wt_sel[11]),
    .io_in_wt_bits_sel_12(in_wt_sel[12]),
    .io_in_wt_bits_sel_13(in_wt_sel[13]),
    .io_in_wt_bits_sel_14(in_wt_sel[14]),
    .io_in_wt_bits_sel_15(in_wt_sel[15]),
    .io_in_wt_bits_mask_0(in_wt_mask[0]),
    .io_in_wt_bits_mask_1(in_wt_mask[1]),
    .io_in_wt_bits_mask_2(in_wt_mask[2]),
    .io_in_wt_bits_mask_3(in_wt_mask[3]),
    .io_in_wt_bits_mask_4(in_wt_mask[4]),
    .io_in_wt_bits_mask_5(in_wt_mask[5]),
    .io_in_wt_bits_mask_6(in_wt_mask[6]),
    .io_in_wt_bits_mask_7(in_wt_mask[7]),
    .io_in_wt_bits_mask_8(in_wt_mask[8]),
    .io_in_wt_bits_mask_9(in_wt_mask[9]),
    .io_in_wt_bits_mask_10(in_wt_mask[10]),
    .io_in_wt_bits_mask_11(in_wt_mask[11]),
    .io_in_wt_bits_mask_12(in_wt_mask[12]),
    .io_in_wt_bits_mask_13(in_wt_mask[13]),
    .io_in_wt_bits_mask_14(in_wt_mask[14]),
    .io_in_wt_bits_mask_15(in_wt_mask[15]),
    .io_in_wt_bits_mask_16(in_wt_mask[16]),
    .io_in_wt_bits_mask_17(in_wt_mask[17]),
    .io_in_wt_bits_mask_18(in_wt_mask[18]),
    .io_in_wt_bits_mask_19(in_wt_mask[19]),
    .io_in_wt_bits_mask_20(in_wt_mask[20]),
    .io_in_wt_bits_mask_21(in_wt_mask[21]),
    .io_in_wt_bits_mask_22(in_wt_mask[22]),
    .io_in_wt_bits_mask_23(in_wt_mask[23]),
    .io_in_wt_bits_mask_24(in_wt_mask[24]),
    .io_in_wt_bits_mask_25(in_wt_mask[25]),
    .io_in_wt_bits_mask_26(in_wt_mask[26]),
    .io_in_wt_bits_mask_27(in_wt_mask[27]),
    .io_in_wt_bits_mask_28(in_wt_mask[28]),
    .io_in_wt_bits_mask_29(in_wt_mask[29]),
    .io_in_wt_bits_mask_30(in_wt_mask[30]),
    .io_in_wt_bits_mask_31(in_wt_mask[31]),
    .io_in_wt_bits_mask_32(in_wt_mask[32]),
    .io_in_wt_bits_mask_33(in_wt_mask[33]),
    .io_in_wt_bits_mask_34(in_wt_mask[34]),
    .io_in_wt_bits_mask_35(in_wt_mask[35]),
    .io_in_wt_bits_mask_36(in_wt_mask[36]),
    .io_in_wt_bits_mask_37(in_wt_mask[37]),
    .io_in_wt_bits_mask_38(in_wt_mask[38]),
    .io_in_wt_bits_mask_39(in_wt_mask[39]),
    .io_in_wt_bits_mask_40(in_wt_mask[40]),
    .io_in_wt_bits_mask_41(in_wt_mask[41]),
    .io_in_wt_bits_mask_42(in_wt_mask[42]),
    .io_in_wt_bits_mask_43(in_wt_mask[43]),
    .io_in_wt_bits_mask_44(in_wt_mask[44]),
    .io_in_wt_bits_mask_45(in_wt_mask[45]),
    .io_in_wt_bits_mask_46(in_wt_mask[46]),
    .io_in_wt_bits_mask_47(in_wt_mask[47]),
    .io_in_wt_bits_mask_48(in_wt_mask[48]),
    .io_in_wt_bits_mask_49(in_wt_mask[49]),
    .io_in_wt_bits_mask_50(in_wt_mask[50]),
    .io_in_wt_bits_mask_51(in_wt_mask[51]),
    .io_in_wt_bits_mask_52(in_wt_mask[52]),
    .io_in_wt_bits_mask_53(in_wt_mask[53]),
    .io_in_wt_bits_mask_54(in_wt_mask[54]),
    .io_in_wt_bits_mask_55(in_wt_mask[55]),
    .io_in_wt_bits_mask_56(in_wt_mask[56]),
    .io_in_wt_bits_mask_57(in_wt_mask[57]),
    .io_in_wt_bits_mask_58(in_wt_mask[58]),
    .io_in_wt_bits_mask_59(in_wt_mask[59]),
    .io_in_wt_bits_mask_60(in_wt_mask[60]),
    .io_in_wt_bits_mask_61(in_wt_mask[61]),
    .io_in_wt_bits_mask_62(in_wt_mask[62]),
    .io_in_wt_bits_mask_63(in_wt_mask[63]),
    .io_in_wt_bits_data_0(in_wt_data0),
    .io_in_wt_bits_data_1(in_wt_data1),
    .io_in_wt_bits_data_2(in_wt_data2),
    .io_in_wt_bits_data_3(in_wt_data3),
    .io_in_wt_bits_data_4(in_wt_data4),
    .io_in_wt_bits_data_5(in_wt_data5),
    .io_in_wt_bits_data_6(in_wt_data6),
    .io_in_wt_bits_data_7(in_wt_data7),
    .io_in_wt_bits_data_8(in_wt_data8),
    .io_in_wt_bits_data_9(in_wt_data9),
    .io_in_wt_bits_data_10(in_wt_data10),
    .io_in_wt_bits_data_11(in_wt_data11),
    .io_in_wt_bits_data_12(in_wt_data12),
    .io_in_wt_bits_data_13(in_wt_data13),
    .io_in_wt_bits_data_14(in_wt_data14),
    .io_in_wt_bits_data_15(in_wt_data15),
    .io_in_wt_bits_data_16(in_wt_data16),
    .io_in_wt_bits_data_17(in_wt_data17),
    .io_in_wt_bits_data_18(in_wt_data18),
    .io_in_wt_bits_data_19(in_wt_data19),
    .io_in_wt_bits_data_20(in_wt_data20),
    .io_in_wt_bits_data_21(in_wt_data21),
    .io_in_wt_bits_data_22(in_wt_data22),
    .io_in_wt_bits_data_23(in_wt_data23),
    .io_in_wt_bits_data_24(in_wt_data24),
    .io_in_wt_bits_data_25(in_wt_data25),
    .io_in_wt_bits_data_26(in_wt_data26),
    .io_in_wt_bits_data_27(in_wt_data27),
    .io_in_wt_bits_data_28(in_wt_data28),
    .io_in_wt_bits_data_29(in_wt_data29),
    .io_in_wt_bits_data_30(in_wt_data30),
    .io_in_wt_bits_data_31(in_wt_data31),
    .io_in_wt_bits_data_32(in_wt_data32),
    .io_in_wt_bits_data_33(in_wt_data33),
    .io_in_wt_bits_data_34(in_wt_data34),
    .io_in_wt_bits_data_35(in_wt_data35),
    .io_in_wt_bits_data_36(in_wt_data36),
    .io_in_wt_bits_data_37(in_wt_data37),
    .io_in_wt_bits_data_38(in_wt_data38),
    .io_in_wt_bits_data_39(in_wt_data39),
    .io_in_wt_bits_data_40(in_wt_data40),
    .io_in_wt_bits_data_41(in_wt_data41),
    .io_in_wt_bits_data_42(in_wt_data42),
    .io_in_wt_bits_data_43(in_wt_data43),
    .io_in_wt_bits_data_44(in_wt_data44),
    .io_in_wt_bits_data_45(in_wt_data45),
    .io_in_wt_bits_data_46(in_wt_data46),
    .io_in_wt_bits_data_47(in_wt_data47),
    .io_in_wt_bits_data_48(in_wt_data48),
    .io_in_wt_bits_data_49(in_wt_data49),
    .io_in_wt_bits_data_50(in_wt_data50),
    .io_in_wt_bits_data_51(in_wt_data51),
    .io_in_wt_bits_data_52(in_wt_data52),
    .io_in_wt_bits_data_53(in_wt_data53),
    .io_in_wt_bits_data_54(in_wt_data54),
    .io_in_wt_bits_data_55(in_wt_data55),
    .io_in_wt_bits_data_56(in_wt_data56),
    .io_in_wt_bits_data_57(in_wt_data57),
    .io_in_wt_bits_data_58(in_wt_data58),
    .io_in_wt_bits_data_59(in_wt_data59),
    .io_in_wt_bits_data_60(in_wt_data60),
    .io_in_wt_bits_data_61(in_wt_data61),
    .io_in_wt_bits_data_62(in_wt_data62),
    .io_in_wt_bits_data_63(in_wt_data63)
    );
endmodule
