//VFCH(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//e.g.VFCH(17,12,14,24)
//
#cas
VFCH(a,b,c,d):=
BEGIN
a+b+c+d▶N
a+b▶z1;c+d▶z2
a+c▶s1;b+d▶s2
z1/z2▶Z01;s1/s2▶S01
//
a/N▶pa    ; b/N▶pb     ; z1/N▶pz1
c/N▶pc    ; d/N▶pd     ; z2/N▶pz2
//---------------------------------
s1/N▶ps1  ; s2/N▶ps2   ; //pz1+pz2▶PN
//
ps1*z1▶fea; ps2*z1▶feb ;
ps1*z2▶fec; ps2*z2▶fec ;
//
a/s1▶pb1A1; b/s2▶pb1A2 ;
c/s1▶pb2A1; d/s2▶pb2A2 ; 
//---------------------------------
//       1           1
a/z1▶pa1B1; b/z1▶a2B1  ;  1
c/z2▶pa1B2; d/z2▶a2B2  ;  1
//---------------------------------
//
s1/N▶ps1  ; s2/N▶ps2   ; //pz1+pz2▶PN
VFX=(N*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))
//
(a-fea)^2/fea▶cha;(b-feb)^2/feb▶chb; ((a-fea)^2/fea)+((b-feb)^2/feb)▶chz1
(c-fec)^2/fec▶chc;(d-fed)^2/fed▶chd; ((c-fea)^2/fec)+((d-fed)^2/fed)▶chz2
//---------------------------------
//         ;             ; VFX
((a-fea)^2/fea)+((c-fec)^2/fec)▶chs1
((b-feb)^2/feb)+((d-fed)^2/fed)▶chs2
//
VFC=1-CHISQUARE_CDF(1,VFX)
pCZ1=1-CHISQUARE_CDF(1,chz1)
pCZ2=1-CHISQUARE_CDF(1,chz2)
pCS1=1-CHISQUARE_CDF(1,chs1)
pCS2=1-CHISQUARE_CDF(1,chs2)
//
pCa=1-CHISQUARE_CDF(1,cha)
pCb=1-CHISQUARE_CDF(1,chb)
pCc=1-CHISQUARE_CDF(1,chc)
pCd=1-CHISQUARE_CDF(1,chd)
//
MNX=(b-c)^2/(b+c)
//Yates corr.
IF b+c<30 AND b+c>20 THEN 
MNX=(ABS(b-c)-0.5)^2/(b+c)
END 
pMNX=1-CHISQUARE_CDF(1,MNX)
//n,mnchi2,mnp2,chi2,p2
N,[MNX],[pMNX],[VFX],[VFC]
END;
#end
// 
