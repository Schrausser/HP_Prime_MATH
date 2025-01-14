//TKV()/D.G.SCHRAUSSER/2025
//Variance p/[C2V,pCor]
#cas
TKV():=
BEGIN
//L1L2 provided
SIZE(L1)▶N
variance(L1)▶s21
variance(L2)▶s22
N-2▶df
C2V(2)
approx(correlation(L6))▶r
pCor(r,N)(2)▶pr
approx(((s21-s22)*sqrt(N-2))/(2*sqrt(s21*s22*(1-r^2))))▶t
STUDENT_CDF(df,t)▶p
1-p▶p1
2*p▶p2
IF p2>1 THEN 2*(1-p)▶p2 END;
df,[r],[pr],[t],p,p1,[p2]
END;
#end
//
