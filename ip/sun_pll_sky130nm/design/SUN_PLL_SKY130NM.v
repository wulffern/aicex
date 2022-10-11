
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
module SUN_PLL_BIAS(IBPSR_1U,PWRUP_1V8_N,AVSS);
input logic AVSS;
input logic IBPSR_1U;
input logic PWRUP_1V8_N;
SUNTR_NCHDL xa20 (IBPSR_1U,PWRUP_1V8_N,AVSS,AVSS);
SUNTR_NCHDLCM xa30 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa31 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa32 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa33 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa34 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa35 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa36 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa37 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa38 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
SUNTR_NCHDLCM xa39 (IBPSR_1U,IBPSR_1U,AVSS,AVSS);
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
endmodule

//-------------------------------------------------------------
// SUN_PLL_CP <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_CP(AVDD,CP_UP_N,LPF,CP_DOWN,VBN,AVSS,LPFZ,PWRUP_1V8,KICK);
input logic AVSS;
input logic AVDD;
input logic CP_UP_N;
input logic LPF;
input logic CP_DOWN;
input logic VBN;
input logic LPFZ;
input logic PWRUP_1V8;
input logic KICK;
SUNTR_NCHDLCM xa10 (VBP,VBN,AVSS,AVSS);
SUNTR_NCHDLCM xa20 (VNS,VBN,AVSS,AVSS);
SUNTR_NCHDL xa30 (LPF,CP_DOWN,VNS,AVSS);
SUNTR_NCHDLA xa40 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa41 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa42 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa43 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa44 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa45 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa46 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa47 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa48 (LPFZ,KICK,AVSS,AVSS);
SUNTR_NCHDLA xa49 (LPFZ,KICK,AVSS,AVSS);
SUNTR_PCHDLCM xb10 (VBP,VBP,AVDD,AVDD);
SUNTR_PCHDLCM xb20 (VPS,VBP,AVDD,AVDD);
SUNTR_PCHDL xb30 (LPF,CP_UP_N,VPS,AVDD);
SUNTR_PCHDL xb40 (LPF,PWRUP_1V8,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_DIVN <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_DIVN(AVDD,CK_FB,CK,PWRUP_1V8,AVSS);
input logic AVSS;
input logic AVDD;
input logic PWRUP_1V8;
input logic CK_FB;
input logic CK;
SUNTR_DFRNQNX1_CV xc0 (N2,D2,PWRUP_1V8,CK_FB,N2,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xd0 (N3,D3,PWRUP_1V8,D2,N3,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xe0 (N4,D4,PWRUP_1V8,D3,N4,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xf0 (N5,D5,PWRUP_1V8,D4,N5,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xg0 (N6,CK,PWRUP_1V8,D5,N6,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_LPF <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LPF(VLPFZ,AVSS,VLPF);
input logic AVSS;
input logic VLPFZ;
input logic VLPF;
SUNTR_RPPO8 xa10 (VN5,VLPF,AVSS);
SUNTR_RPPO8 xa20 (VN4,VN5,AVSS);
SUNTR_RPPO8 xa30 (VN3,VN4,AVSS);
SUNTR_RPPO8 xa40 (VN2,VN3,AVSS);
SUNTR_RPPO8 xa50 (VLPFZ,VN2,AVSS);
CAP_LPF xb10 (VLPF,AVSS);
CAP_LPF xb20 (VLPF,AVSS);
CAP_LPF xb21 (VLPF,AVSS);
CAP_LPF xb30 (VLPFZ,AVSS);
CAP_LPF xb31 (VLPFZ,AVSS);
CAP_LPF xb32 (VLPFZ,AVSS);
CAP_LPF xb33 (VLPFZ,AVSS);
CAP_LPF xb34 (VLPFZ,AVSS);
CAP_LPF xb35 (VLPFZ,AVSS);
CAP_LPF xb36 (VLPFZ,AVSS);
CAP_LPF xb37 (VLPFZ,AVSS);
CAP_LPF xb38 (VLPFZ,AVSS);
CAP_LPF xb39 (VLPFZ,AVSS);
CAP_LPF xb310 (VLPFZ,AVSS);
CAP_LPF xb311 (VLPFZ,AVSS);
CAP_LPF xb312 (VLPFZ,AVSS);
CAP_LPF xb313 (VLPFZ,AVSS);
CAP_LPF xb314 (VLPFZ,AVSS);
CAP_LPF xb315 (VLPFZ,AVSS);
CAP_LPF xb316 (VLPFZ,AVSS);
CAP_LPF xb317 (VLPFZ,AVSS);
CAP_LPF xb318 (VLPFZ,AVSS);
CAP_LPF xb319 (VLPFZ,AVSS);
CAP_LPF xb320 (VLPFZ,AVSS);
CAP_LPF xb321 (VLPFZ,AVSS);
CAP_LPF xb322 (VLPFZ,AVSS);
CAP_LPF xb323 (VLPFZ,AVSS);
CAP_LPF xb324 (VLPFZ,AVSS);
CAP_LPF xb325 (VLPFZ,AVSS);
CAP_LPF xb326 (VLPFZ,AVSS);
CAP_LPF xb327 (VLPFZ,AVSS);
CAP_LPF xb328 (VLPFZ,AVSS);
CAP_LPF xb329 (VLPFZ,AVSS);
CAP_LPF xb330 (VLPFZ,AVSS);
CAP_LPF xb331 (VLPFZ,AVSS);
CAP_LPF xb332 (VLPFZ,AVSS);
CAP_LPF xb333 (VLPFZ,AVSS);
CAP_LPF xb334 (VLPFZ,AVSS);
CAP_LPF xb335 (VLPFZ,AVSS);
CAP_LPF xb336 (VLPFZ,AVSS);
CAP_LPF xb337 (VLPFZ,AVSS);
CAP_LPF xb338 (VLPFZ,AVSS);
CAP_LPF xb339 (VLPFZ,AVSS);
CAP_LPF xb340 (VLPFZ,AVSS);
CAP_LPF xb341 (VLPFZ,AVSS);
CAP_LPF xb342 (VLPFZ,AVSS);
CAP_LPF xb343 (VLPFZ,AVSS);
CAP_LPF xb344 (VLPFZ,AVSS);
CAP_LPF xb345 (VLPFZ,AVSS);
CAP_LPF xb346 (VLPFZ,AVSS);
CAP_LPF xb347 (VLPFZ,AVSS);
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
// SUN_PLL_KICK <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_KICK(AVDD,KICK,KICK_N,PWRUP_1V8,AVSS,PWRUP_1V8_N);
input logic AVSS;
input logic AVDD;
input logic KICK;
input logic KICK_N;
input logic PWRUP_1V8;
input logic PWRUP_1V8_N;
SUNTR_TAPCELLB_CV xa1a0 (AVDD,AVSS);
SUNTR_IVX1_CV xa1b0 (PWRUP_1V8,PWRUP_1V8_N,AVDD,AVSS);
SUNTR_IVX1_CV xa1c0 (PWRUP_1V8_N,N1,AVDD,AVSS);
SUNTR_DCAPX1_CV xa1capd0 (AVSS,N1);
SUNTR_IVX1_CV xa20 (N1,N2,AVDD,AVSS);
SUNTR_IVX1_CV xa3a0 (N2,N3,AVDD,AVSS);
SUNTR_DCAPX1_CV xa3capb0 (AVSS,N3);
SUNTR_IVX1_CV xa40 (N3,N4,AVDD,AVSS);
SUNTR_IVX1_CV xa5a0 (N4,N5,AVDD,AVSS);
SUNTR_DCAPX1_CV xa5capb0 (AVSS,N5);
SUNTR_IVX1_CV xa60 (N5,N6,AVDD,AVSS);
SUNTR_IVX1_CV xa70 (N6,N7,AVDD,AVSS);
SUNTR_NRX1_CV xa80 (PWRUP_1V8_N,N7,KICK,AVDD,AVSS);
SUNTR_IVX1_CV xa90 (KICK,KICK_N,AVDD,AVSS);
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
SUNTR_IVX1_CV xa40 (CKDWN,NC1,AVDD,AVSS);
SUNTR_IVX1_CV xa50 (CKUP,CK,AVDD,AVSS);
SUNTR_TAPCELLB_CV xa60 (AVDD,AVSS);
SUNTRB_NDX1_CV xb10 (PWRUP_1V8,N_0,NI,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_00 (NI,N_7,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_10 (N_7,N_6,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_20 (N_6,N_5,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_30 (N_5,N_4,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_40 (N_4,N_3,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_50 (N_3,N_2,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_60 (N_2,N_1,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_70 (N_1,N_0,AVDD,AVSS,VDD_ROSC,AVSS);
SUNTRB_TAPCELLBAVSS_CV xb30 (AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL(AVDD,AVSS,PWRUP_1V8,CK_REF,CK,IBPSR_1U);
input logic AVSS;
input logic AVDD;
SUN_PLL_PFD xaa0 (AVDD,CP_UP_N,CK_REF,CP_DOWN,CK_FB,AVSS);
SUN_PLL_CP xaa1 (AVDD,CP_UP_N,VLPF,CP_DOWN,IBPSR_1U,AVSS,VLPFZ,PWRUP_1V8,KICK);
SUN_PLL_KICK xaa3 (AVDD,KICK,net1,PWRUP_1V8,AVSS,PWRUP_1V8_N);
SUN_PLL_BUF xaa4 (AVDD,VDD_ROSC,VLPF,VDD_ROSC,IBPSR_1U,AVSS);
SUN_PLL_ROSC xaa5 (AVDD,CK,VDD_ROSC,PWRUP_1V8,AVSS);
SUN_PLL_DIVN xaa6 (AVDD,CK_FB,CK,PWRUP_1V8,AVSS);
SUN_PLL_LPF xbb0 (VLPFZ,AVSS,VLPF);
SUN_PLL_BIAS xbb1 (IBPSR_1U,PWRUP_1V8_N,AVSS);
endmodule
