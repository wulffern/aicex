
//-------------------------------------------------------------
// SUN_PLL_ROSC <class 'cicpy.core.layoutcell.LayoutCell'>
//-------------------------------------------------------------
module SUN_PLL_ROSC(PWRUP_1V8,VDD_ROSC,AVSS,VDD_1V8,CK);
input logic PWRUP_1V8;
input logic VDD_ROSC;
input logic AVSS;
input logic VDD_1V8;
input logic CK;
SUNTR_IVX1_CV xa1[7] (AVSS,VDD_ROSC,NI,N[7]);
SUNTR_IVX1_CV xa1[6] (AVSS,VDD_ROSC,N[7],N[6]);
SUNTR_IVX1_CV xa1[5] (AVSS,VDD_ROSC,N[6],N[5]);
SUNTR_IVX1_CV xa1[4] (AVSS,VDD_ROSC,N[5],N[4]);
SUNTR_IVX1_CV xb1[3] (AVSS,VDD_ROSC,N[4],N[3]);
SUNTR_IVX1_CV xb1[2] (AVSS,VDD_ROSC,N[3],N[2]);
SUNTR_IVX1_CV xb1[1] (AVSS,VDD_ROSC,N[2],N[1]);
SUNTR_IVX1_CV xb1[0] (AVSS,VDD_ROSC,N[1],N[0]);
SUNTR_NDX1_CV xb1 (AVSS,VDD_ROSC,N[0],PWRUP_1V8,NI);
SUNTR_IVX1_CV xb6 (AVSS,VDD_1V8,CKUP,CK);
SUNTR_PCHDL xc2 (net1,CKUP,VDD_1V8,VDD_1V8);
SUNTR_PCHDL xc3 (CKUP,net1,VDD_1V8,VDD_1V8);
SUNTR_NCHDLA xd4 (N[1],CKUP,AVSS,AVSS);
SUNTR_NCHDLA xd5 (N[0],net1,AVSS,AVSS);
endmodule
