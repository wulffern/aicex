
//-------------------------------------------------------------
// SUNTR_PCHDL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHDL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTR_PCHL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTR_NCHDL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHDL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTR_NCHL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTR_NCHDLR <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHDLR(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTR_DCAPX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_DCAPX1_CV(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUNTR_NCHDLCM <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHDLCM(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_NCHDL M0 (N0,G,S,B);
SUNTR_NCHDL M1 (N1,G,N0,B);
SUNTR_NCHDL M2 (N2,G,N1,B);
SUNTR_NCHDL M3 (N3,G,N2,B);
SUNTR_NCHDL M4 (N4,G,N3,B);
SUNTR_NCHDL M5 (N5,G,N4,B);
SUNTR_NCHDL M6 (N6,G,N5,B);
SUNTR_NCHDL M7 (N7,G,N6,B);
SUNTR_NCHDL M8 (D,G,N7,B);
endmodule

//-------------------------------------------------------------
// SUNTR_NCHLCM <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHLCM(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_NCHL M0 (N0,G,S,B);
SUNTR_NCHL M1 (N1,G,N0,B);
SUNTR_NCHL M2 (N2,G,N1,B);
SUNTR_NCHL M3 (N3,G,N2,B);
SUNTR_NCHL M6 (N6,G,N3,B);
SUNTR_NCHL M7 (N7,G,N6,B);
SUNTR_NCHL M8 (D,G,N7,B);
endmodule

//-------------------------------------------------------------
// SUNTR_PCHDLCM <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHDLCM(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_PCHDL M0 (N0,G,S,B);
SUNTR_PCHDL M7 (D,G,N0,B);
endmodule

//-------------------------------------------------------------
// SUNTR_PCHLCM <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHLCM(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_PCHL M0 (N0,G,S,B);
SUNTR_PCHL M7 (D,G,N0,B);
endmodule

//-------------------------------------------------------------
// SUNTR_NCHDLA <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHDLA(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_NCHDL M0 (D,G,S,B);
SUNTR_NCHDL M1 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_NCHLA <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHLA(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_NCHL M0 (D,G,S,B);
SUNTR_NCHL M1 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_PCHDLA <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHDLA(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_PCHDL M0 (D,G,S,B);
SUNTR_PCHDL M1 (S,G,D,B);
SUNTR_PCHDL M2 (D,G,S,B);
SUNTR_PCHDL M3 (S,G,D,B);
SUNTR_PCHDL M4 (D,G,S,B);
SUNTR_PCHDL M5 (S,G,D,B);
SUNTR_PCHDL M6 (D,G,S,B);
SUNTR_PCHDL M7 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_PCHLA <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHLA(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_PCHL M0 (D,G,S,B);
SUNTR_PCHL M1 (S,G,D,B);
SUNTR_PCHL M2 (D,G,S,B);
SUNTR_PCHL M3 (S,G,D,B);
SUNTR_PCHL M4 (D,G,S,B);
SUNTR_PCHL M5 (S,G,D,B);
SUNTR_PCHL M6 (D,G,S,B);
SUNTR_PCHL M7 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_NCHDLCM2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NCHDLCM2(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_NCHDLCM M0 (D,G,S,B);
SUNTR_NCHDLCM M1 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_PCHDLCM2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_PCHDLCM2(D,G,S,B);
input logic B;
input logic D;
input logic G;
input logic S;
SUNTR_PCHDLCM M0 (D,G,S,B);
SUNTR_PCHDLCM M1 (S,G,D,B);
endmodule

//-------------------------------------------------------------
// SUNTR_CPCHDLCM2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CPCHDLCM2(D,G,CG,S,CS,B);
input logic B;
input logic S;
input logic D;
input logic G;
input logic CG;
input logic CS;
SUNTR_PCHDLCM2 M0 (CS,G,S,B);
SUNTR_PCHDLA M1 (D,CG,CS,B);
endmodule

//-------------------------------------------------------------
// SUNTR_CNCHDLCM2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CNCHDLCM2(D,G,CG,S,CS,B);
input logic B;
input logic S;
input logic D;
input logic G;
input logic CG;
input logic CS;
SUNTR_NCHDLCM2 M0 (CS,G,S,B);
SUNTR_NCHDLA M1 (D,CG,CS,B);
endmodule

//-------------------------------------------------------------
// SUNTR_RES2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RES2(N,P,B);
input logic N;
input logic P;
endmodule

//-------------------------------------------------------------
// SUNTR_RES4 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RES4(N,P,B);
input logic N;
input logic P;
endmodule

//-------------------------------------------------------------
// SUNTR_RES8 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RES8(N,P,B);
input logic N;
input logic P;
endmodule

//-------------------------------------------------------------
// SUNTR_RES16 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RES16(N,P,B);
input logic N;
input logic P;
endmodule

//-------------------------------------------------------------
// SUNTR_RPPO2 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RPPO2(P,N,B);
input logic B;
input logic P;
input logic N;
SUNTR_RES2 XA1 (N,P,B);
endmodule

//-------------------------------------------------------------
// SUNTR_RPPO4 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RPPO4(P,N,B);
input logic B;
input logic P;
input logic N;
SUNTR_RES4 XA1 (N,P,B);
endmodule

//-------------------------------------------------------------
// SUNTR_RPPO8 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RPPO8(P,N,B);
input logic B;
input logic P;
input logic N;
SUNTR_RES8 XA1 (N,P,B);
endmodule

//-------------------------------------------------------------
// SUNTR_RPPO16 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RPPO16(P,N,B);
input logic B;
input logic P;
input logic N;
SUNTR_RES16 XA1 (N,P,B);
endmodule

//-------------------------------------------------------------
// SUNTR_TAPCELLB_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_TAPCELLB_CV(AVDD,AVSS);
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN1 (AVSS,AVSS,AVSS,AVSS);
SUNTR_PCHDL MP1 (AVDD,AVDD,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_TIEH_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_TIEH_CV(Y,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (A,A,AVSS,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_TIEL_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_TIEL_CV(Y,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_PCHDL MP0 (A,A,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_IVX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_IVX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_IVX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_IVX2_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,A,Y,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (AVDD,A,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_IVX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_IVX4_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,A,Y,AVSS);
SUNTR_NCHDL MN2 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN3 (AVSS,A,Y,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (AVDD,A,Y,AVDD);
SUNTR_PCHDL MP2 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP3 (AVDD,A,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_IVX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_IVX8_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,A,Y,AVSS);
SUNTR_NCHDL MN2 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN3 (AVSS,A,Y,AVSS);
SUNTR_NCHDL MN4 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN5 (AVSS,A,Y,AVSS);
SUNTR_NCHDL MN6 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN7 (AVSS,A,Y,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (AVDD,A,Y,AVDD);
SUNTR_PCHDL MP2 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP3 (AVDD,A,Y,AVDD);
SUNTR_PCHDL MP4 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP5 (AVDD,A,Y,AVDD);
SUNTR_PCHDL MP6 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP7 (AVDD,A,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_BFX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_BFX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (AVSS,A,B,AVSS);
SUNTR_NCHDL MN1 (Y,B,AVSS,AVSS);
SUNTR_PCHDL MP0 (AVDD,A,B,AVDD);
SUNTR_PCHDL MP1 (Y,B,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_NRX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NRX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,B,Y,AVSS);
SUNTR_PCHDL MP0 (N1,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (Y,B,N1,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_NDX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NDX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (N1,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (Y,B,N1,AVSS);
SUNTR_PCHDL MP0 (Y,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (AVDD,B,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_ORX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ORX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ORX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ORX2_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ORX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ORX4_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NRX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ANX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ANX1_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ANX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ANX2_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ANX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ANX4_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_ANX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_ANX8_CV(A,B,Y,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NDX1_CV XA1 (A,B,YN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (YN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_DFTSPCX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_DFTSPCX1_CV(D,CK,Q,AVDD,AVSS);
input logic D;
input logic CK;
input logic Q;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (N1,D,AVSS,AVSS);
SUNTR_NCHDL MN2 (N2,CK,Q,AVSS);
SUNTR_NCHDL MN1 (AVSS,N1,N2,AVSS);
SUNTR_PCHDL MP1 (N3,D,AVDD,AVDD);
SUNTR_PCHDL MP0 (N1,CK,N3,AVDD);
SUNTR_PCHDL MP2 (Q,N1,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_IVTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_IVTRIX1_CV(A,C,CN,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (N1,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (Y,C,N1,AVSS);
SUNTR_PCHDL MP0 (N2,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (Y,CN,N2,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_NDTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NDTRIX1_CV(A,C,CN,RN,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic RN;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN2 (N1,RN,AVSS,AVSS);
SUNTR_NCHDL MN0 (N2,A,N1,AVSS);
SUNTR_NCHDL MN1 (Y,C,N2,AVSS);
SUNTR_PCHDL MP2 (AVDD,RN,N2,AVDD);
SUNTR_PCHDL MP0 (N2,A,AVDD,AVDD);
SUNTR_PCHDL MP1 (Y,CN,N2,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_NRTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_NRTRIX1_CV(A,C,CN,B,Y,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic B;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN2 (N1,B,AVSS,AVSS);
SUNTR_NCHDL MN0 (AVSS,A,N1,AVSS);
SUNTR_NCHDL MN1 (N1,C,Y,AVSS);
SUNTR_PCHDL MP2 (N2,B,AVDD,AVDD);
SUNTR_PCHDL MP0 (AVDD,A,N2,AVDD);
SUNTR_PCHDL MP1 (N2,CN,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_DFRNQNX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_DFRNQNX1_CV(D,CK,RN,Q,QN,AVDD,AVSS);
input logic D;
input logic CK;
input logic Q;
input logic QN;
input logic AVDD;
input logic AVSS;
input logic RN;
SUNTR_TAPCELLB_CV XA0 (AVDD,AVSS);
SUNTR_NDX1_CV XA1 (CK,RN,CKN,AVDD,AVSS);
SUNTR_IVX1_CV XA2 (CKN,CKB,AVDD,AVSS);
SUNTR_IVTRIX1_CV XA3 (D,CKN,CKB,A0,AVDD,AVSS);
SUNTR_IVTRIX1_CV XA4 (A1,CKB,CKN,A0,AVDD,AVSS);
SUNTR_IVX1_CV XA5 (A0,A1,AVDD,AVSS);
SUNTR_IVTRIX1_CV XA6 (A1,CKB,CKN,QN,AVDD,AVSS);
SUNTR_NDTRIX1_CV XA7 (Q,CKN,CKB,RN,QN,AVDD,AVSS);
SUNTR_IVX1_CV XA8 (QN,Q,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_SCX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_SCX1_CV(A,Y,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL XA2 (N1,A,AVSS,AVSS);
SUNTR_NCHDL XA3 (SCO,A,N1,AVSS);
SUNTR_NCHDL XA4a (AVDD,SCO,N1,AVSS);
SUNTR_NCHDL XA4b (AVDD,SCO,N1,AVSS);
SUNTR_NCHDL XA5 (Y,SCO,AVSS,AVSS);
SUNTR_PCHDL XB0 (N2,A,AVDD,AVDD);
SUNTR_PCHDL XB1 (SCO,A,N2,AVDD);
SUNTR_PCHDL XB3a (N2,SCO,AVSS,AVDD);
SUNTR_PCHDL XB3b (N2,SCO,AVSS,AVDD);
SUNTR_PCHDL XB4 (Y,SCO,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_SWX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_SWX2_CV(A,Y,VREF,AVDD,AVSS);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,A,Y,AVSS);
SUNTR_PCHDL MP0 (Y,A,VREF,AVDD);
SUNTR_PCHDL MP1 (VREF,A,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_SWX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_SWX4_CV(A,Y,VREF,AVDD,AVSS);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
SUNTR_NCHDL MN0 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN1 (AVSS,A,Y,AVSS);
SUNTR_NCHDL MN2 (Y,A,AVSS,AVSS);
SUNTR_NCHDL MN3 (AVSS,A,Y,AVSS);
SUNTR_PCHDL MP0 (Y,A,VREF,AVDD);
SUNTR_PCHDL MP1 (VREF,A,Y,AVDD);
SUNTR_PCHDL MP2 (Y,A,VREF,AVDD);
SUNTR_PCHDL MP3 (VREF,A,Y,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_TGPD_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_TGPD_CV(C,A,B,AVDD,AVSS);
input logic C;
input logic B;
input logic A;
input logic AVDD;
input logic AVSS;
SUNTR_NCHDL MN0 (AVSS,C,CN,AVSS);
SUNTR_NCHDL MN1 (B,C,AVSS,AVSS);
SUNTR_NCHDL MN2 (A,CN,B,AVSS);
SUNTR_PCHDL MP0 (AVDD,C,CN,AVDD);
SUNTR_PCHDL MP1_DMY (B,AVDD,AVDD,AVDD);
SUNTR_PCHDL MP2 (A,C,B,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTR_DFTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_DFTRIX1_CV(D,CK,C,CN,Y,AVDD,AVSS);
input logic D;
input logic C;
input logic CK;
input logic CN;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTR_TAPCELLB_CV XA3 (AVDD,AVSS);
SUNTR_DFRNQNX1_CV XA2 (D,CK,C,NC,QN,AVDD,AVSS);
SUNTR_IVTRIX1_CV XA0 (QN,C,CN,Y,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_RG12TRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_RG12TRIX1_CV(D<11>,D<10>,D<9>,D<8>,D<7>,D<6>,D<5>,D<4>,D<3>,D<2>,D<1>,D<0>,CK,C,CN,Y<11>,Y<10>,Y<9>,Y<8>,Y<7>,Y<6>,Y<5>,Y<4>,Y<3>,Y<2>,Y<1>,Y<0>,AVDD,AVSS);
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
SUNTR_DFTRIX1_CV XA0 (D<11>,CK,C,CN,Y<11>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XB1 (D<10>,CK,C,CN,Y<10>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XC2 (D<9>,CK,C,CN,Y<9>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XD3 (D<8>,CK,C,CN,Y<8>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XE4 (D<7>,CK,C,CN,Y<7>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XF5 (D<6>,CK,C,CN,Y<6>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XG6 (D<5>,CK,C,CN,Y<5>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XH7 (D<4>,CK,C,CN,Y<4>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XI8 (D<3>,CK,C,CN,Y<3>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XJ9 (D<2>,CK,C,CN,Y<2>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XK10 (D<1>,CK,C,CN,Y<1>,AVDD,AVSS);
SUNTR_DFTRIX1_CV XL11 (D<0>,CK,C,CN,Y<0>,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_SUN_TR <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_SUN_TR(AVDD,AVSS);
input logic AVSS;
input logic AVDD;
SUNTR_TAPCELLB_CV XA0 (AVDD,AVSS);
SUNTR_TIEH_CV XA1 (Y1,AVDD,AVSS);
SUNTR_TIEL_CV XA2 (Y2,AVDD,AVSS);
SUNTR_TAPCELLB_CV XB0 (AVDD,AVSS);
SUNTR_IVX1_CV XB3 (A3,Y3,AVDD,AVSS);
SUNTR_IVX2_CV XB4 (A4,Y4,AVDD,AVSS);
SUNTR_IVX4_CV XB5 (A5,Y5,AVDD,AVSS);
SUNTR_IVX8_CV XB6 (A6,Y6,AVDD,AVSS);
SUNTR_TAPCELLB_CV XC0 (AVDD,AVSS);
SUNTR_BFX1_CV XC7 (A7,Y7,AVDD,AVSS);
SUNTR_TAPCELLB_CV XD0 (AVDD,AVSS);
SUNTR_NRX1_CV XD8 (A8,B8,Y8,AVDD,AVSS);
SUNTR_NDX1_CV XD9 (A9,B9,Y9,AVDD,AVSS);
SUNTR_ORX1_CV XD10 (A10,B10,Y10,AVDD,AVSS);
SUNTR_ANX1_CV XD11 (A11,B11,Y11,AVDD,AVSS);
SUNTR_TAPCELLB_CV XE0 (AVDD,AVSS);
SUNTR_SCX1_CV XE12 (A12,Y12,AVDD,AVSS);
SUNTR_TAPCELLB_CV XF0 (AVDD,AVSS);
SUNTR_SWX2_CV XF13 (A13,Y13,V13,AVDD,AVSS);
SUNTR_SWX4_CV XF14 (A14,Y14,V14,AVDD,AVSS);
SUNTR_TGPD_CV XF15 (A15,Y15,V15,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTR_CAPBASE_LEFT_SIDE_PORT <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CAPBASE_LEFT_SIDE_PORT(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUNTR_CAP_1 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CAP_1(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUNTR_CAP_10 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CAP_10(A,B);
input logic B;
input logic A;
endmodule

//-------------------------------------------------------------
// SUNTR_CAP_20 <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTR_CAP_20(A,B);
input logic B;
input logic A;
endmodule
