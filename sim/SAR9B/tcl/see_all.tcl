
set all {dnw isosub photo nw pw rpw obswell npn nbase nfet scnfet npd npass pfet scpfet scpfethvt ppu nnfet mvnfet mvpfet mvnnfet mvnfetesd mvpfetesd var mvvar pfetlvt pfetmvt pfethvt nfetlvt varacthvt nsonos corenvar corepvar fomfill ndif pdif mvndif mvpdif ndc pdc mvndc mvpdc ppd nnd mvppd mvnnd psc nsc mvpsc mvnsc obsactive mvobsactive p pc xpc polyfill mrp1 ppolyres uhrpoly ndiffres pdiffres mvndiffres mvpdiffres rmp pdi ndi nndi pdic ndic nndic mvpdi mvndi mvpdic mvndic pdilvt pdihvt ndilvt pdilvtc pdihvtc ndilvtc li coreli rli m1c obsli obsli1c lifill m1 rm1 m2c obsm1 padl m1fill m2 rm2 m3c obsm2 m2fill m3 rm3 obsm3 v3 m3fill capm capmc m4 rm4 obsm4 v4 m4fill capm2 capm2c m5 rm5 obsm5 m5fill mrdlc metalrdl obsmrdl pi2 ubm glass fillblock comment obscomment  }
set frontend {dnw isosub photo nw pw rpw obswell npn nbase nfet scnfet npd npass pfet scpfet scpfethvt ppu nnfet mvnfet mvpfet mvnnfet mvnfetesd mvpfetesd var mvvar pfetlvt pfetmvt pfethvt nfetlvt varacthvt nsonos corenvar corepvar fomfill ndif pdif mvndif mvpdif ndc pdc mvndc mvpdc ppd nnd mvppd mvnnd psc nsc mvpsc mvnsc obsactive mvobsactive p pc xpc polyfill mrp1 ppolyres uhrpoly ndiffres pdiffres mvndiffres mvpdiffres rmp pdi ndi nndi pdic ndic nndic mvpdi mvndi mvpdic mvndic pdilvt pdihvt ndilvt pdilvtc pdihvtc ndilvtc }
set backend { li coreli rli m1c obsli obsli1c lifill m1 rm1 m2c obsm1 padl m1fill m2 rm2 m3c obsm2 m2fill m3 rm3 obsm3 v3 m3fill capm capmc m4 rm4 obsm4 v4 m4fill capm2 capm2c m5 rm5 obsm5 m5fill mrdlc metalrdl obsmrdl pi2 ubm }
set metal { li m1  m2 m3 m4 }

foreach x $all {
    see $x
}


