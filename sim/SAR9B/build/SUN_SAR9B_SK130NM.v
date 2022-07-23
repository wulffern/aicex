
//-------------------------------------------------------------
// CAPBASE_LEFT_SIDE_PORT <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAPBASE_LEFT_SIDE_PORT(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// RM1 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module RM1(A,B);
input logic A;
input logic B;
endmodule

//-------------------------------------------------------------
// RM4 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module RM4(A,B);
input logic A;
input logic B;
endmodule

//-------------------------------------------------------------
// CAP_BSSW_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAP_BSSW_CV(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// CAP_BSSW5_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAP_BSSW5_CV(A,B);
input logic A;
input logic B;
CAP_BSSW_CV XCAPB0 (A,B);
CAP_BSSW_CV XCAPB1 (A,B);
CAP_BSSW_CV XCAPB2 (A,B);
CAP_BSSW_CV XCAPB3 (A,B);
CAP_BSSW_CV XCAPB4 (A,B);
endmodule

//-------------------------------------------------------------
// DMY_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module DMY_CV();
endmodule

//-------------------------------------------------------------
// TIEH_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TIEH_CV(Y,BULKP,BULKN,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TIEL_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TIEL_CV(Y,BULKP,BULKN,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX2_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX4_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX8_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// BFX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module BFX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NRX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NRX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NDX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NDX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// ORX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ORX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX2_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX2_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ORX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX4_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX4_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX2_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX2_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX4_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX4_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX8_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
IVX8_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// IVTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVTRIX1_CV(A,C,CN,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NDTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NDTRIX1_CV(A,C,CN,RN,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic RN;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// DFRNQNX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module DFRNQNX1_CV(D,CK,RN,Q,QN,BULKP,BULKN,AVDD,AVSS);
input logic D;
input logic CK;
input logic Q;
input logic QN;
input logic RN;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA0 (BULKP,BULKN);
NDX1_CV XA1 (CK,RN,CKN,BULKP,BULKN,AVDD,AVSS);
IVX1_CV XA2 (CKN,CKB,BULKP,BULKN,AVDD,AVSS);
IVTRIX1_CV XA3 (D,CKN,CKB,A0,BULKP,BULKN,AVDD,AVSS);
IVTRIX1_CV XA4 (A1,CKB,CKN,A0,BULKP,BULKN,AVDD,AVSS);
IVX1_CV XA5 (A0,A1,BULKP,BULKN,AVDD,AVSS);
IVTRIX1_CV XA6 (A1,CKB,CKN,QN,BULKP,BULKN,AVDD,AVSS);
NDTRIX1_CV XA7 (Q,CKN,CKB,RN,QN,BULKP,BULKN,AVDD,AVSS);
IVX1_CV XA8 (QN,Q,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SCX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SCX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SWX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SWX2_CV(A,Y,VREF,AVSS,BULKP,BULKN);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic VREF;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SWX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SWX4_CV(A,Y,VREF,AVSS,BULKP,BULKN);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TGPD_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TGPD_CV(C,A,B,BULKP,BULKN,AVDD,AVSS);
input logic C;
input logic B;
input logic A;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TAPCELLB_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TAPCELLB_CV(AVDD,AVSS);
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SAREMX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SAREMX1_CV(A,B,EN,ENO,RST_N,BULKP,BULKN,AVDD,AVSS);
input logic BULKP;
input logic BULKN;
input logic A;
input logic B;
input logic RST_N;
input logic EN;
input logic ENO;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SARLTX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARLTX1_CV(A,CHL,RST_N,EN,LCK_N,BULKP,BULKN,AVDD,AVSS);
input logic BULKP;
input logic BULKN;
input logic A;
input logic RST_N;
input logic EN;
input logic LCK_N;
input logic CHL;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SARCEX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARCEX1_CV(A,B,Y,RST,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic RST;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SARCMPHX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARCMPHX1_CV(CI,CK,CO,VMR,N1,N2,BULKP,BULKN,AVDD,AVSS);
input logic BULKP;
input logic BULKN;
input logic N1;
input logic N2;
input logic CI;
input logic CK;
input logic CO;
input logic VMR;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SARKICKHX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARKICKHX1_CV(CI,CK,CKN,BULKP,BULKN,AVDD,AVSS);
input logic BULKP;
input logic BULKN;
input logic CK;
input logic CKN;
input logic CI;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TEST_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TEST_CV(A,Y,AVDD,AVSS);
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA5 (AVDD,AVSS);
TIVX1_CV XA2 (A,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SARBSSWCTRL_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARBSSWCTRL_CV(C,GN,GNG,TIE_H,BULKP,BULKN,AVDD,AVSS);
input logic BULKP;
input logic BULKN;
input logic GNG;
input logic TIE_H;
input logic C;
input logic GN;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// CAP32C_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CAP32C_CV(C1A,C1B,C2,C4,C8,C16,CTOP,AVSS);
input logic CTOP;
input logic AVSS;
input logic C1A;
input logic C1B;
input logic C2;
input logic C4;
input logic C8;
input logic C16;
RM1 XRES1A (C1A,NC1);
RM1 XRES1B (C1B,NC2);
RM1 XRES2 (C2,NC3);
RM1 XRES4 (C4,NC4);
RM1 XRES8 (C8,NC5);
RM1 XRES16 (C16,NC6);
endmodule

//-------------------------------------------------------------
// SARCMPX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARCMPX1_CV(CPI,CNI,CPO,CNO,CK_CMP,CK_SAMPLE,DONE,AVDD,AVSS);
input logic CK_SAMPLE;
input logic CK_CMP;
input logic DONE;
input logic CNO;
input logic CPO;
input logic CPI;
input logic CNI;
input logic AVDD;
input logic AVSS;
DMY_CV XA0a ();
TAPCELLB_CV XA0 (AVDD,AVSS);
SARKICKHX1_CV XA1 (CPI,CK_B,CK_N,AVDD,AVSS,AVDD,AVSS);
SARCMPHX1_CV XA2 (CPI,CK_B,CNO_I,CPO_I,N1,NC1,AVDD,AVSS,AVDD,AVSS);
IVX4_CV XA2a (CPO_I,CPO,AVDD,AVSS,AVDD,AVSS);
IVX4_CV XA3a (CNO_I,CNO,AVDD,AVSS,AVDD,AVSS);
SARCMPHX1_CV XA3 (CNI,CK_B,CPO_I,CNO_I,N1,NC2,AVDD,AVSS,AVDD,AVSS);
SARKICKHX1_CV XA4 (CNI,CK_B,CK_N,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA9 (CK_N,CK_B,AVDD,AVSS,AVDD,AVSS);
NDX1_CV XA10 (DONE_N,CK_A,CK_N,AVDD,AVSS,AVDD,AVSS);
NRX1_CV XA11 (CK_SAMPLE,DONE,DONE_N,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA12 (CK_CMP,CK_A,AVDD,AVSS,AVDD,AVSS);
TAPCELLB_CV XA13 (AVDD,AVSS);
DMY_CV XA14 ();
endmodule

//-------------------------------------------------------------
// SARBSSW_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARBSSW_CV(VI,CK,CKN,TIE_L,VO1,VO2,AVDD,AVSS);
input logic VI;
input logic TIE_L;
input logic CK;
input logic CKN;
input logic VO1;
input logic VO2;
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA5b (AVDD,AVSS);
IVX1_CV XA0 (CK,CKN,AVDD,AVSS,AVDD,AVSS);
TGPD_CV XA3 (CKN,VI,VS,AVDD,AVSS,AVDD,AVSS);
SARBSSWCTRL_CV XA4 (CKN,GN,GNG,TIE_H,AVDD,AVSS,AVDD,AVSS);
TIEH_CV XA1 (TIE_H,AVDD,AVSS,AVDD,AVSS);
TAPCELLB_CV XA7 (AVDD,AVSS);
TIEL_CV XA2 (TIE_L,AVDD,AVSS,AVDD,AVSS);
TAPCELLB_CV XA5 (AVDD,AVSS);
CAP_BSSW5_CV XCAPB1 (GNG,VS);
endmodule

//-------------------------------------------------------------
// SARMRYX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARMRYX1_CV(CMP_OP,CMP_ON,EN,RST_N,ENO,CHL_OP,CHL_ON,AVDD,AVSS);
input logic CMP_OP;
input logic RST_N;
input logic EN;
input logic CMP_ON;
input logic CHL_OP;
input logic CHL_ON;
input logic ENO;
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA0 (AVDD,AVSS);
SAREMX1_CV XA1 (CMP_OP,CMP_ON,EN,ENO,RST_N,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA2 (ENO,LCK_N,AVDD,AVSS,AVDD,AVSS);
SARLTX1_CV XA4 (CMP_OP,CHL_OP,RST_N,EN,LCK_N,AVDD,AVSS,AVDD,AVSS);
SARLTX1_CV XA5 (CMP_ON,CHL_ON,RST_N,EN,LCK_N,AVDD,AVSS,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SARDIGEX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARDIGEX2_CV(CMP_OP,CMP_ON,EN,RST_N,ENO,DONE,CP0,CP1,CN0,CN1,CEIN,CEO,CKS,VREF,AVDD,AVSS);
input logic CMP_OP;
input logic RST_N;
input logic EN;
input logic CMP_ON;
input logic ENO;
input logic CN1;
input logic CP1;
input logic CP0;
input logic CN0;
input logic CEIN;
input logic CEO;
input logic CKS;
input logic DONE;
input logic VREF;
input logic AVDD;
input logic AVSS;
DMY_CV XA0a ();
SARMRYX1_CV XA1 (CMP_OP,CMP_ON,EN,RST_N,ENO,CHL_OP,CHL_ON,AVDD,AVSS);
SWX2_CV XA2 (CHL_ON,CN1,VREF,AVSS,AVDD,AVSS);
SWX2_CV XA3 (CN1,CP1,VREF,AVSS,AVDD,AVSS);
SWX2_CV XA4 (CHL_OP,CP0,VREF,AVSS,AVDD,AVSS);
SWX2_CV XA5 (CP0,CN0,VREF,AVSS,AVDD,AVSS);
SARCEX1_CV XA6 (CN0,CP1,CE,CKS,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA7 (ENO,ENO_N,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA8 (ENO_N,DONE,AVDD,AVSS,AVDD,AVSS);
NDX1_CV XA9 (ENO_N,CE,CE1,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA10 (CE1,CE1_N,AVDD,AVSS,AVDD,AVSS);
NRX1_CV XA11 (CE1_N,CEIN,CEO1,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA12 (CEO1,CEO,AVDD,AVSS,AVDD,AVSS);
TAPCELLB_CV XA13 (AVDD,AVSS);
DMY_CV XA14 ();
endmodule

//-------------------------------------------------------------
// SARDIGEX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SARDIGEX4_CV(CMP_OP,CMP_ON,EN,RST_N,ENO,DONE,CP0,CP1,CN0,CN1,CEIN,CEO,CKS,VREF,AVDD,AVSS);
input logic CMP_OP;
input logic RST_N;
input logic EN;
input logic CMP_ON;
input logic ENO;
input logic CN1;
input logic CP1;
input logic CP0;
input logic CN0;
input logic CEIN;
input logic CEO;
input logic CKS;
input logic DONE;
input logic VREF;
input logic AVDD;
input logic AVSS;
DMY_CV XA0a ();
SARMRYX1_CV XA1 (CMP_OP,CMP_ON,EN,RST_N,ENO,CHL_OP,CHL_ON,AVDD,AVSS);
SWX4_CV XA2 (CHL_ON,CN1,VREF,AVSS,AVDD,AVSS);
SWX4_CV XA3 (CN1,CP1,VREF,AVSS,AVDD,AVSS);
SWX4_CV XA4 (CHL_OP,CP0,VREF,AVSS,AVDD,AVSS);
SWX4_CV XA5 (CP0,CN0,VREF,AVSS,AVDD,AVSS);
SARCEX1_CV XA6 (CN0,CP1,CE,CKS,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA7 (ENO,ENO_N,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA8 (ENO_N,DONE,AVDD,AVSS,AVDD,AVSS);
NDX1_CV XA9 (ENO_N,CE,CE1,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA10 (CE1,CE1_N,AVDD,AVSS,AVDD,AVSS);
NRX1_CV XA11 (CE1_N,CEIN,CEO1,AVDD,AVSS,AVDD,AVSS);
IVX1_CV XA12 (CEO1,CEO,AVDD,AVSS,AVDD,AVSS);
TAPCELLB_CV XA13 (AVDD,AVSS);
DMY_CV XA14 ();
endmodule

//-------------------------------------------------------------
// CDAC8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module CDAC8_CV(CP<11>,CP<10>,CP<9>,CP<8>,CP<7>,CP<6>,CP<5>,CP<4>,CP<3>,CP<2>,CP<1>,CP<0>,CTOP,AVSS);
input logic CP<11>;
input logic CP<10>;
input logic CP<9>;
input logic CP<8>;
input logic CP<7>;
input logic CP<6>;
input logic CP<5>;
input logic CP<4>;
input logic CP<3>;
input logic CP<2>;
input logic CP<1>;
input logic CP<0>;
input logic AVSS;
input logic CTOP;
CAP32C_CV XC1 (CP<10>,CP<10>,CP<10>,CP<10>,CP<10>,CP<10>,CTOP,AVSS);
CAP32C_CV XC64a<0> (CP<8>,CP<8>,CP<8>,CP<8>,CP<8>,CP<8>,CTOP,AVSS);
CAP32C_CV XC32a<0> (AVSS,CP<0>,CP<1>,CP<2>,CP<3>,CP<7>,CTOP,AVSS);
CAP32C_CV XC128a<1> (CP<11>,CP<11>,CP<11>,CP<11>,CP<11>,CP<11>,CTOP,AVSS);
CAP32C_CV XC128b<2> (CP<10>,CP<10>,CP<10>,CP<10>,CP<10>,CP<10>,CTOP,AVSS);
CAP32C_CV X16ab (CP<5>,CP<5>,CP<5>,CP<5>,CP<4>,CP<6>,CTOP,AVSS);
CAP32C_CV XC64b<1> (CP<9>,CP<9>,CP<9>,CP<9>,CP<9>,CP<9>,CTOP,AVSS);
CAP32C_CV XC0 (CP<11>,CP<11>,CP<11>,CP<11>,CP<11>,CP<11>,CTOP,AVSS);
endmodule

//-------------------------------------------------------------
// SAR9B_CV_NOROUTE <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SAR9B_CV_NOROUTE(SAR_IP,SAR_IN,SARN,SARP,DONE,D<8>,D<7>,D<6>,D<5>,D<4>,D<3>,D<2>,D<1>,D<0>,EN,CK_SAMPLE,CK_SAMPLE_BSSW,VREF,AVDD,AVSS);
input logic D<8>;
input logic D<3>;
input logic D<1>;
input logic D<4>;
input logic D<2>;
input logic D<6>;
input logic D<7>;
input logic D<5>;
input logic SAR_IP;
input logic SAR_IN;
input logic SARN;
input logic SARP;
input logic DONE;
input logic D<0>;
input logic EN;
input logic CK_SAMPLE;
input logic CK_SAMPLE_BSSW;
input logic VREF;
input logic AVDD;
input logic AVSS;
SARBSSW_CV XB1 (SAR_IP,CK_SAMPLE_BSSW,NCCA,CEIN,SARP,SARN,AVDD,AVSS);
SARBSSW_CV XB2 (SAR_IN,CK_SAMPLE_BSSW,NCCB,CEIN,SARN,SARP,AVDD,AVSS);
CDAC8_CV XDAC1 (CP<11>,CP<10>,D<7>,CP<8>,D<6>,CP<6>,D<5>,CP<4>,D<4>,D<3>,D<2>,D<1>,SARP,AVSS);
CDAC8_CV XDAC2 (D<8>,CN<10>,CN<9>,CN<8>,CN<7>,CN<6>,CN<5>,CN<4>,CN<3>,CN<2>,CN<1>,CN<0>,SARN,AVSS);
SARDIGEX4_CV XA0 (CMP_OP,CMP_ON,EN,EN,ENO0,DONE0,CP<10>,CP<11>,CN<10>,D<8>,CEIN,CEO0,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA1 (CMP_OP,CMP_ON,ENO0,EN,ENO1,DONE1,CP<8>,D<7>,CN<8>,CN<9>,CEO0,CEO1,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA2 (CMP_OP,CMP_ON,ENO1,EN,ENO2,DONE2,CP<6>,D<6>,CN<6>,CN<7>,CEO1,CEO2,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA3 (CMP_OP,CMP_ON,ENO2,EN,ENO3,DONE3,CP<4>,D<5>,CN<4>,CN<5>,CEO2,CEO3,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA4 (CMP_OP,CMP_ON,ENO3,EN,ENO4,DONE4,NC2A,D<4>,CN<3>,NC2B,CEO3,CEO4,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA5 (CMP_OP,CMP_ON,ENO4,EN,ENO5,DONE5,NC3A,D<3>,CN<2>,NC3B,CEO4,CEO5,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA6 (CMP_OP,CMP_ON,ENO5,EN,ENO6,DONE6,NC4A,D<2>,CN<1>,NC4B,CEO5,CEO6,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA7 (CMP_OP,CMP_ON,ENO6,EN,ENO7,DONE7,NC5A,D<1>,CN<0>,NC5B,CEO6,CEO7,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA8 (CMP_OP,CMP_ON,ENO7,EN,ENO8,DONE,NC6A,D<0>,NC6C,NC6B,CEO7,CK_CMP,CK_SAMPLE,VREF,AVDD,AVSS);
SARCMPX1_CV XA20 (SARP,SARN,CMP_OP,CMP_ON,CK_CMP,CK_SAMPLE,DONE,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SAR9B_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SAR9B_CV(SAR_IP,SAR_IN,SARN,SARP,DONE,D<8>,D<7>,D<6>,D<5>,D<4>,D<3>,D<2>,D<1>,D<0>,EN,CK_SAMPLE,CK_SAMPLE_BSSW,VREF,AVDD,AVSS);
input logic D<8>;
input logic D<3>;
input logic D<1>;
input logic D<4>;
input logic D<2>;
input logic D<6>;
input logic D<7>;
input logic D<5>;
input logic AVSS;
input logic AVDD;
input logic VREF;
input logic CK_SAMPLE_BSSW;
input logic DONE;
input logic SAR_IP;
input logic SAR_IN;
input logic CK_SAMPLE;
input logic EN;
input logic SARN;
input logic SARP;
input logic D<0>;
SARBSSW_CV XB1 (SAR_IP,CK_SAMPLE_BSSW,NCCA,CEIN,SARP,SARN,AVDD,AVSS);
SARBSSW_CV XB2 (SAR_IN,CK_SAMPLE_BSSW,NCCB,CEIN,SARN,SARP,AVDD,AVSS);
CDAC8_CV XDAC1 (CP<11>,CP<10>,D<7>,CP<8>,D<6>,CP<6>,D<5>,CP<4>,D<4>,D<3>,D<2>,D<1>,SARP,AVSS);
CDAC8_CV XDAC2 (D<8>,CN<10>,CN<9>,CN<8>,CN<7>,CN<6>,CN<5>,CN<4>,CN<3>,CN<2>,CN<1>,CN<0>,SARN,AVSS);
SARDIGEX4_CV XA0 (CMP_OP,CMP_ON,EN,EN,ENO0,DONE0,CP<10>,CP<11>,CN<10>,D<8>,CEIN,CEO0,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA1 (CMP_OP,CMP_ON,ENO0,EN,ENO1,DONE1,CP<8>,D<7>,CN<8>,CN<9>,CEO0,CEO1,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA2 (CMP_OP,CMP_ON,ENO1,EN,ENO2,DONE2,CP<6>,D<6>,CN<6>,CN<7>,CEO1,CEO2,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA3 (CMP_OP,CMP_ON,ENO2,EN,ENO3,DONE3,CP<4>,D<5>,CN<4>,CN<5>,CEO2,CEO3,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA4 (CMP_OP,CMP_ON,ENO3,EN,ENO4,DONE4,NC2A,D<4>,CN<3>,NC2B,CEO3,CEO4,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA5 (CMP_OP,CMP_ON,ENO4,EN,ENO5,DONE5,NC3A,D<3>,CN<2>,NC3B,CEO4,CEO5,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA6 (CMP_OP,CMP_ON,ENO5,EN,ENO6,DONE6,NC4A,D<2>,CN<1>,NC4B,CEO5,CEO6,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA7 (CMP_OP,CMP_ON,ENO6,EN,ENO7,DONE7,NC5A,D<1>,CN<0>,NC5B,CEO6,CEO7,CK_SAMPLE,VREF,AVDD,AVSS);
SARDIGEX4_CV XA8 (CMP_OP,CMP_ON,ENO7,EN,ENO8,DONE,NC6A,D<0>,NC6C,NC6B,CEO7,CK_CMP,CK_SAMPLE,VREF,AVDD,AVSS);
SARCMPX1_CV XA20 (SARP,SARN,CMP_OP,CMP_ON,CK_CMP,CK_SAMPLE,DONE,AVDD,AVSS);
endmodule
