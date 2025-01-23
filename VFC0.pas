//VFC0(cell count a,b,c,d)/D.G.SCHRAUSSER/2025
//2×2 chi-squared test for independence
//Observed frequencies abcd fb
//Chi-squared, McNemar with 2-tailed p
//e.g.VFC0(17,12,14,24)
#cas
VFC0(a,b,c,d):=
BEGIN
a+b+c+d▶N
a+b▶z1;c+d▶z2
a+c▶s1;b+d▶s2
z1/z2▶Z01;s1/s2▶S01
VFX=(N*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))
VFC=1-CHISQUARE_CDF(1,VFX)
MNX=(b-c)^2/(b+c)
//McNemar Yates corr.
IF b+c<30 AND b+c>20 THEN 
MNX=(ABS(b-c)-0.5)^2/(b+c)
END 
pMNX=1-CHISQUARE_CDF(1,MNX)
//n,mnchi2,mnp2,chi2,p2
N,[MNX],[pMNX],[VFX],[VFC]
END;
#end
//
