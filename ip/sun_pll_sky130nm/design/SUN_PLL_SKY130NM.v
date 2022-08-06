
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
SUNTR_NCHDL xb1_0 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb1_1 (Y,AN,AVSS,AVSS);
SUNTR_NCHDL xb2_0 (YN,A,AVSS,AVSS);
SUNTR_NCHDL xb2_1 (YN,A,AVSS,AVSS);
SUNTR_PCHDL xc1a (net2,YN,AVDD,AVDD);
SUNTR_PCHDL xc1b (Y,YN,net2,AVDD);
SUNTR_PCHDL xc2a (net1,Y,AVDD,AVDD);
SUNTR_PCHDL xc2b (YN,Y,net1,AVDD);
endmodule

//-------------------------------------------------------------
// SUN_PLL_ROSC <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_ROSC(PWRUP_1V8,VDD_ROSC,AVSS,VDD_1V8,CK);
input logic AVSS;
input logic PWRUP_1V8;
input logic VDD_ROSC;
input logic VDD_1V8;
input logic CK;
SUN_PLL_LSCORE xa3 (N_2,N_1,CKUP,CKDWN,VDD_1V8,AVSS);
SUNTR_IVX1_CV xa4 (CKUP,CK,VDD_1V8,AVSS);
SUNTR_IVX1_CV xa5 (CKDWN,NC1,VDD_1V8,AVSS);
SUNTR_TAPCELLB_CV xa6 (VDD_1V8,AVSS);
SUNTRB_NDX1_CV xb1 (PWRUP_1V8,N_0,NI,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_0 (NI,N_7,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_1 (N_7,N_6,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_2 (N_6,N_5,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_3 (N_5,N_4,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_4 (N_4,N_3,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_5 (N_3,N_2,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_6 (N_2,N_1,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_IVX1_CV xb2_7 (N_1,N_0,VDD_1V8,AVSS,VDD_ROSC,AVSS);
SUNTRB_TAPCELLBAVSS_CV xb3 (VDD_1V8,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_PFD <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_PFD(CK_FB,CK_REF,CP_UP,CP_DOWN,AVDD,AVSS);
input logic CK_FB;
input logic CK_REF;
input logic CP_UP;
input logic CP_DOWN;
input logic AVDD;
input logic AVSS;
SUNTR_TAPCELLB_CV xa0 (AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa1 (CFB,CK_REF,CP_UP_N,AVDD,AVSS);
SUNTR_IVX1_CV xa2 (CP_UP_N,CP_UP,AVDD,AVSS);
SUNTR_NRX1_CV xa3 (CP_UP_N,CP_DOWN_N,CFB,AVDD,AVSS);
SUNTR_DFTSPCX1_CV xa5 (CFB,CK_FB,CP_DOWN_N,AVDD,AVSS);
SUNTR_IVX1_CV xa6 (CP_DOWN_N,CP_DOWN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_PLL_DIVN <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_DIVN(PWRUP_1V8,CK,AVDD,AVSS,CK_FB);
input logic PWRUP_1V8;
input logic AVSS;
input logic AVDD;
input logic CK;
input logic CK_FB;
SUNTR_DFRNQNX1_CV xa (N0,D0,PWRUP_1V8,CK_FB,N0,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xb (N1,D1,PWRUP_1V8,D0,N1,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xc (N2,D2,PWRUP_1V8,D1,N2,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xd (N3,D3,PWRUP_1V8,D2,N3,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xe (N4,D4,PWRUP_1V8,D3,N4,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xf (N5,D5,PWRUP_1V8,D4,N5,AVDD,AVSS);
SUNTR_DFRNQNX1_CV xg (N6,CK,PWRUP_1V8,D5,N6,AVDD,AVSS);
endmodule
