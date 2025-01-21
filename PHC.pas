//PHC(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//e.g.PHC(17,12,14,24)
//Phi- and tetrachoric correlation
#cas
PHC(a,b,c,d):=
BEGIN
a+b+c+d▶N
a+b▶z1;c+d▶z2
a+c▶s1;b+d▶s2
z1/z2▶Z01;s1/s2▶S01
IF z2<z1 THEN Z01=1/Z01 END;
IF s2<s1 THEN S01=1/S01 END;
VFX=(N*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))
VFC=1-CHISQUARE_CDF(1,VFX)
KPH=(a*d-b*c)/sqrt(((a+b)*(c+d)*(a+c)*(b+d)))
KPM=sqrt(Z01*S01)
KTET=cos(π/(1.+√(b*c/(a*d))))
STET=sqrt((((((a+b)/N))*(((a+c)/N))*(((c+d)/N))*(((b+d)/N))/N)))
STET=STET*(1/(((1/(sqrt(2*π)))*e^(-normald_icdf(((c+d)/N))^2/2))*((1/(sqrt(2*π)))*e^(-normald_icdf(((b+d)/N))^2/2))))
ZTET=KTET/STET
P=normald_cdf(ZTET)
IF P>0.5 THEN
P=1-P
END;
P*2▶P2
//n,TET,z,p1,p2,phi,phimax,chi2,p2
N,[KTET],[ZTET],P,[P2],[KPH,KPM],[VFX],[VFC]
END;
#end
//
