
//-------------------------------------------------------------
// SUNTRB_PCHDL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_PCHDL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTRB_NCHDL <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_NCHDL(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTRB_NCHDLR <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_NCHDLR(D,G,S,B);
input logic G;
input logic S;
input logic B;
input logic D;
endmodule

//-------------------------------------------------------------
// SUNTRB_TIEH_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_TIEH_CV(Y,BULKP,BULKN,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (A,A,AVSS,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_TIEL_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_TIEL_CV(Y,BULKP,BULKN,AVDD,AVSS);
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_PCHDL MP0 (A,A,AVDD,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_IVX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_IVX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_IVX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_IVX2_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,A,Y,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (AVDD,A,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_IVX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_IVX4_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,A,Y,BULKN);
SUNTRB_NCHDL MN2 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN3 (AVSS,A,Y,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (AVDD,A,Y,BULKP);
SUNTRB_PCHDL MP2 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP3 (AVDD,A,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_IVX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_IVX8_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,A,Y,BULKN);
SUNTRB_NCHDL MN2 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN3 (AVSS,A,Y,BULKN);
SUNTRB_NCHDL MN4 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN5 (AVSS,A,Y,BULKN);
SUNTRB_NCHDL MN6 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN7 (AVSS,A,Y,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (AVDD,A,Y,BULKP);
SUNTRB_PCHDL MP2 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP3 (AVDD,A,Y,BULKP);
SUNTRB_PCHDL MP4 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP5 (AVDD,A,Y,BULKP);
SUNTRB_PCHDL MP6 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP7 (AVDD,A,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_BFX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_BFX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (AVSS,A,B,BULKN);
SUNTRB_NCHDL MN1 (Y,B,AVSS,BULKN);
SUNTRB_PCHDL MP0 (AVDD,A,B,BULKP);
SUNTRB_PCHDL MP1 (Y,B,AVDD,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_NRX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_NRX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,B,Y,BULKN);
SUNTRB_PCHDL MP0 (N1,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (Y,B,N1,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_NDX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_NDX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (N1,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (Y,B,N1,BULKN);
SUNTRB_PCHDL MP0 (Y,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (AVDD,B,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_ORX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ORX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX1_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ORX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ORX2_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX2_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ORX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ORX4_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NRX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX4_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ANX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ANX1_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX1_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ANX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ANX2_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX2_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ANX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ANX4_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX4_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_ANX8_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_ANX8_CV(A,B,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic B;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NDX1_CV XA1 (A,B,YN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX8_CV XA2 (YN,Y,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_IVTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_IVTRIX1_CV(A,C,CN,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (N1,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (Y,C,N1,BULKN);
SUNTRB_PCHDL MP0 (N2,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (Y,CN,N2,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_NDTRIX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_NDTRIX1_CV(A,C,CN,RN,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic CN;
input logic C;
input logic RN;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN2 (N1,RN,AVSS,BULKN);
SUNTRB_NCHDL MN0 (N2,A,N1,BULKN);
SUNTRB_NCHDL MN1 (Y,C,N2,BULKN);
SUNTRB_PCHDL MP2 (AVDD,RN,N2,BULKP);
SUNTRB_PCHDL MP0 (N2,A,AVDD,BULKP);
SUNTRB_PCHDL MP1 (Y,CN,N2,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_TAPCELLB_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_TAPCELLB_CV(AVDD,AVSS);
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN1 (AVSS,AVSS,AVSS,AVSS);
SUNTRB_PCHDL MP1 (AVDD,AVDD,AVDD,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTRB_TAPCELLBAVSS_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_TAPCELLBAVSS_CV(AVDD,AVSS);
input logic AVSS;
SUNTRB_NCHDL MN1 (AVSS,AVSS,AVSS,AVSS);
SUNTRB_PCHDL MP1 (NC1,NC1,NC1,AVDD);
endmodule

//-------------------------------------------------------------
// SUNTRB_DFRNQNX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_DFRNQNX1_CV(D,CK,RN,Q,QN,BULKP,BULKN,AVDD,AVSS);
input logic D;
input logic CK;
input logic Q;
input logic QN;
input logic RN;
input logic BULKP;
input logic BULKN;
input logic AVDD;
input logic AVSS;
SUNTRB_TAPCELLBAVSS_CV XA0 (BULKP,BULKN);
SUNTRB_NDX1_CV XA1 (CK,RN,CKN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX1_CV XA2 (CKN,CKB,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVTRIX1_CV XA3 (D,CKN,CKB,A0,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVTRIX1_CV XA4 (A1,CKB,CKN,A0,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX1_CV XA5 (A0,A1,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVTRIX1_CV XA6 (A1,CKB,CKN,QN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_NDTRIX1_CV XA7 (Q,CKN,CKB,RN,QN,BULKP,BULKN,AVDD,AVSS);
SUNTRB_IVX1_CV XA8 (QN,Q,BULKP,BULKN,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_SCX1_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_SCX1_CV(A,Y,BULKP,BULKN,AVDD,AVSS);
input logic A;
input logic Y;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL XA2 (N1,A,AVSS,BULKN);
SUNTRB_NCHDL XA3 (SCO,A,N1,BULKN);
SUNTRB_NCHDL XA4a (AVDD,SCO,N1,BULKN);
SUNTRB_NCHDL XA4b (AVDD,SCO,N1,BULKN);
SUNTRB_NCHDL XA5 (Y,SCO,AVSS,BULKN);
SUNTRB_PCHDL XB0 (N2,A,AVDD,BULKP);
SUNTRB_PCHDL XB1 (SCO,A,N2,BULKP);
SUNTRB_PCHDL XB3a (N2,SCO,AVSS,BULKP);
SUNTRB_PCHDL XB3b (N2,SCO,AVSS,BULKP);
SUNTRB_PCHDL XB4 (Y,SCO,AVDD,AVSS);
endmodule

//-------------------------------------------------------------
// SUNTRB_SWX2_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_SWX2_CV(A,Y,VREF,AVSS,BULKP,BULKN);
input logic A;
input logic Y;
input logic BULKP;
input logic BULKN;
input logic VREF;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,A,Y,BULKN);
SUNTRB_PCHDL MP0 (Y,A,VREF,BULKP);
SUNTRB_PCHDL MP1 (VREF,A,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_SWX4_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_SWX4_CV(A,Y,VREF,AVSS,BULKP,BULKN);
input logic A;
input logic Y;
input logic VREF;
input logic AVSS;
SUNTRB_NCHDL MN0 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN1 (AVSS,A,Y,BULKN);
SUNTRB_NCHDL MN2 (Y,A,AVSS,BULKN);
SUNTRB_NCHDL MN3 (AVSS,A,Y,BULKN);
SUNTRB_PCHDL MP0 (Y,A,VREF,BULKP);
SUNTRB_PCHDL MP1 (VREF,A,Y,BULKP);
SUNTRB_PCHDL MP2 (Y,A,VREF,BULKP);
SUNTRB_PCHDL MP3 (VREF,A,Y,BULKP);
endmodule

//-------------------------------------------------------------
// SUNTRB_TGPD_CV <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUNTRB_TGPD_CV(C,A,B,BULKP,BULKN,AVDD,AVSS);
input logic C;
input logic B;
input logic A;
input logic AVDD;
input logic AVSS;
SUNTRB_NCHDL MN0 (AVSS,C,CN,BULKN);
SUNTRB_NCHDL MN1 (B,C,AVSS,BULKN);
SUNTRB_NCHDL MN2 (A,CN,B,BULKN);
SUNTRB_PCHDL MP0 (AVDD,C,CN,BULKP);
SUNTRB_PCHDL MP1_DMY (B,AVDD,AVDD,BULKP);
SUNTRB_PCHDL MP2 (A,C,B,BULKP);
endmodule
