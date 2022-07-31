
//-------------------------------------------------------------
// SUN_PLL_LSCORE <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_LSCORE(AVDD,A,AN,Y,YN,AVSS);
input logic YN;
input logic AVDD;
input logic A;
input logic AN;
input logic Y;
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
SUN_PLL_LSCORE xa3 (VDD_1V8,CKUP,__UNCONNECTED_PIN__0,NI,N_7,AVSS);
SUNTR_IVX1_CV xa4 (CKUP,CK,VDD_1V8,AVSS);
SUNTR_TAPCELLB_CV xa5 (VDD_1V8,AVSS);
SUNTR_NDX1_CV xb1 (PWRUP_1V8,N_0,NI,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_0 (N_1,N_0,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_1 (N_2,N_1,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_2 (N_3,N_2,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_3 (N_4,N_3,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_4 (N_5,N_4,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_5 (N_6,N_5,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_6 (N_7,N_6,VDD_ROSC,AVSS);
SUNTR_IVX1_CV xb2_7 (NI,N_7,VDD_ROSC,AVSS);
endmodule
