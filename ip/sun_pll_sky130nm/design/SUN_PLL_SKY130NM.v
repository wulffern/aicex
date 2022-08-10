
//-------------------------------------------------------------
// SUNPLL_SUN_PLL_LSCORE <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_LSCORE(A,AN,YN,Y,AVDD,AVSS);
input logic YN;
input logic A;
input logic AN;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNPLL_SUNTR_NCHDL xb1_0 (Y,AN,AVSS,AVSS);
SUNPLL_SUNTR_NCHDL xb1_1 (Y,AN,AVSS,AVSS);
SUNPLL_SUNTR_NCHDL xb2_0 (YN,A,AVSS,AVSS);
SUNPLL_SUNTR_NCHDL xb2_1 (YN,A,AVSS,AVSS);
SUNPLL_SUNTR_PCHDL xc1a (net2,YN,AVDD,AVDD);
SUNPLL_SUNTR_PCHDL xc1b (Y,YN,net2,AVDD);
SUNPLL_SUNTR_PCHDL xc2a (net1,Y,AVDD,AVDD);
SUNPLL_SUNTR_PCHDL xc2b (YN,Y,net1,AVDD);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_ROSC <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_ROSC(PWRUP_1V8,VDD_ROSC,AVSS,AVDD,CK);
input logic AVSS;
input logic AVDD;
input logic PWRUP_1V8;
input logic VDD_ROSC;
input logic CK;
SUNPLL_SUN_PLL_LSCORE xa3 (N_2,N_1,CKUP,CKDWN,AVDD,AVSS);
SUNPLL_SUNTR_IVX1_CV xa40 (CKUP,CK,AVDD,AVSS);
SUNPLL_SUNTR_IVX1_CV xa50 (CKDWN,NC1,AVDD,AVSS);
SUNPLL_SUNTR_TAPCELLB_CV xa60 (AVDD,AVSS);
SUNPLL_SUNTRB_NDX1_CV xb1 (PWRUP_1V8,N_0,NI,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_0 (NI,N_7,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_1 (N_7,N_6,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_2 (N_6,N_5,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_3 (N_5,N_4,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_4 (N_4,N_3,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_5 (N_3,N_2,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_6 (N_2,N_1,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_IVX1_CV xb2_7 (N_1,N_0,AVDD,AVSS,VDD_ROSC,AVSS);
SUNPLL_SUNTRB_TAPCELLBAVSS_CV xb3 (AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_PFD <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_PFD(CK_FB,CK_REF,CP_UP,CP_DOWN,AVDD,AVSS);
input logic AVSS;
input logic AVDD;
input logic CK_FB;
input logic CK_REF;
input logic CP_UP;
input logic CP_DOWN;
SUNPLL_SUNTR_TAPCELLB_CV xa0 (AVDD,AVSS);
SUNPLL_SUNTR_DFTSPCX1_CV xa1 (CFB,CK_REF,CP_UP_N,AVDD,AVSS);
SUNPLL_SUNTR_IVX1_CV xa2 (CP_UP_N,CP_UP,AVDD,AVSS);
SUNPLL_SUNTR_NRX1_CV xa3 (CP_UP_N,CP_DOWN_N,CFB,AVDD,AVSS);
SUNPLL_SUNTR_DFTSPCX1_CV xa5 (CFB,CK_FB,CP_DOWN_N,AVDD,AVSS);
SUNPLL_SUNTR_IVX1_CV xa6 (CP_DOWN_N,CP_DOWN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_DIVN <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_DIVN(PWRUP_1V8,CK,AVDD,AVSS,CK_FB);
input logic PWRUP_1V8;
input logic AVSS;
input logic AVDD;
input logic CK;
input logic CK_FB;
SUNPLL_SUNTR_DFRNQNX1_CV xa (N0,D0,PWRUP_1V8,CK_FB,N0,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xb (N1,D1,PWRUP_1V8,D0,N1,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xc (N2,D2,PWRUP_1V8,D1,N2,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xd (N3,D3,PWRUP_1V8,D2,N3,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xe (N4,D4,PWRUP_1V8,D3,N4,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xf (N5,D5,PWRUP_1V8,D4,N5,AVDD,AVSS);
SUNPLL_SUNTR_DFRNQNX1_CV xg (N6,CK,PWRUP_1V8,D5,N6,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_BUF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_BUF(AVDD,VBN,AVSS,VI,VO,VFB);
input logic AVSS;
input logic AVDD;
input logic VBN;
input logic VI;
input logic VO;
input logic VFB;
SUNPLL_SUNTR_NCHDLCM xa1 (VS,VBN,AVSS,AVSS);
SUNPLL_SUNTR_NCHDLA xa2 (VDP,VFB,VS,AVSS);
SUNPLL_SUNTR_NCHDLA xa4 (VGP,VI,VS,AVSS);
SUNPLL_SUNTR_PCHDLA xc1 (VGP,VDP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc2 (VDP,VDP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_0 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_1 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_2 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_3 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_4 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLA xc3_5 (VO,VGP,AVDD,AVDD);
SUNPLL_SUNSAR_CAP_BSSW_CV xd20 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd30 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd31 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd32 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd33 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd34 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd35 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd36 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd37 (VO,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xd38 (VO,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_CP <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_CP(AVDD,CP_UP_N,CP_DOWN,VBN,AVSS,LPF);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic CP_DOWN;
input logic VBN;
input logic LPF;
SUNPLL_SUNTR_NCHDLCM xa10 (VBP,VBN,AVSS,AVSS);
SUNPLL_SUNTR_NCHDLCM xa20 (VNS,VBN,AVSS,AVSS);
SUNPLL_SUNTR_NCHDL xa30 (LPF,CP_DOWN,VNS,AVSS);
SUNPLL_SUNTR_PCHDLCM xb10 (VBP,VBP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDLCM xb20 (VPS,VBP,AVDD,AVDD);
SUNPLL_SUNTR_PCHDL xb30 (LPF,CP_UP_N,VPS,AVDD);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_BIAS <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_BIAS(IBPSR_1U,AVDD,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic IBPSR_1U;
input logic PWRUP_1V8;
SUNPLL_SUNTR_TAPCELLB_CV xa00 (AVDD,AVSS);
SUNPLL_SUNTR_IVX1_CV xa10 (PWRUP_1V8,PWRUP_1V8_N,AVDD,AVSS);
SUNPLL_SUNTR_NCHDL xa20 (IBPSR_1U,PWRUP_1V8_N,AVSS,AVSS);
SUNPLL_SUNTR_NCHDLCM xa30 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_CAP_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_CAP_LPF(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL_LPF(VLPF,AVSS);
input logic AVSS;
input logic VLPF;
SUNPLL_SUNTR_RPPO_12k xa30 (VN1,VLPF,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb10 (VLPF,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb30 (VLPF,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb31 (VLPF,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb40 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb41 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb42 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb43 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb44 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb45 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb46 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb47 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb48 (VN1,AVSS);
SUNPLL_SUNSAR_CAP_BSSW_CV xb49 (VN1,AVSS);
endmodule

//-------------------------------------------------------------
// SUNPLL_SUN_PLL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNPLL_SUN_PLL(AVDD,AVSS,PWRUP_1V8,CK_REF,CK,IBSPR_1U);
input logic AVDD;
input logic AVSS;
input logic PWRUP_1V8;
input logic CK_REF;
input logic CK;
input logic IBSPR_1U;
SUNPLL_SUN_PLL_BUF xb1 (AVDD,VDD_ROSC_N,net2,VDD_ROSC_N,IBSPR_1U,AVSS);
SUNPLL_SUN_PLL_LPF xb2 (net2,AVSS);
SUNPLL_SUN_PLL_DIVN xh1 (AVDD,net1,CK,PWRUP_1V8,AVSS);
SUNPLL_SUN_PLL_ROSC xh2 (AVDD,CK,VDD_ROSC_N,PWRUP_1V8,AVSS);
SUNPLL_SUN_PLL_PFD xj1 (AVDD,CP_UP_N,CK_REF,CP_DOWN,net1,AVSS);
SUNPLL_SUN_PLL_CP xk1 (AVDD,CP_UP_N,net2,CP_DOWN,IBSPR_1U,AVSS);
SUNPLL_SUN_PLL_BIAS xl2 (IBSPR_1U,AVDD,PWRUP_1V8,AVSS);
endmodule
