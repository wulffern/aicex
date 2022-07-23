
//-------------------------------------------------------------
// TAPCELLB_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TAPCELLB_CV(AVDD,AVSS);
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TIEH_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TIEH_CV(Y,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TIEL_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TIEL_CV(Y,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX2_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX4_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// IVX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVX8_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// BFX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module BFX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NRX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NRX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NDX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NDX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// ORX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ORX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX2_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ORX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ORX4_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX2_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX4_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// ANX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module ANX8_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// IVTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module IVTRIX1_CV(A,C,CN,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NDTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NDTRIX1_CV(A,C,CN,RN,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic RN;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// NRTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module NRTRIX1_CV(A,C,CN,B,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// DFRNQNX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module DFRNQNX1_CV(D,CK,RN,Q,QN,AVDD,AVSS);
input logic D;
input logic CK;
input logic Q;
input logic QN;
input logic RN;
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA0 (AVDD,AVSS);
NDX1_CV XA1 (CK,RN,CKN,AVDD,AVSS);
IVX1_CV XA2 (CKN,CKB,AVDD,AVSS);
IVTRIX1_CV XA3 (D,CKN,CKB,A0,AVDD,AVSS);
IVTRIX1_CV XA4 (A1,CKB,CKN,A0,AVDD,AVSS);
IVX1_CV XA5 (A0,A1,AVDD,AVSS);
IVTRIX1_CV XA6 (A1,CKB,CKN,QN,AVDD,AVSS);
NDTRIX1_CV XA7 (Q,CKN,CKB,RN,QN,AVDD,AVSS);
IVX1_CV XA8 (QN,Q,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SCX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SCX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SWX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SWX2_CV(A,Y,VREF,AVDD,AVSS);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// SWX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SWX4_CV(A,Y,VREF,AVDD,AVSS);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// TGPD_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module TGPD_CV(C,A,B,AVDD,AVSS);
input logic C;
input logic B;
input logic A;
input logic AVDD;
input logic AVSS;
endmodule

//-------------------------------------------------------------
// DFTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module DFTRIX1_CV(D,CK,C,CN,Y,AVDD,AVSS);
input logic D;
input logic C;
input logic CK;
input logic CN;
input logic Y;
input logic AVDD;
input logic AVSS;
TAPCELLB_CV XA3 (AVDD,AVSS);
DFRNQNX1_CV XA2 (D,CK,C,NC,QN,AVDD,AVSS);
IVTRIX1_CV XA0 (QN,C,CN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// RG12TRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module RG12TRIX1_CV(D<11>,D<10>,D<9>,D<8>,D<7>,D<6>,D<5>,D<4>,D<3>,D<2>,D<1>,D<0>,CK,C,CN,Y<11>,Y<10>,Y<9>,Y<8>,Y<7>,Y<6>,Y<5>,Y<4>,Y<3>,Y<2>,Y<1>,Y<0>,AVDD,AVSS);
input logic AVSS;
input logic AVDD;
input logic CK;
input logic C;
input logic CN;
input logic Y<11>;
input logic Y<10>;
input logic Y<9>;
input logic Y<8>;
input logic Y<7>;
input logic Y<6>;
input logic Y<5>;
input logic Y<4>;
input logic Y<3>;
input logic Y<2>;
input logic Y<1>;
input logic Y<0>;
input logic D<11>;
input logic D<10>;
input logic D<9>;
input logic D<8>;
input logic D<7>;
input logic D<6>;
input logic D<5>;
input logic D<4>;
input logic D<3>;
input logic D<2>;
input logic D<1>;
input logic D<0>;
DFTRIX1_CV XA0 (D<11>,CK,C,CN,Y<11>,AVDD,AVSS);
DFTRIX1_CV XB1 (D<10>,CK,C,CN,Y<10>,AVDD,AVSS);
DFTRIX1_CV XC2 (D<9>,CK,C,CN,Y<9>,AVDD,AVSS);
DFTRIX1_CV XD3 (D<8>,CK,C,CN,Y<8>,AVDD,AVSS);
DFTRIX1_CV XE4 (D<7>,CK,C,CN,Y<7>,AVDD,AVSS);
DFTRIX1_CV XF5 (D<6>,CK,C,CN,Y<6>,AVDD,AVSS);
DFTRIX1_CV XG6 (D<5>,CK,C,CN,Y<5>,AVDD,AVSS);
DFTRIX1_CV XH7 (D<4>,CK,C,CN,Y<4>,AVDD,AVSS);
DFTRIX1_CV XI8 (D<3>,CK,C,CN,Y<3>,AVDD,AVSS);
DFTRIX1_CV XJ9 (D<2>,CK,C,CN,Y<2>,AVDD,AVSS);
DFTRIX1_CV XK10 (D<1>,CK,C,CN,Y<1>,AVDD,AVSS);
DFTRIX1_CV XL11 (D<0>,CK,C,CN,Y<0>,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUN_TR <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_TR(AVDD,AVSS);
input logic AVSS;
input logic AVDD;
TAPCELLB_CV XA0 (AVDD,AVSS);
TIEH_CV XA1 (Y1,AVDD,AVSS);
TIEL_CV XA2 (Y2,AVDD,AVSS);
TAPCELLB_CV XB0 (AVDD,AVSS);
IVX1_CV XB3 (A3,Y3,AVDD,AVSS);
IVX2_CV XB4 (A4,Y4,AVDD,AVSS);
IVX4_CV XB5 (A5,Y5,AVDD,AVSS);
IVX8_CV XB6 (A6,Y6,AVDD,AVSS);
TAPCELLB_CV XC0 (AVDD,AVSS);
BFX1_CV XC7 (A7,Y7,AVDD,AVSS);
TAPCELLB_CV XD0 (AVDD,AVSS);
NRX1_CV XD8 (A8,B8,Y8,AVDD,AVSS);
NDX1_CV XD9 (A9,B9,Y9,AVDD,AVSS);
ORX1_CV XD10 (A10,B10,Y10,AVDD,AVSS);
ANX1_CV XD11 (A11,B11,Y11,AVDD,AVSS);
TAPCELLB_CV XE0 (AVDD,AVSS);
SCX1_CV XE12 (A12,Y12,AVDD,AVSS);
TAPCELLB_CV XF0 (AVDD,AVSS);
SWX2_CV XF13 (A13,Y13,V13,AVDD,AVSS);
SWX4_CV XF14 (A14,Y14,V14,AVDD,AVSS);
TGPD_CV XF15 (A15,Y15,V15,AVDD,AVSS);
endmodule
