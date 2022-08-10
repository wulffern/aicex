
//-------------------------------------------------------------
// CAP_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAP_LPF(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUN_PLL_BIAS <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_BIAS(IBPSR_1U,AVDD,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic IBPSR_1U;
input logic PWRUP_1V8;
SUNTR_TAPCELLB_CV xa00 (AVDD,AVSS);
SUNTR_IVX1_CV xa10 (PWRUP_1V8,PWRUP_1V8_N,AVDD,AVSS);
SUNTR_NCHDL xa20 (IBPSR_1U,PWRUP_1V8_N,AVSS,AVSS);
SUNTR_NCHDLCM xa30 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_BUF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_BUF(AVDD,VFB,VI,VO,VBN,AVSS);
input logic AVSS;
input logic AVDD;
input logic VFB;
input logic VI;
input logic VO;
input logic VBN;
SUNTR_NCHDLCM xa10 (VS,VBN,AVSS,AVSS);
SUNTR_NCHDLA xa20 (VDP,VFB,VS,AVSS);
SUNTR_NCHDLA xa40 (VGP,VI,VS,AVSS);
SUNTR_PCHDLA xc10 (VGP,VDP,AVDD,AVDD);
SUNTR_PCHDLA xc20 (VDP,VDP,AVDD,AVDD);
SUNTR_PCHDLA xc3_00 (VO,VGP,AVDD,AVDD);
SUNTR_PCHDLA xc3_10 (VO,VGP,AVDD,AVDD);
SUNTR_PCHDLA xc3_20 (VO,VGP,AVDD,AVDD);
SUNTR_PCHDLA xc3_30 (VO,VGP,AVDD,AVDD);
SUNTR_PCHDLA xc3_40 (VO,VGP,AVDD,AVDD);
SUNTR_PCHDLA xc3_50 (VO,VGP,AVDD,AVDD);
SUNSAR_CAP_BSSW_CV xd20 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd30 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd31 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd32 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd33 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd34 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd35 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd36 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd37 (VO,AVSS);
SUNSAR_CAP_BSSW_CV xd38 (VO,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_CP <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_CP(AVDD,CP_UP_N,LPF,CP_DOWN,VBN,AVSS);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic LPF;
input logic CP_DOWN;
input logic VBN;
SUNTR_NCHDLCM xa10 (VBP,VBN,AVSS,AVSS);
SUNTR_NCHDLCM xa20 (VNS,VBN,AVSS,AVSS);
SUNTR_NCHDL xa30 (LPF,CP_DOWN,VNS,AVSS);
SUNTR_PCHDLCM xb10 (VBP,VBP,AVDD,AVDD);
SUNTR_PCHDLCM xb20 (VPS,VBP,AVDD,AVDD);
SUNTR_PCHDL xb30 (LPF,CP_UP_N,VPS,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_DIVN <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_DIVN(AVDD,CK_FB,CK,PWRUP_1V8,AVSS);
input logic PWRUP_1V8;
input logic AVSS;
input logic AVDD;
input logic CK_FB;
input logic CK;
SUNTR_DFRNQNX1_CV xa0 (N0,D0,PWRUP_1V8,CK_FB,N0,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xb0 (N1,D1,PWRUP_1V8,D0,N1,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xc0 (N2,D2,PWRUP_1V8,D1,N2,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xd0 (N3,D3,PWRUP_1V8,D2,N3,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xe0 (N4,D4,PWRUP_1V8,D3,N4,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xf0 (N5,D5,PWRUP_1V8,D4,N5,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xg0 (N6,CK,PWRUP_1V8,D5,N6,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LPF(VLPF,AVSS);
input logic AVSS;
input logic VLPF;
SUNTR_RPPO_12k xa30 (VN1,VLPF,AVSS);
CAP_LPF xb10 (VLPF,AVSS);
CAP_LPF xb20 (VLPF,AVSS);
CAP_LPF xb30 (VN1,AVSS);
CAP_LPF xb31 (VN1,AVSS);
CAP_LPF xb32 (VN1,AVSS);
CAP_LPF xb33 (VN1,AVSS);
CAP_LPF xb34 (VN1,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_LSCORE <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LSCORE(A,AN,YN,Y,AVDD,AVSS);
input logic YN;
input logic A;
input logic AN;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL xb1_00 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb1_10 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb2_00 (YN,A,AVSS,AVSS);
SUNTR_NCHDL xb2_10 (YN,A,AVSS,AVSS);
SUNTR_PCHDL xc1a0 (net2,YN,AVDD,AVDD);
SUNTR_PCHDL xc1b0 (Y,YN,net2,AVDD);
SUNTR_PCHDL xc2a0 (net1,Y,AVDD,AVDD);
SUNTR_PCHDL xc2b0 (YN,Y,net1,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_PFD <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_PFD(AVDD,CP_UP_N,CK_REF,CP_DOWN,CK_FB,AVSS);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic CK_REF;
input logic CP_DOWN;
input logic CK_FB;
SUNTR_TAPCELLB_CV xa00 (AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa10 (CFB,CK_REF,CP_DUP_N,AVDD,AVSS);
SUNTR_IVX1_CV xa20 (CP_DUP_N,CP_UP,AVDD,AVSS);
SUNTR_IVX1_CV xa2a0 (CP_UP,CP_UP_N,AVDD,AVSS);
SUNTR_NRX1_CV xa30 (CP_DUP_N,CP_DOWN_N,CFB,AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa50 (CFB,CK_FB,CP_DOWN_N,AVDD,AVSS);
SUNTR_IVX1_CV xa60 (CP_DOWN_N,CP_DOWN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_ROSC <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_ROSC(AVDD,CK,VDD_ROSC,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic CK;
input logic VDD_ROSC;
input logic PWRUP_1V8;
SUN_PLL_LSCORE xa3 (N_2,N_1,CKUP,CKDWN,AVDD,AVSS);
SUNTR_IVX1_CV xa40 (CKUP,CK,AVDD,AVSS);
SUNTR_IVX1_CV xa50 (CKDWN,NC1,AVDD,AVSS);
SUNTR_TAPCELLB_CV xa60 (AVDD,AVSS);
SUNTRB_NDX1_CV xb1 (PWRUP_1V8,N_0,NI,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_0 (NI,N_7,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_1 (N_7,N_6,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_2 (N_6,N_5,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_3 (N_5,N_4,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_4 (N_4,N_3,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_5 (N_3,N_2,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_6 (N_2,N_1,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_7 (N_1,N_0,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_TAPCELLBAVSS_CV xb3 (AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL(AVDD,AVSS,PWRUP_1V8,CK_REF,CK,IBSPR_1U);
input logic AVDD;
input logic AVSS;
input logic PWRUP_1V8;
input logic CK_REF;
input logic CK;
input logic IBSPR_1U;
SUN_PLL_BUF xb1 (AVDD,VDD_ROSC_N,net2,VDD_ROSC_N,IBSPR_1U,AVSS);
SUN_PLL_LPF xb2 (net2,AVSS);
SUN_PLL_DIVN xh1 (AVDD,net1,CK,PWRUP_1V8,AVSS);
SUN_PLL_ROSC xh2 (AVDD,CK,VDD_ROSC_N,PWRUP_1V8,AVSS);
SUN_PLL_PFD xj1 (AVDD,CP_UP_N,CK_REF,CP_DOWN,net1,AVSS);
SUN_PLL_CP xk1 (AVDD,CP_UP_N,net2,CP_DOWN,IBSPR_1U,AVSS);
SUN_PLL_BIAS xl2 (IBSPR_1U,AVDD,PWRUP_1V8,AVSS);
endmodule
