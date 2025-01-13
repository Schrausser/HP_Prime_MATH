//KOR()/D.G.SCHRAUSSER/2025
//Pearson corr/[pCor]
#cas
KOR():=
BEGIN
//L1()(2) provided
SIZE(L1)(1)▶N
N-2▶df
covariance_correlation(L1)▶L0
L0(2)▶r
L0(1)▶cv
pCor(r,N)(2)▶p
pCor(r,N)(3)▶p2
r^2*100▶D
{}▶L0
//
df,[cv,r,D],p,[p2]
END;
#end
//
